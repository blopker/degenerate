import 'package:code_builder/code_builder.dart';

import '../ir/ir_types.dart';
import '../naming.dart';
import 'emit_utils.dart';

/// Emits a sealed class hierarchy from an [IrDiscriminatedUnion].
class DiscriminatedUnionEmitter {
  final IrDiscriminatedUnion union;
  const DiscriminatedUnionEmitter(this.union);

  /// The Dart getter name for the discriminator property.
  String get _discDartName => toCamelCase(union.discriminatorProperty);

  /// The original JSON key for the discriminator property.
  String get _discJsonKey => union.discriminatorProperty;

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
    return formatDocComment(union.description!);
  }

  Constructor _buildFromJson(String unknownClassName) {
    final cases = union.mapping.entries
        .map((e) {
          final className = variantClassName(union.name, e.key);
          return "  '${e.key}' => $className.fromJson(json),";
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
          '/// Deserialize from JSON, dispatching on the `$_discJsonKey` discriminator.',
        )
        ..body = Code(
          "return switch (json['$_discJsonKey']) {\n"
          '$cases\n'
          "  _ => $unknownClassName(json),\n"
          '};',
        ),
    );
  }

  Class _buildUnknownVariant(String className) {
    return Class(
      (b) => b
        ..name = className
        ..modifier = ClassModifier.final$
        ..extend = refer(union.name)
        ..docs.add('/// An unknown variant not defined in the OpenAPI spec.')
        ..docs.add(
          '/// Returned when the server sends a discriminator value that this client does not recognize.',
        )
        ..fields.add(
          Field(
            (f) => f
              ..name = 'json'
              ..modifier = FieldModifier.final$
              ..type = refer('Map<String, dynamic>'),
          ),
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
        ..methods.add(
          Method(
            (m) => m
              ..name = _discDartName
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('String')
              ..body = Code("return json['$_discJsonKey'] as String? ?? '';"),
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
          Method(
            (m) => m
              ..name = 'operator =='
              ..annotations.add(refer('override'))
              ..returns = refer('bool')
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = 'other'
                    ..type = refer('Object'),
                ),
              )
              ..body = Code(
                'return identical(this, other) ||\n'
                '    other is $className && json == other.json;',
              ),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'hashCode'
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('int')
              ..body = const Code('return json.hashCode;'),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'toString'
              ..annotations.add(refer('override'))
              ..returns = refer('String')
              ..body = Code(
                "return '${escapeNameForString(union.name)}.unknown(\$json)';",
              ),
          ),
        ),
    );
  }

  List<Spec> _buildVariant(String discriminatorValue, IrType variantType) {
    final className = variantClassName(union.name, discriminatorValue);

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

  Class _buildObjectVariant(String className, String discValue, IrObject obj) {
    // Filter out the discriminator field from the object's fields
    final fields = obj.fields
        .where((f) => f.originalName != _discJsonKey)
        .toList();

    final fieldDecls = fields.map(
      (f) => Field(
        (b) => b
          ..name = f.name
          ..modifier = FieldModifier.final$
          ..type = irTypeToReference(f.type, forceNullable: !f.isRequired),
      ),
    );

    final ctorParams = fields.map(
      (f) => Parameter(
        (p) => p
          ..name = f.name
          ..named = true
          ..toThis = true
          ..required = f.isRequired,
      ),
    );

    final fromJsonArgs = fields
        .map((f) {
          final accessor = "json['${f.originalName}']";
          final isOptional = !f.isRequired;
          return '  ${f.name}: ${buildFromJsonCode(f.type, accessor, isOptional: isOptional)},';
        })
        .join('\n');

    final toJsonEntries = <String>["  '$_discJsonKey': $_discDartName,"];
    for (final f in fields) {
      final key = "'${f.originalName}'";
      final value = buildToJsonCode(f.type, f.name);
      if (!f.isRequired) {
        if (value == f.name) {
          toJsonEntries.add("  $key: ?${f.name},");
        } else {
          toJsonEntries.add("  if (${f.name} != null) $key: $value,");
        }
      } else {
        toJsonEntries.add('  $key: $value,');
      }
    }

    final eqComparisons = fields
        .map((f) => '${f.name} == other.${f.name}')
        .join(' && ');
    final eqBody = eqComparisons.isEmpty
        ? 'return identical(this, other) || other is $className;'
        : 'return identical(this, other) ||\n      other is $className && $eqComparisons;';

    final hashFields = fields.map((f) => f.name).join(', ');
    final hashBody = hashFields.isEmpty
        ? 'return runtimeType.hashCode;'
        : 'return Object.hash(runtimeType, $hashFields);';

    final toStrFields = fields.map((f) => '${f.name}: \$${f.name}').join(', ');

    return Class(
      (b) => b
        ..name = className
        ..modifier = ClassModifier.final$
        ..extend = refer(union.name)
        ..methods.add(
          Method(
            (m) => m
              ..name = _discDartName
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('String')
              ..body = Code("return '$discValue';"),
          ),
        )
        ..fields.addAll(fieldDecls)
        ..constructors.add(
          Constructor(
            (c) => c
              ..constant = true
              ..optionalParameters.addAll(ctorParams),
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
              ..body = Code('return $className(\n$fromJsonArgs\n);'),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'toJson'
              ..annotations.add(refer('override'))
              ..returns = refer('Map<String, dynamic>')
              ..body = Code('return {\n${toJsonEntries.join('\n')}\n};'),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'operator =='
              ..annotations.add(refer('override'))
              ..returns = refer('bool')
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = 'other'
                    ..type = refer('Object'),
                ),
              )
              ..body = Code(eqBody),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'hashCode'
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('int')
              ..body = Code(hashBody),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'toString'
              ..annotations.add(refer('override'))
              ..returns = refer('String')
              ..body = Code(
                "return '${escapeNameForString(className)}($toStrFields)';",
              ),
          ),
        ),
    );
  }

  String _refVariantToJsonBody(IrType type, String fieldName) {
    // For object-like types, spread their toJson() map into the result.
    // For non-map types (list, primitive, enum), store under 'data' key.
    final toJsonExpr = buildToJsonCode(type, fieldName);
    return switch (type) {
      IrObject() ||
      IrTypeRef() ||
      IrDiscriminatedUnion() ||
      IrUntaggedUnion() ||
      IrAnyOf() => "return {'$_discJsonKey': $_discDartName, ...$toJsonExpr};",
      _ => "return {'$_discJsonKey': $_discDartName, 'data': $toJsonExpr};",
    };
  }

  Class _buildRefVariant(String className, String discValue, IrType type) {
    final typeName = irTypeName(type);
    // Sanitize type names like "List<String>" by removing angle brackets
    final safeTypeName = typeName.replaceAll(RegExp(r'[<>,\s]'), '');
    final fieldName = sanitizeDartName(toCamelCase(safeTypeName));

    return Class(
      (b) => b
        ..name = className
        ..modifier = ClassModifier.final$
        ..extend = refer(union.name)
        ..methods.add(
          Method(
            (m) => m
              ..name = _discDartName
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('String')
              ..body = Code("return '$discValue';"),
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
          Method(
            (m) => m
              ..name = 'operator =='
              ..annotations.add(refer('override'))
              ..returns = refer('bool')
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = 'other'
                    ..type = refer('Object'),
                ),
              )
              ..body = Code(
                'return identical(this, other) ||\n'
                '    other is $className && $fieldName == other.$fieldName;',
              ),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'hashCode'
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('int')
              ..body = Code('return $fieldName.hashCode;'),
          ),
        )
        ..methods.add(
          Method(
            (m) => m
              ..name = 'toString'
              ..annotations.add(refer('override'))
              ..returns = refer('String')
              ..body = Code(
                "return '${escapeNameForString(className)}($fieldName: \$$fieldName)';",
              ),
          ),
        ),
    );
  }
}

