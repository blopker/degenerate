import 'package:code_builder/code_builder.dart';
import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/model_emitter.dart';
import 'package:degenerate/src/ir/ir_types.dart';
import 'package:degenerate/src/naming.dart';

/// Regex to strip angle brackets, commas, and whitespace from type names.
final _unsafeTypeNameChars = RegExp(r'[<>,\s]');

/// Turn a rendered type name into a valid identifier fragment.
///
/// Item nullability is rendered as `OrNull` (`List<String?>` →
/// `ListStringOrNull`) rather than stripped, so a union over both
/// `List<String>` and `List<String?>` gets distinct variant class names.
String _safeTypeName(String typeName) =>
    typeName.replaceAll('?', 'OrNull').replaceAll(_unsafeTypeNameChars, '');

/// Emits a sealed class hierarchy from an [IrDiscriminatedUnion].
class DiscriminatedUnionEmitter {
  /// Creates an emitter for the given discriminated [union].
  const DiscriminatedUnionEmitter(
    this.union, {
    this.typeRegistry = const {},
    this.omittable = OmittableMode.nullableOnly,
  });
  final Map<String, IrType> typeRegistry;
  final OmittableMode omittable;

  /// The discriminated union IR to emit.
  final IrDiscriminatedUnion union;

  /// The Dart getter name for the discriminator property.
  String get _discDartName =>
      union.discriminatorProperty.toIdentifier(toCamelCase);

  /// Class name for the variant wrapping [type], keyed by discriminator
  /// value.
  ///
  /// The derived `<UnionName><PascalCase(value)>` name can be identical to
  /// the referenced model's own class name (e.g. OpenAI's
  /// `RealtimeClientEventSessionUpdate`). A same-named wrapper would shadow
  /// the model inside the union's library — making the wrapper's fromJson
  /// self-recursive — and make the barrel exports ambiguous, so insert a `$`
  /// separator in that case (matching the `$Unknown` variant style).
  String _variantClassName(SpecString key, IrType type) {
    final derived = key.toIdentifier((k) => variantClassName(union.name, k));
    if (derived == irTypeName(type)) {
      return key.toIdentifier((k) => '${union.name}\$${toPascalCase(k)}');
    }
    return derived;
  }

  /// The original JSON key for the discriminator property.
  SpecString get _discJsonKey => union.discriminatorProperty;

  /// Emit the sealed class hierarchy as code_builder specs.
  List<Spec> emit() {
    final specs = <Spec>[];
    final unknownClassName = '${union.name}\$Unknown';

    // Sealed base class
    specs.add(
      Class(
        (b) => b
          ..name = union.name
          ..sealed = true
          ..docs.addAll(_buildDocs())
          ..constructors.add(Constructor((c) => c..constant = true))
          ..methods.add(
            Method(
              (m) => m
                ..name = _discDartName
                ..type = MethodType.getter
                ..returns = refer('String')
                ..docs.add(
                  '/// The discriminator value identifying this variant.',
                ),
            ),
          )
          ..constructors.add(_buildFromJson(unknownClassName))
          ..methods.add(
            Method(
              (m) => m
                ..name = 'toJson'
                ..returns = refer('Map<String, dynamic>'),
            ),
          )
          ..methods.add(
            Method(
              (m) => m
                ..name = 'isUnknown'
                ..type = MethodType.getter
                ..returns = refer('bool')
                ..docs.add(
                  '/// Whether this variant is unknown (not defined in the OpenAPI spec).',
                )
                ..body = Code('return this is $unknownClassName;'),
            ),
          ),
      ),
    );

    // Variant subclasses
    for (final entry in union.mapping.entries) {
      specs.addAll(_buildVariant(entry.key, entry.value));
    }

    // Unknown variant subclass for forward compatibility
    specs.add(_buildUnknownVariant(unknownClassName));

    return specs;
  }

  List<String> _buildDocs() {
    if (union.description == null) return [];
    return union.description!.docComment;
  }

