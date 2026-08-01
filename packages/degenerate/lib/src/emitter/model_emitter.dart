import 'package:code_builder/code_builder.dart';
import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/ir/ir_types.dart';

/// Emits a `final class` from an [IrObject].
///
/// Generates: const constructor, fromJson factory, toJson, copyWith,
/// operator ==, hashCode, toString, canParse.
class ModelEmitter {
  /// Creates an emitter for the given [model].
  const ModelEmitter(
    this.model, {
    this.typeRegistry = const {},
    this.omittable = OmittableMode.nullableOnly,
  });

  /// The object IR to emit.
  final IrObject model;

  /// Registry of all known IR types for resolution.
  final Map<String, IrType> typeRegistry;

  /// How optional fields represent "omitted" vs "set to null".
  final OmittableMode omittable;

  /// Whether [f] is emitted as an `Omittable<...>` presence-wrapped field.
  bool _isOmittable(IrField f) => isOmittableField(f, omittable);

  /// Field name for the overflow map, avoiding collisions with fixed fields.
  String get _overflowFieldName {
    final names = model.fields.map((f) => f.name).toSet();
    var name = 'additionalProperties';
    if (names.contains(name)) name = '\$$name';
    return name;
  }

  /// Dart type reference for the overflow map: `Map<String, T>`.
  Reference get _overflowMapType {
    final valueType = model.additionalProperties!;
    return TypeReference(
      (b) => b
        ..symbol = 'Map'
        ..types.addAll([refer('String'), irTypeToReference(valueType)]),
    );
  }

  /// Emit the model class as code_builder specs.
  List<Spec> emit() {
    return [
      Class(
        (b) => b
          ..name = model.name
          ..modifier = ClassModifier.final$
          ..annotations.add(refer('immutable'))
          ..docs.addAll(_buildDocs())
          ..constructors.add(_buildConstructor())
          ..constructors.add(_buildFromJson())
          ..fields.addAll(_buildFields())
          ..methods.add(_buildToJson())
          ..methods.add(_buildCanParse())
          ..methods.add(_buildCopyWith())
          ..methods.add(_buildEquals())
          ..methods.add(_buildHashCode())
          ..methods.add(_buildToString()),
      ),
    ];
  }

  List<String> _buildDocs() {
    if (model.description == null) return [];
    return model.description!.docComment;
  }

  /// `Omittable<T?>` reference for a wrapped field. The inner type is always
  /// nullable so `Omittable(null)` (explicit null on the wire) is legal even
  /// in `all` mode where the spec type itself isn't nullable.
  Reference _omittableRef(IrField f) => TypeReference(
    (b) => b
      ..symbol = 'Omittable'
      ..types.add(irTypeToReference(f.type, forceNullable: true)),
  );

  Iterable<Field> _buildFields() {
    final fields = model.fields.map(
      (f) => Field(
        (b) => b
          ..name = f.name
          ..modifier = FieldModifier.final$
          ..type = _isOmittable(f)
              ? _omittableRef(f)
              : irTypeToReference(
                  f.type,
                  forceNullable: !f.isRequired && !_hasDefault(f),
                )
          ..docs.addAll(
            f.description != null ? f.description!.docComment : [],
          ),
      ),
    );
    if (model.additionalProperties == null) return fields;
    return [
      ...fields,
      Field(
        (b) => b
          ..name = _overflowFieldName
          ..modifier = FieldModifier.final$
          ..type = _overflowMapType,
      ),
    ];
  }

  Constructor _buildConstructor() {
    final fieldParams = model.fields.map((f) {
      return Parameter(
        (p) => p
          ..name = f.name
          ..named = true
          ..toThis = true
          ..required = f.isRequired && !_hasDefault(f)
          ..defaultTo = _isOmittable(f)
              ? const Code('const Omittable.absent()')
              : _defaultCode(f),
      );
    }).toList();
    // Sort required named parameters before optional ones.
    fieldParams.sort((a, b) {
      final aReq = a.required ? 0 : 1;
      final bReq = b.required ? 0 : 1;
      return aReq.compareTo(bReq);
    });
    return Constructor(
      (b) => b
        ..constant = true
        ..optionalParameters.addAll([
          ...fieldParams,
          if (model.additionalProperties != null)
            Parameter(
              (p) => p
                ..name = _overflowFieldName
                ..named = true
                ..toThis = true
                ..defaultTo = const Code('const {}'),
            ),
        ]),
    );
  }

