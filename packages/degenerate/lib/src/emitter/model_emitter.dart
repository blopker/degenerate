import 'package:code_builder/code_builder.dart';

import '../ir/ir_types.dart';
import 'emit_utils.dart';

/// Emits a `final class` from an [IrObject].
///
/// Generates: const constructor, fromJson factory, toJson, copyWith,
/// operator ==, hashCode, toString, canParse.
class ModelEmitter {
  final IrObject model;
  final Map<String, IrType> typeRegistry;
  const ModelEmitter(this.model, {this.typeRegistry = const {}});

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

  List<Spec> emit() {
    return [
      Class(
        (b) => b
          ..name = model.name
          ..modifier = ClassModifier.final$
          ..docs.addAll(_buildDocs())
          ..fields.addAll(_buildFields())
          ..constructors.add(_buildConstructor())
          ..constructors.add(_buildFromJson())
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
    return formatDocComment(model.description!);
  }

  Iterable<Field> _buildFields() {
    final fields = model.fields.map(
      (f) => Field(
        (b) => b
          ..name = f.name
          ..modifier = FieldModifier.final$
          ..type = irTypeToReference(
            f.type,
            forceNullable: !f.isRequired && !_hasDefault(f),
          )
          ..docs.addAll(
            f.description != null ? formatDocComment(f.description!) : [],
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
    return Constructor(
      (b) => b
        ..constant = true
        ..optionalParameters.addAll([
          ...model.fields.map((f) {
            return Parameter(
              (p) => p
                ..name = f.name
                ..named = true
                ..toThis = true
                ..required = f.isRequired && !_hasDefault(f)
                ..defaultTo = _defaultCode(f),
            );
          }),
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
          final accessor = "json['${escapeDartString(f.originalName)}']";
          // A field is "nullable in fromJson" if:
          // 1. It's not required AND has no default, OR
          // 2. Its type is explicitly nullable (required + nullable is valid in OpenAPI).
          // Fields with defaults have non-nullable types, so fromJson must not produce null.
          final isOptional =
              (!f.isRequired && !_hasDefault(f)) || f.type.isNullable;
          final code = buildFromJsonCode(
            f.type,
            accessor,
            isOptional: isOptional,
            typeRegistry: typeRegistry,
          );
          if (!f.isRequired && _hasDefault(f)) {
            // Optional with default: use null-safe extraction or skip entirely.
            // The constructor default handles missing values.
            final defaultCode = _defaultCode(f);
            final defaultStr = defaultCode?.toString() ?? 'null';
            return '  ${f.name}: json.containsKey(\'${escapeDartString(f.originalName)}\') ? $code : $defaultStr,';
          }
          return '  ${f.name}: $code,';
        })
        .join('\n');

    // Append overflow map extraction if additionalProperties is defined.
    if (model.additionalProperties != null) {
      final knownKeysList = model.fields
          .map((f) => "'${escapeDartString(f.originalName)}'")
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
        final valueExpr = buildFromJsonCode(valueType, 'e.value',
            isOptional: false, typeRegistry: typeRegistry);
        args +=
            '\n  $_overflowFieldName: Map.fromEntries(json.entries.where((e) => !const $knownKeys.contains(e.key)).map((e) => MapEntry(e.key, $valueExpr))),';
      }
    }

    return Constructor(
      (b) => b
        ..name = 'fromJson'
        ..factory = true
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'json'
              ..type = refer('Map<String, dynamic>'),
          ),
        )
        ..body = Code('return ${model.name}(\n$args\n);'),
    );
  }

  Method _buildToJson() {
    final entries = model.fields
        .map((f) {
          final key = "'${escapeDartString(f.originalName)}'";

          final value = buildToJsonCode(f.type, f.name);
          // Only use null check if the Dart field type is actually nullable.
          // Fields with defaults are non-nullable even if not required.
          final isNullableInDart =
              (!f.isRequired && !_hasDefault(f)) || f.type.isNullable;
          if (isNullableInDart) {
            final nullableValue = _toJsonValueNullable(f);
            if (nullableValue == f.name) {
              // Use null-aware element syntax when value is the field itself.
              return "  $key: ?${f.name},";
            }
            return "  if (${f.name} != null) $key: $nullableValue,";
          }
          return '  $key: $value,';
        })
        .join('\n');

    return Method(
      (m) => m
        ..name = 'toJson'
        ..returns = refer('Map<String, dynamic>')
        ..body = Code('return {\n$entries\n${_overflowToJsonSpread}};'),
    );
  }

  String get _overflowToJsonSpread {
    if (model.additionalProperties == null) return '';
    final valueType = model.additionalProperties!;
    if (mapValueNeedsToJson(valueType)) {
      return '  ...$_overflowFieldName.map((k, v) => MapEntry(k, ${buildToJsonCode(valueType, 'v')})),\n';
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
      IrList(:final items) =>
        listItemNeedsToJson(items)
            ? '${f.name}${_q}map((e) => ${buildToJsonCode(items, 'e', nullable: items.isNullable)}).toList()'
            : f.name,
      IrMap(:final values) =>
        mapValueNeedsToJson(values)
            ? '${f.name}${_q}map((k, v) => MapEntry(k, ${buildToJsonCode(values, 'v', nullable: values.isNullable)}))'
            : f.name,
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
              "json.containsKey('${escapeDartString(f.originalName)}')";
          final typeCheck = _canParseTypeCheck(
            f.type,
            "json['${escapeDartString(f.originalName)}']",
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
          .map((f) => "'${escapeDartString(f.originalName)}'")
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
      final isOptional = !f.isRequired;
      final isNullable = isOptional || f.type.isNullable;
      if (isNullable) {
        // Thunk pattern for nullable fields
        final typeStr = _dartTypeName(f.type);
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
      allParams.add(Parameter(
        (p) => p
          ..name = _overflowFieldName
          ..named = true
          ..type = refer('Map<String, $valueTypeName>?'),
      ));
      allAssignments +=
          '\n  $_overflowFieldName: $_overflowFieldName ?? this.$_overflowFieldName,';
    }

    return Method(
      (m) => m
        ..name = 'copyWith'
        ..returns = refer(model.name)
        ..optionalParameters.addAll(allParams)
        ..body = Code('return ${model.name}(\n$allAssignments\n);'),
    );
  }

  String _dartTypeName(IrType type) {
    final base = irTypeName(type);
    // dynamic is already nullable — never append '?'.
    if (base == 'dynamic') return base;
    return type.isNullable ? '$base?' : base;
  }

  Method _buildEquals() {
    final comparisons = model.fields
        .map((f) {
          // Use 'this.' prefix when field name shadows the 'other' parameter.
          final self = f.name == 'other' ? 'this.${f.name}' : f.name;
          if (isListType(f.type)) {
            return 'listEquals($self, other.${f.name})';
          }
          return '$self == other.${f.name}';
        })
        .join(' &&\n          ');

    var allComparisons = comparisons;
    if (model.additionalProperties != null) {
      final mapCmp = 'mapEquals($_overflowFieldName, other.$_overflowFieldName)';
      allComparisons = allComparisons.isEmpty ? mapCmp : '$allComparisons &&\n          $mapCmp';
    }

    final body = allComparisons.isEmpty
        ? 'return identical(this, other) || other is ${model.name};'
        : 'return identical(this, other) ||\n      other is ${model.name} &&\n          $allComparisons;';

    return buildEqualsOverride(body);
  }

  Method _buildHashCode() {
    final fieldExprs = model.fields.map((f) {
      if (isListType(f.type)) {
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
          if (f.name.startsWith(r'$')) {
            final escaped = f.name.replaceAll(r'$', r'\$');
            return '$escaped: \${${f.name}}';
          }
          return '${f.name}: \$${f.name}';
        })
        .join(', ');
    if (model.additionalProperties != null) {
      if (fieldStr.isNotEmpty) fieldStr += ', ';
      fieldStr += '$_overflowFieldName: \$$_overflowFieldName';
    }

    return buildToStringOverride(
      "return '${escapeNameForString(model.name)}($fieldStr)';",
    );
  }

  bool _hasDefault(IrField f) => _defaultCode(f) != null;

  Code? _defaultCode(IrField f) {
    if (f.defaultValue == null) return null;
    final v = f.defaultValue;
    // Don't use empty map/object defaults for object-typed fields -
    // they don't make sense as Dart defaults (const {} is Map, not the object).
    if (v is Map && v.isEmpty && _isObjectLikeType(f.type)) return null;
    // For enum-typed fields, emit the enum constant instead of a raw string.
    if (v is String && f.type is IrEnum) {
      final enumType = f.type as IrEnum;
      final enumName = enumType.name;
      final dartValue = enumValueName(v);
      return Code('$enumName.$dartValue');
    }
    if (v is String) {
      // Only emit string default if the field type is actually a String
      if (f.type is IrPrimitive) {
        final kind = (f.type as IrPrimitive).kind;
        if (kind == PrimitiveKind.string) {
          return Code("'${escapeDartString(v)}'");
        }
        if (kind == PrimitiveKind.dynamic_) {
          return null;
        }
        // Non-string primitive with string default → skip
        return null;
      }
      // Non-primitive type with string default (e.g., IrTypeRef to enum, IrList) → skip
      return null;
    }
    if (v is bool) {
      if (f.type is! IrPrimitive ||
          (f.type as IrPrimitive).kind != PrimitiveKind.bool) {
        return null; // Type mismatch
      }
      return Code('$v');
    }
    if (v is num) {
      if (f.type is! IrPrimitive) return null; // Type mismatch
      final kind = (f.type as IrPrimitive).kind;
      if (kind == PrimitiveKind.int) return Code('${v.toInt()}');
      if (kind == PrimitiveKind.double) return Code('${v.toDouble()}');
      return Code('$v');
    }
    if (v is List && v.isEmpty) return const Code('const []');
    if (v is Map && v.isEmpty) return const Code('const {}');
    return null;
  }

  bool _isObjectLikeType(IrType type) => switch (type) {
    IrObject() ||
    IrTypeRef() ||
    IrDiscriminatedUnion() ||
    IrUntaggedUnion() ||
    IrAnyOf() => true,
    _ => false,
  };
}