  Constructor _buildFromJson(String unknownClassName) {
    final cases = union.mapping.entries
        .map((e) {
          final className = _variantClassName(e.key, e.value);
          return '  ${e.key.literal} => $className.fromJson(json),';
        })
        .join('\n');

    return Constructor(
      (c) => c
        ..name = 'fromJson'
        ..factory = true
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'json'
              ..type = refer('Map<String, dynamic>'),
          ),
        )
        ..docs.add(
          '/// Deserialize from JSON, dispatching on the `${_discJsonKey.commentText}` discriminator.',
        )
        ..body = Code(
          'return switch (json[${_discJsonKey.literal}]) {\n'
          '$cases\n'
          '  _ => $unknownClassName(json),\n'
          '};',
        ),
    );
  }

  Class _buildUnknownVariant(String className) {
    return Class(
      (b) => b
        ..name = className
        ..modifier = ClassModifier.final$
        ..annotations.add(refer('immutable'))
        ..extend = refer(union.name)
        ..docs.add('/// An unknown variant not defined in the OpenAPI spec.')
        ..docs.add(
          '/// Returned when the server sends a discriminator value that this client does not recognize.',
        )
        ..constructors.add(
          Constructor(
            (c) => c
              ..constant = true
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = 'json'
                    ..toThis = true,
                ),
              ),
          ),
        )
        ..fields.add(
          Field(
            (f) => f
              ..name = 'json'
              ..modifier = FieldModifier.final$
              ..type = refer('Map<String, dynamic>'),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = _discDartName
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('String')
              ..body = Code(
                "return json[${_discJsonKey.literal}] as String? ?? '';",
              ),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'toJson'
              ..annotations.add(refer('override'))
              ..returns = refer('Map<String, dynamic>')
              ..body = const Code('return json;'),
          ),
        )
        ..methods.add(
          buildEqualsOverride(
            'return identical(this, other) ||\n'
            '    other is $className && json == other.json;',
          ),
        )
        ..methods.add(buildHashCodeOverride('return json.hashCode;'))
        ..methods.add(
          buildToStringOverride(
            "return '${escapeNameForString(union.name)}.unknown(\$json)';",
          ),
        ),
    );
  }

  List<Spec> _buildVariant(SpecString discriminatorValue, IrType variantType) {
    final className = _variantClassName(discriminatorValue, variantType);

    // If the variant is an IrObject, emit it as a subclass with all its fields
    if (variantType is IrObject) {
      return [_buildObjectVariant(className, discriminatorValue, variantType)];
    }
    if (variantType is IrTypeRef) {
      // For type refs, generate a wrapper subclass
      return [_buildRefVariant(className, discriminatorValue, variantType)];
    }

    // Fallback: simple wrapper
    return [_buildRefVariant(className, discriminatorValue, variantType)];
  }

  Class _buildObjectVariant(
    String className,
    SpecString discValue,
    IrObject obj,
  ) {
    final model = IrObject(
      className,
      obj.fields.where((f) => f.originalName != _discJsonKey).toList(),
      additionalProperties: obj.additionalProperties,
      description: obj.description,
    );
    final declaration =
        ModelEmitter(
              model,
              typeRegistry: typeRegistry,
              omittable: omittable,
              ignoredJsonKeys: [_discJsonKey],
            ).emit().single
            as Class;
    return declaration.rebuild((b) {
      b.extend = refer(union.name);
      b.methods.clear();
      for (final method in declaration.methods) {
        if (method.name != 'toJson') {
          b.methods.add(method);
          continue;
        }
        final body = method.body!.toString();
        final end = body.lastIndexOf('};');
        b.methods.add(
          method.rebuild(
            (m) => m
              ..annotations.add(refer('override'))
              ..body = Code(
                '${body.substring(0, end)}  ${_discJsonKey.literal}: ${discValue.literal},\n};',
              ),
          ),
        );
      }
      b.methods.add(
        Method(
          (m) => m
            ..name = _discDartName
            ..type = MethodType.getter
            ..annotations.add(refer('override'))
            ..returns = refer('String')
            ..body = Code('return ${discValue.literal};'),
        ),
      );
    });
  }

  String _refVariantToJsonBody(IrType type, String fieldName) {
    // For object-like types, spread their toJson() map into the result.
    // For non-map types (list, primitive, enum), store under 'data' key.
    final toJsonExpr = buildToJsonCode(
      type,
      fieldName,
      nullable: type.isNullable,
    );
    final q = type.isNullable ? '?' : '';
    final resolved = type is IrTypeRef ? typeRegistry[type.name] ?? type : type;
    if (resolved is IrAnyOf || resolved is IrUntaggedUnion) {
      // A discriminator identifies object payloads, while union codecs also
      // support scalar values and therefore return Object?.
      return 'return {...$q($toJsonExpr as Map<String, dynamic>$q), ${_discJsonKey.literal}: $_discDartName};';
    }
    return switch (type) {
      IrObject() ||
      IrTypeRef() ||
      IrDiscriminatedUnion() ||
      IrUntaggedUnion() ||
      // Spread first so the discriminator key always wins.
      IrAnyOf() =>
        'return {...$q$toJsonExpr, ${_discJsonKey.literal}: $_discDartName};',
      _ =>
        "return {${_discJsonKey.literal}: $_discDartName, 'data': $toJsonExpr};",
    };
  }

  Class _buildRefVariant(String className, SpecString discValue, IrType type) {
    final typeName = irTypeName(type);
    // Sanitize type names like "List<String>" by removing angle brackets
    final safeTypeName = _safeTypeName(typeName);
    final fieldName = sanitizeFieldName(toCamelCase(safeTypeName));

    return Class(
      (b) => b
        ..name = className
        ..modifier = ClassModifier.final$
        ..annotations.add(refer('immutable'))
        ..extend = refer(union.name)
        ..constructors.add(
          Constructor(
            (c) => c
              ..constant = true
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = fieldName
                    ..toThis = true,
                ),
              ),
          ),
        )
        ..constructors.add(
          Constructor(
            (c) => c
              ..name = 'fromJson'
              ..factory = true
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = 'json'
                    ..type = refer('Map<String, dynamic>'),
                ),
              )
              ..body = Code(
                'return $className(${buildFromJsonCode(type, 'json', paramIsMap: true)});',
              ),
          ),
        )
        ..fields.add(
          Field(
            (f) => f
              ..name = fieldName
              ..modifier = FieldModifier.final$
              ..type = irTypeToReference(type),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = _discDartName
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('String')
              ..body = Code('return ${discValue.literal};'),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'toJson'
              ..annotations.add(refer('override'))
              ..returns = refer('Map<String, dynamic>')
              ..body = Code(_refVariantToJsonBody(type, fieldName)),
          ),
        )
        ..methods.add(
          buildEqualsOverride(
            'return identical(this, other) ||\n'
            '    other is $className && $fieldName == other.$fieldName;',
          ),
        )
        ..methods.add(buildHashCodeOverride('return $fieldName.hashCode;'))
        ..methods.add(() {
          final String fieldStr;
          if (fieldName.contains(r'$')) {
            final escaped = fieldName.replaceAll(r'$', r'\$');
            fieldStr = '$escaped: \${$fieldName}';
          } else {
            fieldStr = '$fieldName: \$$fieldName';
          }
          return buildToStringOverride(
            "return '${escapeNameForString(className)}($fieldStr)';",
          );
        }()),
    );
  }
}