  Constructor _buildFromJson() {
    var args = model.fields
        .map((f) {
          final accessor = 'json[${f.originalName.literal}]';
          // A field is "nullable in fromJson" if:
          // 1. It's not required AND has no default, OR
          // 2. Its type is explicitly nullable (required + nullable is valid in
          // OpenAPI).
          // Fields with defaults have non-nullable types, so fromJson must not
          // produce null.
          final isOptional =
              (!f.isRequired && !_hasDefault(f)) || f.type.isNullable;
          final code = buildFromJsonCode(
            f.type,
            accessor,
            isOptional: isOptional,
            typeRegistry: typeRegistry,
          );
          if (_isOmittable(f)) {
            // Key presence decides absent vs present; a present null decodes
            // to Omittable(null), preserving the three wire states.
            return '  ${f.name}: json.containsKey(${f.originalName.literal}) ? Omittable($code) : const Omittable.absent(),';
          }
          if (!f.isRequired && _hasDefault(f)) {
            // Optional with default: use null-safe extraction or skip entirely.
            // The constructor default handles missing values.
            final defaultCode = _defaultCode(f);
            final defaultStr = defaultCode?.toString() ?? 'null';
            return '  ${f.name}: json.containsKey(${f.originalName.literal}) ? $code : $defaultStr,';
          }
          return '  ${f.name}: $code,';
        })
        .join('\n');

    // Append overflow map extraction if additionalProperties is defined.
    if (model.additionalProperties != null) {
      final knownKeysList = model.fields
          .map((f) => f.originalName.literal)
          .toList();
      // Use explicit <String>{} to avoid Dart parsing empty const {} as a Map.
      final knownKeys = knownKeysList.isEmpty
          ? '<String>{}'
          : '{${knownKeysList.join(', ')}}';
      final valueType = model.additionalProperties!;
      final isDynamic =
          valueType is IrPrimitive && valueType.kind == PrimitiveKind.dynamic_;
      if (isDynamic) {
        args +=
            '\n  $_overflowFieldName: Map.fromEntries(json.entries.where((e) => !const $knownKeys.contains(e.key))),';
      } else {
        final valueExpr = buildFromJsonCode(
          valueType,
          'e.value',
          typeRegistry: typeRegistry,
        );
        args +=
            '\n  $_overflowFieldName: Map.fromEntries(json.entries.where((e) => !const $knownKeys.contains(e.key)).map((e) => MapEntry(e.key, $valueExpr))),';
      }
    }

    final hasAnyArgs =
        model.fields.isNotEmpty || model.additionalProperties != null;
    return Constructor(
      (b) => b
        ..name = 'fromJson'
        ..factory = true
        ..requiredParameters.add(
          Parameter(
            (p) => p
              // Use _ for unused parameter when model has no fields.
              ..name = hasAnyArgs ? 'json' : '_'
              ..type = refer('Map<String, dynamic>'),
          ),
        )
        ..body = Code(
          hasAnyArgs
              ? 'return ${model.name}(\n$args\n);'
              : 'return const ${model.name}();',
        ),
    );
  }

  Method _buildToJson() {
    final entries = model.fields
        .map((f) {
          final key = f.originalName.literal;

          final value = buildToJsonCode(f.type, f.name);
          if (_isOmittable(f)) {
            // Absent fields are dropped; present fields serialize their
            // value, including an explicit null.
            final valueExpr = buildToJsonCode(
              f.type,
              '${f.name}.value',
              nullable: true,
            );
            return '  if (${f.name}.isPresent) $key: $valueExpr,';
          }
          // A required field must always be present on the wire, even when
          // its value is null (nullable: true) — the key carries meaning.
          if (f.isRequired && f.type.isNullable) {
            return '  $key: ${_toJsonValueNullable(f)},';
          }
          // Only use null check if the Dart field type is actually nullable.
          // Fields with defaults are non-nullable even if not required.
          final isNullableInDart =
              (!f.isRequired && !_hasDefault(f)) || f.type.isNullable;
          if (isNullableInDart) {
            final nullableValue = _toJsonValueNullable(f);
            if (nullableValue == f.name) {
              // Use null-aware element syntax when value is the field itself.
              return '  $key: ?${f.name},';
            }
            return '  if (${f.name} != null) $key: $nullableValue,';
          }
          return '  $key: $value,';
        })
        .join('\n');

    return Method(
      (m) => m
        ..name = 'toJson'
        ..returns = refer('Map<String, dynamic>')
        ..body = Code('return {\n$entries\n$_overflowToJsonSpread};'),
    );
  }

  String get _overflowToJsonSpread {
    if (model.additionalProperties == null) return '';
    final valueType = model.additionalProperties!;
    if (mapValueNeedsToJson(valueType)) {
      final valueExpr = buildToJsonCode(valueType, 'v');
      if (valueExpr != 'v') {
        return '  ...$_overflowFieldName.map((k, v) => MapEntry(k, $valueExpr)),\n';
      }
    }
    return '  ...$_overflowFieldName,\n';
  }