/// Emits a sealed class with try-parse from an [IrUntaggedUnion].
class UntaggedUnionEmitter {
  final IrUntaggedUnion union;
  final Map<String, IrType> typeRegistry;
  const UntaggedUnionEmitter(this.union, {this.typeRegistry = const {}});

  /// Check if a type (possibly via IrTypeRef) is a union/sealed type.
  bool _isUnionType(IrType type) {
    final resolved = type is IrTypeRef && typeRegistry.containsKey(type.name)
        ? typeRegistry[type.name]!
        : type;
    return resolved is IrDiscriminatedUnion ||
        resolved is IrUntaggedUnion ||
        resolved is IrAnyOf;
  }

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
                ..returns = refer('Object?')
                ..docs.add('/// The underlying raw value.'),
            ),
          )
          ..constructors.add(_buildFromJson(allPrimitive))
          ..methods.add(
            Method(
              (m) => m
                ..name = 'toJson'
                ..returns = refer('Object?')
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
          final safeTypeName = typeName.replaceAll(RegExp(r'[<>,\s]'), '');
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
      final safeTypeName = typeName.replaceAll(RegExp(r'[<>,\s]'), '');
      final className = '${union.name}${toPascalCase(safeTypeName)}';
      if (variant is IrObject || variant is IrTypeRef) {
        final refName = typeName;
        if (_isUnionType(variant)) {
          // Union types don't have canParse — just try fromJson.
          // Their own fromJson handles unknown values, so this is unconditional.
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
    final safeTypeName = typeName.replaceAll(RegExp(r'[<>,\s]'), '');
    final className = '${union.name}${toPascalCase(safeTypeName)}';
    return Class(
      (b) => b
        ..name = className
        ..modifier = ClassModifier.final$
        ..extend = refer(union.name)
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
        ..fields.add(
          Field(
            (f) => f
              ..name = '_value'
              ..modifier = FieldModifier.final$
              ..type = irTypeToReference(variant),
          ),
        )
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
        ..methods.addAll([
          Method(
            (m) => m
              ..name = 'operator =='
              ..annotations.add(refer('override'))
              ..returns = refer('bool')
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = 'other'
                    ..type = refer('Object'),
                ),
              )
              ..body = Code(
                'return identical(this, other) ||\n'
                '    other is $className && _value == other._value;',
              ),
          ),
          Method(
            (m) => m
              ..name = 'hashCode'
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('int')
              ..body = const Code('return _value.hashCode;'),
          ),
          Method(
            (m) => m
              ..name = 'toString'
              ..annotations.add(refer('override'))
              ..returns = refer('String')
              ..body = Code(
                "return '${escapeNameForString(union.name)}.${toCamelCase(typeName)}(\$_value)';",
              ),
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
        ..extend = refer(union.name)
        ..docs.add('/// An unknown variant not defined in the OpenAPI spec.')
        ..methods.add(
          Method(
            (m) => m
              ..name = 'value'
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('Object')
              ..body = const Code("return _value ?? '';"),
          ),
        )
        ..fields.add(
          Field(
            (f) => f
              ..name = '_value'
              ..modifier = FieldModifier.final$
              ..type = refer('Object?'),
          ),
        )
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
        ..methods.addAll([
          Method(
            (m) => m
              ..name = 'operator =='
              ..annotations.add(refer('override'))
              ..returns = refer('bool')
              ..requiredParameters.add(
                Parameter(
                  (p) => p
                    ..name = 'other'
                    ..type = refer('Object'),
                ),
              )
              ..body = Code(
                'return identical(this, other) ||\n'
                '    other is $className && _value == other._value;',
              ),
          ),
          Method(
            (m) => m
              ..name = 'hashCode'
              ..type = MethodType.getter
              ..annotations.add(refer('override'))
              ..returns = refer('int')
              ..body = const Code('return _value.hashCode;'),
          ),
          Method(
            (m) => m
              ..name = 'toString'
              ..annotations.add(refer('override'))
              ..returns = refer('String')
              ..body = Code(
                "return '${escapeNameForString(union.name)}.unknown(\$_value)';",
              ),
          ),
        ]),
    );
  }
}

/// Emits a final class with nullable variant fields from an [IrAnyOf].
class AnyOfEmitter {
  final IrAnyOf anyOf;
  final Map<String, IrType> typeRegistry;
  const AnyOfEmitter(this.anyOf, {this.typeRegistry = const {}});

  /// Resolve an [IrTypeRef] to its underlying type, if available.
  IrType _resolveType(IrType type) {
    if (type is IrTypeRef && typeRegistry.containsKey(type.name)) {
      return typeRegistry[type.name]!;
    }
    return type;
  }

  /// Check if a type (possibly via IrTypeRef) is a union/sealed type.
  bool _isUnionType(IrType type) {
    final resolved = _resolveType(type);
    return resolved is IrDiscriminatedUnion ||
        resolved is IrUntaggedUnion ||
        resolved is IrAnyOf;
  }

  List<Spec> emit() {
    // Deduplicate variants by type name — anyOf specs can list the same type
    // multiple times (e.g., 29 String variants). Only keep the first of each.
    final seenTypeNames = <String>{};
    final seenFieldNames = <String>{};
    final variantFields = <({String name, IrType type, String typeName})>[];
    for (final v in anyOf.variants) {
      final typeName = irTypeName(v);
      if (!seenTypeNames.add(typeName)) continue;
      var fieldName = sanitizeDartName(toCamelCase(typeName));
      // Escape field names that would shadow dart:core types (e.g., double, bool, String)
      if (dartCoreTypeNames.contains(fieldName)) {
        fieldName = '\$$fieldName';
      }
      fieldName = deduplicateName(fieldName, seenFieldNames);
      seenFieldNames.add(fieldName);
      variantFields.add((name: fieldName, type: v, typeName: typeName));
    }

    return [
      Class(
        (b) => b
          ..name = anyOf.name
          ..modifier = ClassModifier.final$
          ..docs.addAll(_buildDocs())
          ..fields.addAll(
            variantFields.map(
              (f) => Field(
                (fb) => fb
                  ..name = f.name
                  ..modifier = FieldModifier.final$
                  ..type = irTypeToReference(f.type, forceNullable: true),
              ),
            ),
          )
          ..constructors.add(
            Constructor(
              (c) => c
                ..constant = true
                ..optionalParameters.addAll(
                  variantFields.map(
                    (f) => Parameter(
                      (p) => p
                        ..name = f.name
                        ..named = true
                        ..toThis = true,
                    ),
                  ),
                ),
            ),
          )
          ..methods.add(
            Method(
              (m) => m
                ..name = 'isValid'
                ..type = MethodType.getter
                ..returns = refer('bool')
                ..docs.add('/// At least one variant must be present.')
                ..body = Code(
                  'return ${variantFields.map((f) => '${f.name} != null').join(' || ')};',
                ),
            ),
          )
          ..constructors.add(_buildFromJson(variantFields))
          ..methods.add(_buildToJson(variantFields)),
      ),
    ];
  }

  List<String> _buildDocs() {
    if (anyOf.description == null) return [];
    return formatDocComment(anyOf.description!);
  }

  Constructor _buildFromJson(
    List<({String name, IrType type, String typeName})> fields,
  ) {
    // If all variants are objects/refs (have canParse), accept Map<String, dynamic>.
    // Otherwise accept Object? to support primitive/enum variants.
    final allObjectLike = fields.every(
      (f) =>
          f.type is IrObject ||
          f.type is IrTypeRef ||
          f.type is IrDiscriminatedUnion ||
          f.type is IrUntaggedUnion ||
          f.type is IrAnyOf ||
          _isUnionType(f.type),
    );
    final paramType = allObjectLike ? 'Map<String, dynamic>' : 'Object?';

    // Only declare 'map' when we actually need it (non-primitive, non-enum variants
    // in a mixed-type anyOf).
    final needsMap =
        !allObjectLike &&
        fields.any(
          (f) =>
              f.type is IrObject || f.type is IrTypeRef || _isUnionType(f.type),
        );
    final prelude = needsMap
        ? 'final map = json is Map<String, dynamic> ? json : null;\n'
        : '';

    final args = fields
        .map((f) {
          // Primitive types don't have canParse/fromJson — handle them inline.
          if (f.type is IrPrimitive) {
            return '  ${f.name}: ${_primitiveAnyOfExpr(f.type as IrPrimitive, 'json')},';
          }
          // Enums don't have canParse — they deserialize from a string value.
          if (f.type is IrEnum) {
            return '  ${f.name}: json is String ? ${f.typeName}.fromJson(json) : null,';
          }
          // Lists/maps don't have canParse/fromJson as static methods.
          if (f.type is IrList || f.type is IrMap) {
            return '  // ${f.name}: skipped (collection type in anyOf not supported)';
          }
          // Union/AnyOf types don't have canParse — just try fromJson.
          // If the data doesn't match, it'll parse as the $Unknown variant.
          if (_isUnionType(f.type)) {
            if (allObjectLike) {
              return '  ${f.name}: ${f.typeName}.fromJson(json),';
            }
            return '  ${f.name}: map != null ? ${f.typeName}.fromJson(map) : null,';
          }
          if (allObjectLike) {
            return '  ${f.name}: ${f.typeName}.canParse(json) ? ${f.typeName}.fromJson(json) : null,';
          }
          return '  ${f.name}: map != null && ${f.typeName}.canParse(map) ? ${f.typeName}.fromJson(map) : null,';
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
              ..type = refer(paramType),
          ),
        )
        ..body = Code('${prelude}return ${anyOf.name}(\n$args\n);'),
    );
  }

  /// Generate a single expression for a primitive AnyOf variant.
  /// Uses type promotion (is check + direct access) to avoid unnecessary casts.
  /// Generate a single expression for a primitive AnyOf variant.
  /// Uses type checks with promotion to avoid unnecessary casts and to
  /// prevent breaking type promotion across named arguments in constructor calls.
  static String _primitiveAnyOfExpr(IrPrimitive p, String accessor) {
    return switch (p.kind) {
      PrimitiveKind.string => '$accessor is String ? $accessor : null',
      PrimitiveKind.int => '$accessor is num ? $accessor.toInt() : null',
      PrimitiveKind.double => '$accessor is num ? $accessor.toDouble() : null',
      PrimitiveKind.num => '$accessor is num ? $accessor : null',
      PrimitiveKind.bool => '$accessor is bool ? $accessor : null',
      PrimitiveKind.dateTime =>
        '$accessor is String ? DateTime.parse($accessor) : null',
      PrimitiveKind.uri => '$accessor is String ? Uri.parse($accessor) : null',
      PrimitiveKind.bigInt =>
        '$accessor is String ? BigInt.parse($accessor) : null',
      PrimitiveKind.bytes =>
        '$accessor is String ? base64Decode($accessor) : null',
      PrimitiveKind.duration =>
        '$accessor is num ? Duration(milliseconds: $accessor.toInt()) : null',
    };
  }

  Method _buildToJson(
    List<({String name, IrType type, String typeName})> fields,
  ) {
    final spreads = fields
        .map((f) {
          // Primitives and enums can't be spread into a Map — include as named entries.
          if (f.type is IrPrimitive) {
            return "  '${f.name}': ?${f.name},";
          }
          if (f.type is IrEnum) {
            return "  if (${f.name} != null) '${f.name}': ${f.name}!.toJson(),";
          }
          if (f.type is IrList || f.type is IrMap) {
            return "  '${f.name}': ?${f.name},";
          }
          // Sealed/union types have toJson returning Object?, so we can't spread.
          if (_isUnionType(f.type)) {
            return "  if (${f.name} != null) '${f.name}': ${f.name}!.toJson(),";
          }
          return '  ...?${f.name}?.toJson(),';
        })
        .join('\n');

    return Method(
      (m) => m
        ..name = 'toJson'
        ..returns = refer('Map<String, dynamic>')
        ..body = Code('return {\n$spreads\n};'),
    );
  }
}