/// Emits a sealed class with try-parse from an [IrUntaggedUnion].
class UntaggedUnionEmitter {
  /// Creates an emitter for the given untagged [union].
  const UntaggedUnionEmitter(
    this.union, {
    this.typeRegistry = const {},
  });

  /// The untagged union IR to emit.
  final IrUntaggedUnion union;

  /// Registry of all known IR types for resolution.
  final Map<String, IrType> typeRegistry;

  /// Check if a type (possibly via IrTypeRef) is a union/sealed type.
  bool _isUnionType(IrType type) {
    final resolved = type is IrTypeRef && typeRegistry.containsKey(type.name)
        ? typeRegistry[type.name]!
        : type;
    return resolved is IrDiscriminatedUnion ||
        resolved is IrUntaggedUnion ||
        resolved is IrAnyOf;
  }

  /// Emit the sealed class hierarchy as code_builder specs.
  List<Spec> emit() {
    final specs = <Spec>[];

    // Check if all variants are primitives (use switch on type)
    final allPrimitive = union.variants.every((v) => v is IrPrimitive);

    // Sealed base class
    specs.add(
      Class(
        (b) => b
          ..name = union.name
          ..sealed = true
          ..docs.addAll(_buildDocs())
          ..constructors.add(Constructor((c) => c..constant = true))
          ..methods.add(
            Method(
              (m) => m
                ..name = 'value'
                ..type = MethodType.getter
                ..returns = refer('dynamic')
                ..docs.add('/// The underlying raw value.'),
            ),
          )
          ..constructors.add(_buildFromJson(allPrimitive))
          ..methods.add(
            Method(
              (m) => m
                ..name = 'toJson'
                ..returns = refer('dynamic')
                ..body = const Code('return value;'),
            ),
          ),
      ),
    );

    // Variant subclasses (deduplicated by type name)
    final seenVariantTypes = <String>{};
    final deduplicatedVariants = <IrType>[];
    for (final variant in union.variants) {
      final typeName = irTypeName(variant);
      if (seenVariantTypes.add(typeName)) {
        deduplicatedVariants.add(variant);
      }
    }
    for (final variant in deduplicatedVariants) {
      specs.add(_buildVariantClass(variant));
    }

    // Unknown variant subclass for forward compatibility
    specs.add(_buildUnknownVariantClass());

    return specs;
  }