  String _toJsonValueNullable(IrField f) {
    // For nullable object/complex types we need null-aware call
    final type = f.type;
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.dateTime => '${f.name}${_q}toIso8601String()',
        PrimitiveKind.uri => '${f.name}${_q}toString()',
        PrimitiveKind.bigInt => '${f.name}${_q}toString()',
        PrimitiveKind.duration => '${f.name}${_q}inMilliseconds',
        _ => f.name,
      },
      IrEnum() => '${f.name}${_q}toJson()',
      IrList(:final items) => () {
        if (!listItemNeedsToJson(items)) return f.name;
        final itemExpr =
            buildToJsonCode(items, 'e', nullable: items.isNullable);
        final tearoff = asTearoff(itemExpr, 'e');
        if (tearoff != null) {
          return '${f.name}${_q}map($tearoff).toList()';
        }
        return '${f.name}${_q}map((e) => $itemExpr).toList()';
      }(),
      IrMap(:final values) => () {
        if (!mapValueNeedsToJson(values)) return f.name;
        final valueExpr =
            buildToJsonCode(values, 'v', nullable: values.isNullable);
        if (valueExpr == 'v') return f.name;
        return '${f.name}${_q}map((k, v) => MapEntry(k, $valueExpr))';
      }(),
      IrObject() => '${f.name}${_q}toJson()',
      IrTypeRef() => '${f.name}${_q}toJson()',
      IrDiscriminatedUnion() => '${f.name}${_q}toJson()',
      IrUntaggedUnion() => '${f.name}${_q}toJson()',
      IrAnyOf() => '${f.name}${_q}toJson()',
      IrExtensionType() => '${f.name}${_q}toJson()',
    };
  }

  // Null-aware access operator
  String get _q => '?.';

  Method _buildCanParse() {
    final requiredFieldObjects = model.fields
        .where((f) => f.isRequired)
        .toList();
    final checks = requiredFieldObjects
        .map((f) {
          final keyCheck =
              'json.containsKey(${f.originalName.literal})';
          final typeCheck = _canParseTypeCheck(
            f.type,
            'json[${f.originalName.literal}]',
          );
          if (typeCheck != null) {
            return '$keyCheck && $typeCheck';
          }
          return keyCheck;
        })
        .join(' &&\n      ');
    final String body;
    if (checks.isNotEmpty) {
      body = 'return $checks;';
    } else if (model.fields.isNotEmpty) {
      // No required fields — check that at least one known property key exists.
      final knownKeys = model.fields
          .map((f) => f.originalName.literal)
          .join(', ');
      body = 'return json.keys.any((key) => const {$knownKeys}.contains(key));';
    } else {
      body = 'return true;';
    }

    return Method(
      (m) => m
        ..name = 'canParse'
        ..static = true
        ..returns = refer('bool')
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'json'
              ..type = refer('Map<String, dynamic>'),
          ),
        )
        ..body = Code(body),
    );
  }

  /// Returns a Dart `is` type check expression for canParse, or null if
  /// not worth checking (complex nested types).
  String? _canParseTypeCheck(IrType type, String accessor) {
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.dynamic_ => null,
        PrimitiveKind.string => '$accessor is String',
        PrimitiveKind.int => '$accessor is num',
        PrimitiveKind.double => '$accessor is num',
        PrimitiveKind.num => '$accessor is num',
        PrimitiveKind.bool => '$accessor is bool',
        PrimitiveKind.dateTime => '$accessor is String',
        PrimitiveKind.uri => '$accessor is String',
        _ => null,
      },
      _ => null,
    };
  }

  Method _buildCopyWith() {
    final params = model.fields.map((f) {
      if (_isOmittable(f)) {
        // The wrapper already distinguishes "not passed" (null) from
        // "set to absent/null/value", so no thunk is needed.
        return Parameter(
          (p) => p
            ..name = f.name
            ..named = true
            ..type = TypeReference(
              (b) => b
                ..symbol = 'Omittable'
                ..types.add(irTypeToReference(f.type, forceNullable: true))
                ..isNullable = true,
            ),
        );
      }
      final isOptional = !f.isRequired;
      final isNullable = isOptional || f.type.isNullable;
      if (isNullable) {
        // Thunk pattern for nullable fields. The thunk's return type matches
        // the FIELD's Dart nullability (optionality without a default makes
        // the field nullable), so `copyWith(x: () => null)` can unset any
        // field that can hold null.
        final fieldIsNullable =
            (!f.isRequired && !_hasDefault(f)) || f.type.isNullable;
        final base = irTypeName(f.type);
        final typeStr = fieldIsNullable && base != 'dynamic' ? '$base?' : base;
        return Parameter(
          (p) => p
            ..name = f.name
            ..named = true
            ..type = refer('$typeStr Function()?'),
        );
      }
      return Parameter(
        (p) => p
          ..name = f.name
          ..named = true
          ..type = irTypeToReference(f.type, forceNullable: true),
      );
    });

    final assignments = model.fields
        .map((f) {
          if (_isOmittable(f)) {
            return '  ${f.name}: ${f.name} ?? this.${f.name},';
          }
          final isOptional = !f.isRequired;
          final isNullable = isOptional || f.type.isNullable;
          if (isNullable) {
            return '  ${f.name}: ${f.name} != null ? ${f.name}() : this.${f.name},';
          }
          return '  ${f.name}: ${f.name} ?? this.${f.name},';
        })
        .join('\n');

    final allParams = [...params];
    var allAssignments = assignments;
    if (model.additionalProperties != null) {
      final valueTypeName = irTypeName(model.additionalProperties!);
      allParams.add(
        Parameter(
          (p) => p
            ..name = _overflowFieldName
            ..named = true
            ..type = refer('Map<String, $valueTypeName>?'),
        ),
      );
      allAssignments +=
          '\n  $_overflowFieldName: $_overflowFieldName ?? this.$_overflowFieldName,';
    }

    final constPrefix = allParams.isEmpty ? 'const ' : '';
    return Method(
      (m) => m
        ..name = 'copyWith'
        ..returns = refer(model.name)
        ..optionalParameters.addAll(allParams)
        ..body = Code('return $constPrefix${model.name}(\n$allAssignments\n);'),
    );
  }

  Method _buildEquals() {
    final comparisons = model.fields
        .map((f) {
          // Use 'this.' prefix when field name shadows the 'other' parameter.
          final self = f.name == 'other' ? 'this.${f.name}' : f.name;
          if (isListType(f.type)) {
            if (_isOmittable(f)) {
              return '$self.isPresent == other.${f.name}.isPresent &&\n'
                  '          listEquals($self.value, other.${f.name}.value)';
            }
            return 'listEquals($self, other.${f.name})';
          }
          return '$self == other.${f.name}';
        })
        .join(' &&\n          ');

    var allComparisons = comparisons;
    if (model.additionalProperties != null) {
      final mapCmp =
          'mapEquals($_overflowFieldName, other.$_overflowFieldName)';
      allComparisons = allComparisons.isEmpty
          ? mapCmp
          : '$allComparisons &&\n          $mapCmp';
    }

    final body = allComparisons.isEmpty
        ? 'return identical(this, other) || other is ${model.name};'
        : 'return identical(this, other) ||\n      other is ${model.name} &&\n          $allComparisons;';

    return buildEqualsOverride(body);
  }

  Method _buildHashCode() {
    final fieldExprs = model.fields.map((f) {
      if (isListType(f.type)) {
        if (_isOmittable(f)) {
          // Absent and present-null collide here; equality still separates
          // them via isPresent.
          return 'Object.hashAll(${f.name}.value ?? const [])';
        }
        final isNullable =
            (!f.isRequired && !_hasDefault(f)) || f.type.isNullable;
        if (isNullable) {
          return 'Object.hashAll(${f.name} ?? const [])';
        }
        return 'Object.hashAll(${f.name})';
      }
      return f.name;
    }).toList();
    if (model.additionalProperties != null) {
      fieldExprs.add('Object.hashAll($_overflowFieldName.entries)');
    }

    final String body;
    if (fieldExprs.isEmpty) {
      body = 'return runtimeType.hashCode;';
    } else if (fieldExprs.length == 1) {
      body = 'return ${fieldExprs.first}.hashCode;';
    } else if (fieldExprs.length <= 20) {
      body = 'return Object.hash(${fieldExprs.join(', ')});';
    } else {
      body = 'return Object.hashAll([${fieldExprs.join(', ')}]);';
    }

    return buildHashCodeOverride(body);
  }

  Method _buildToString() {
    var fieldStr = model.fields
        .map((f) {
          // `$` is legal anywhere in a Dart identifier ($-prefixed reserved
          // words, spec names like `c$d`). The label must escape it, and the
          // interpolation needs braces so the `$` isn't read as a nested
          // interpolation start.
          if (f.name.contains(r'$')) {
            final escaped = f.name.replaceAll(r'$', r'\$');
            return '$escaped: \${${f.name}}';
          }
          return '${f.name}: \$${f.name}';
        })
        .join(', ');
    if (model.additionalProperties != null) {
      if (fieldStr.isNotEmpty) fieldStr += ', ';
      fieldStr += _overflowFieldName.contains(r'$')
          ? '${_overflowFieldName.replaceAll(r'$', r'\$')}: \${$_overflowFieldName}'
          : '$_overflowFieldName: \$$_overflowFieldName';
    }

    return buildToStringOverride(
      "return '${escapeNameForString(model.name)}($fieldStr)';",
    );
  }

  bool _hasDefault(IrField f) => hasUsableDartDefault(f);

  Code? _defaultCode(IrField f) => defaultFieldCode(f);
}