  List<String> _buildDocs() {
    final names = union.variants.map((v) => '`${irTypeName(v)}`').join(', ');
    return ['/// A value that is one of: $names.'];
  }

  Constructor _buildFromJson(bool allPrimitive) {
    if (allPrimitive) {
      return _buildPrimitiveFromJson();
    }
    return _buildObjectFromJson();
  }

  Constructor _buildPrimitiveFromJson() {
    final unknownClassName = '${union.name}\$Unknown';
    final seenTypes = <String>{};
    final cases = union.variants
        .where((v) => seenTypes.add(irTypeName(v)))
        .map((v) {
          final typeName = irTypeName(v);
          final safeTypeName = _safeTypeName(typeName);
          final className = '${union.name}${toPascalCase(safeTypeName)}';
          return '  final $typeName v => $className(v),';
        })
        .join('\n');

    return Constructor(
      (c) => c
        ..name = 'fromJson'
        ..factory = true
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'json'
              ..type = refer('Object?'),
          ),
        )
        ..body = Code(
          'return switch (json) {\n'
          '$cases\n'
          '  _ => $unknownClassName(json),\n'
          '};',
        ),
    );
  }

  Constructor _buildObjectFromJson() {
    final checks = <String>[];
    final seenTypes = <String>{};
    var hasUnconditionalReturn = false;
    for (final variant in union.variants) {
      if (hasUnconditionalReturn) {
        break; // Subsequent checks would be dead code.
      }
      final typeName = irTypeName(variant);
      if (!seenTypes.add(typeName)) continue;
      final safeTypeName = _safeTypeName(typeName);
      final className = '${union.name}${toPascalCase(safeTypeName)}';
      if (variant is IrObject || variant is IrTypeRef) {
        final refName = typeName;
        if (_isUnionType(variant)) {
          // Union types don't have canParse - just try fromJson.
          // Their own fromJson handles unknown values, so this is
          // unconditional.
          checks.add('  return $className($refName.fromJson(json));');
          hasUnconditionalReturn = true;
        } else {
          checks.add(
            '  if ($refName.canParse(json)) {\n'
            '    return $className($refName.fromJson(json));\n'
            '  }',
          );
        }
      }
    }
    if (!hasUnconditionalReturn) {
      final unknownClassName = '${union.name}\$Unknown';
      checks.add('  return $unknownClassName(json);');
    }

    return Constructor(
      (c) => c
        ..name = 'fromJson'
        ..factory = true
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'json'
              ..type = refer('Map<String, dynamic>'),
          ),
        )
        ..body = Code(checks.join('\n')),
    );
  }

  Class _buildVariantClass(IrType variant) {
    final typeName = irTypeName(variant);
    // Sanitize type names like "List<String>" or "Map<String, int>"
    // by removing angle brackets and their contents for the class name.
    final safeTypeName = _safeTypeName(typeName);
    final className = '${union.name}${toPascalCase(safeTypeName)}';
    return Class(
      (b) => b
        ..name = className
        ..modifier = ClassModifier.final$
        ..annotations.add(refer('immutable'))
        ..extend = refer(union.name)
        ..constructors.add(
          Constructor(
            (c) => c
              ..constant = true
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = '_value'
                    ..toThis = true,
                ),
              ),
          ),
        )
        ..fields.add(
          Field(
            (f) => f
              ..name = '_value'
              ..modifier = FieldModifier.final$
              ..type = irTypeToReference(variant),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'value'
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = irTypeToReference(variant)
              ..body = const Code('return _value;'),
          ),
        )
        ..methods.addAll([
          buildEqualsOverride(
            'return identical(this, other) ||\n'
            '    other is $className && _value == other._value;',
          ),
          buildHashCodeOverride('return _value.hashCode;'),
          buildToStringOverride(
            "return '${escapeNameForString(union.name)}.${toCamelCase(typeName)}(\$_value)';",
          ),
        ]),
    );
  }

  Class _buildUnknownVariantClass() {
    final className = '${union.name}\$Unknown';
    return Class(
      (b) => b
        ..name = className
        ..modifier = ClassModifier.final$
        ..annotations.add(refer('immutable'))
        ..extend = refer(union.name)
        ..docs.add('/// An unknown variant not defined in the OpenAPI spec.')
        ..constructors.add(
          Constructor(
            (c) => c
              ..constant = true
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = '_value'
                    ..toThis = true,
                ),
              ),
          ),
        )
        ..fields.add(
          Field(
            (f) => f
              ..name = '_value'
              ..modifier = FieldModifier.final$
              ..type = refer('dynamic'),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'value'
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('dynamic')
              ..body = const Code("return _value ?? '';"),
          ),
        )
        ..methods.addAll([
          buildEqualsOverride(
            'return identical(this, other) ||\n'
            '    other is $className && _value == other._value;',
          ),
          buildHashCodeOverride('return _value.hashCode;'),
          buildToStringOverride(
            "return '${escapeNameForString(union.name)}.unknown(\$_value)';",
          ),
        ]),
    );
  }
}

/// Emits a lossless anyOf payload with independently decoded typed views.
class AnyOfEmitter {
  const AnyOfEmitter(this.anyOf, {this.typeRegistry = const {}});
  final IrAnyOf anyOf;
  final Map<String, IrType> typeRegistry;

  List<Spec> emit() {
    final fields = <({String name, IrType type, String typeName})>[];
    final names = <String>{
      'rawValue',
      'isValid',
      'isUnknown',
      'toJson',
      'fromJson',
    };
    for (final variant in anyOf.variants) {
      final typeName =
          irTypeName(variant) +
          (variant.isNullable && irTypeName(variant) != 'dynamic' ? '?' : '');
      final name = deduplicateName(
        sanitizeFieldName(toCamelCase(_safeTypeName(typeName))),
        names,
      );
      names.add(name);
      fields.add((name: name, type: variant, typeName: typeName));
    }
    final name = anyOf.name;
    final declarations = fields
        .map((f) => 'final Omittable<${f.typeName}> ${f.name};')
        .join('\n');
    final params = fields
        .map((f) => 'this.${f.name} = const Omittable.absent(),')
        .join('\n');
    final rawParams = fields.map((f) => 'required this.${f.name},').join('\n');
    final parses = fields
        .map((f) {
          final type = f.type;
          final resolved = type is IrTypeRef
              ? typeRegistry[type.name] ?? type
              : type;
          var code = buildFromJsonCode(
            type,
            'value',
            isOptional: type.isNullable,
            typeRegistry: typeRegistry,
          );
          // Assert only where a non-nullable cast is needed. Union codecs
          // themselves accept Object?, and nested parser arguments are scoped
          // independently from this callback's value.
          if (!type.isNullable) {
            code = code.replaceAll('value as ', 'value! as ');
          }
          final parser = asTearoff(code, 'value') ?? '(value) => $code';
          final validation = resolved is IrAnyOf
              ? ', isValid: (value) => ${type.isNullable ? 'value == null || ' : ''}value.isValid'
              : '';
          return '${f.name}: parseAnyOfVariant<${f.typeName}>(json, $parser$validation),';
        })
        .join('\n');
    final values = fields
        .map(
          (f) =>
              'if (${f.name}.isPresent) ${buildToJsonCode(f.type, '${f.name}.value', nullable: true)},',
        )
        .join('\n');
    final matched = fields.map((f) => '${f.name}.isPresent').join(' || ');
    final docs = anyOf.description?.docComment.join('\n') ?? '';
    return [
      Code('''
$docs
@immutable
final class $name {
  const $name({$params}) : rawValue = const Omittable.absent();
  const $name._({required this.rawValue, $rawParams});
  factory $name.fromJson(Object? json) => $name._(
    rawValue: Omittable(json),
    $parses
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  $declarations

  /// Whether at least one known variant matched.
  bool get isValid => ${anyOf.isNullable ? '(rawValue.isPresent && rawValue.value == null) || ' : ''}${matched.isEmpty ? 'false' : matched};
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    $values
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is $name && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => '${escapeNameForString(name)}(\${toJson()})';
}
'''),
    ];
  }
}
