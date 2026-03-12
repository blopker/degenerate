import '../ir/ir_types.dart';
import '../naming.dart';
import '../normalizer/allof_flattener.dart';
import '../normalizer/schema_normalizer.dart';
import 'type_ref_resolver.dart';

/// Maps normalized OpenAPI schemas to IR types.
///
/// Expects a [NormalizationContext] with pre-computed name mappings and
/// discriminator properties. The mapper purely translates schemas to IR
/// types without worrying about name conflicts or discriminator detection.
///
/// `$ref` pointers are kept as [IrTypeRef] nodes. `allOf` schemas are
/// flattened inline via [AllOfFlattener].
class IrMapper {
  final Set<String> _usedNames;
  final Map<String, IrType> typeRegistry = {};
  final AllOfFlattener _flattener = AllOfFlattener();

  /// Maps original OpenAPI schema name → Dart type name (after renaming).
  final Map<String, String> _nameMapping;

  /// Maps schema name → discriminator property name for schemas that
  /// participate in a discriminated union.
  final Map<String, String> _discriminatorProperties;

  /// Warnings collected during lowering (e.g., unknown schema fallbacks).
  final List<String> warnings;

  /// Resolver for IrTypeRef nodes, created lazily over typeRegistry.
  late final TypeRefResolver _resolver = TypeRefResolver(typeRegistry);

  /// Create an IrMapper from a [NormalizationContext].
  IrMapper(NormalizationContext context)
      : _usedNames = context.usedNames,
        _nameMapping = context.nameMapping,
        _discriminatorProperties = context.discriminatorProperties,
        warnings = context.warnings;

  /// Lower all named schemas from `components.schemas`.
  ///
  /// Each entry in [schemas] is a raw schema map keyed by its OpenAPI name.
  /// Returns the list of top-level IR types and populates [typeRegistry].
  List<IrType> lowerSchemas(Map<String, dynamic> schemas) {
    final results = <IrType>[];
    for (final entry in schemas.entries) {
      final name = entry.key;
      final schema = entry.value;
      final irType = _lowerNamedSchema(name, schema);
      if (irType == null) continue;
      results.add(irType);
    }

    // Second pass: resolve IrTypeRef fields that point to non-emittable types
    // (IrMap, IrList, IrPrimitive). This must happen after all schemas are
    // lowered so the registry is fully populated.
    for (var i = 0; i < results.length; i++) {
      results[i] = _resolver.resolve(results[i]);
    }

    // Add any inline-generated types (e.g., named enums from inline enum fields)
    // that were registered during lowering but aren't in the results list.
    final resultNames = results
        .map((r) => r.emittableName)
        .whereType<String>()
        .toSet();

    for (final entry in typeRegistry.entries) {
      final regType = entry.value;
      final regName = regType.emittableName;
      if (regName != null && resultNames.add(regName)) {
        results.add(regType);
      }
    }

    return results;
  }

  /// Public entry point for resolving type refs in a type tree.
  /// Used by the generator for a final resolution pass.
  IrType resolveTypeRefs(IrType type) => _resolver.resolve(type);

  /// Lower a single named schema to an IR type and register it.
  IrType? _lowerNamedSchema(String name, dynamic schema) {
    if (schema is! Map<String, dynamic> && schema is! bool) return null;
    final dartName = _nameMapping[name] ?? _uniqueTypeName(name);
    _nameMapping[name] = dartName;
    final discProp = _discriminatorProperties[name];
    var irType = schema is Map<String, dynamic>
        ? _lowerSchemaImpl(dartName, schema, discriminatorProperty: discProp)
        : _lowerBooleanSchema(schema, nameHint: dartName);
    if (irType is IrPrimitive) {
      final preserveNullableInner = irType.kind == PrimitiveKind.object;
      final inner = irType.isNullable && !preserveNullableInner
          ? IrPrimitive(irType.kind, format: irType.format)
          : irType;
      irType = IrExtensionType(
        dartName,
        inner,
        description: irType.description,
        isNullable: irType.isNullable,
      );
    }
    typeRegistry[dartName] = irType;
    return irType;
  }

  IrType lowerSchema(String name, Map<String, dynamic> schema) {
    return _lowerNamedSchema(name, schema)!;
  }

  /// Lower an anonymous/inline schema (e.g. in a response body or parameter).
  ///
  /// If the schema is a `$ref`, it resolves to an [IrTypeRef]. Otherwise it
  /// produces a concrete IR type without registering it in [typeRegistry].
  ///
  /// For refs that point to non-emittable types (lists, maps, primitives),
  /// the actual resolved type is returned instead of [IrTypeRef] so that
  /// downstream emitters don't reference a type name that has no class.
  IrType lowerInlineSchema(Map<String, dynamic> schema, {String? nameHint}) {
    // Check if the schema will produce a named type (needs a unique name).
    final needsName = _looksLikeObject(schema) || _looksLikeNamedType(schema);
    // Prefer: explicit nameHint > schema title > 'InlineObject' fallback.
    final hint = (nameHint != null && nameHint.isNotEmpty)
        ? nameHint
        : (schema['title'] as String?) ?? 'InlineObject';
    // Pre-compute a unique name so that _lowerObject (and its inline enums)
    // use the correct final name from the start.
    final effectiveName = needsName ? _uniqueTypeName(hint) : nameHint;

    final result = _lowerSchemaImpl(effectiveName, schema, isInline: true);
    var resolved = _resolver.resolveRef(result);
    // Recursively resolve type refs within nested types (e.g. list items, map values).
    resolved = _resolver.resolveDeep(resolved);
    // Register inline named types so they get emitted as separate files.
    if (resolved is IrObject) {
      final objName = resolved.name;
      resolved = _resolver.resolve(resolved);
      typeRegistry[objName] = resolved;
      _inlineTypes.add(resolved);
    } else if (resolved is IrEnum) {
      typeRegistry[resolved.name] = resolved;
      _inlineTypes.add(resolved);
    } else if (resolved is IrDiscriminatedUnion ||
        resolved is IrUntaggedUnion ||
        resolved is IrAnyOf) {
      final name = switch (resolved) {
        IrDiscriminatedUnion(:final name) => name,
        IrUntaggedUnion(:final name) => name,
        IrAnyOf(:final name) => name,
        _ => null,
      };
      if (name != null) {
        typeRegistry[name] = resolved;
        _inlineTypes.add(resolved);
      }
    }
    return resolved;
  }

  IrType lowerUntypedInlineSchema(dynamic schema, {String? nameHint}) {
    if (schema is Map<String, dynamic>) {
      return lowerInlineSchema(schema, nameHint: nameHint);
    }
    if (schema is bool) {
      return _lowerBooleanSchema(schema, nameHint: nameHint);
    }
    warnings.add(
      'Encountered invalid non-object schema; defaulting to Object?.',
    );
    return const IrPrimitive(PrimitiveKind.object);
  }

  /// Check if a schema will produce a named type that needs registration
  /// (enum, union) but isn't object-like.
  bool _looksLikeNamedType(Map<String, dynamic> schema) {
    if (schema.containsKey(r'$ref') || schema.containsKey('_cycleRef')) {
      return false;
    }
    // Inline enum
    if (schema['type'] == 'string' && schema.containsKey('enum')) return true;
    // oneOf/anyOf produce named union types
    if (schema.containsKey('oneOf') || schema.containsKey('anyOf')) return true;
    // allOf wrapping an enum or other named type
    if (schema.containsKey('allOf')) {
      final allOf = schema['allOf'];
      if (allOf is List && allOf.length == 1) {
        final single = allOf[0];
        if (single is Map<String, dynamic>) {
          if (single['type'] == 'string' && single.containsKey('enum')) {
            return true;
          }
        }
      }
    }
    return false;
  }

  /// Check if a schema will produce an object type (has properties or is type: object with properties).
  bool _looksLikeObject(Map<String, dynamic> schema) {
    if (schema.containsKey(r'$ref') || schema.containsKey('_cycleRef')) {
      return false;
    }
    if (schema.containsKey('oneOf') || schema.containsKey('anyOf')) {
      return false;
    }
    if (schema.containsKey('allOf')) {
      // allOf that produces an object
      return true;
    }
    final type = _extractType(schema);
    if (type == 'array') return false;
    if (schema.containsKey('properties')) return true;
    // type: object without properties → Map, not object
    return false;
  }

  /// Inline types generated during operation lowering that need to be emitted.
  final List<IrType> _inlineTypes = [];

  /// Returns inline types that were created during lowering and need to be
  /// added to the types list for emission.
  List<IrType> get inlineTypes => List.unmodifiable(_inlineTypes);

  // ──────────────────────────────────────────────────────────────
  // Internal helpers
  // ──────────────────────────────────────────────────────────────

  IrType _lowerSchemaImpl(
    String? name,
    Map<String, dynamic> schema, {
    String? discriminatorProperty,
    bool isInline = false,
  }) {
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);

    // Handle $ref pointers → IrTypeRef.
    if (schema.containsKey(r'$ref')) {
      final refPath = schema[r'$ref'] as String;
      final rawRefName = _extractRefName(refPath);
      final refName =
          _nameMapping[rawRefName] ??
          sanitizeDartName(toPascalCase(rawRefName));
      return IrTypeRef(refName, description: description, isNullable: nullable);
    }

    // Handle cycle markers left by RefResolver.
    if (schema.containsKey('_cycleRef')) {
      final rawRefName = schema['_cycleRef'] as String;
      final refName =
          _nameMapping[rawRefName] ??
          sanitizeDartName(toPascalCase(rawRefName));
      return IrTypeRef(refName, description: description, isNullable: nullable);
    }

    // Handle resolved refs (inlined by RefResolver but with original name preserved).
    // Only treat as a ref if this is NOT a top-level named schema (name == null means inline).
    if (schema.containsKey('_resolvedRef') && name == null) {
      final rawRefName = schema['_resolvedRef'] as String;
      final refName =
          _nameMapping[rawRefName] ??
          sanitizeDartName(toPascalCase(rawRefName));
      return IrTypeRef(refName, description: description, isNullable: nullable);
    }

    // Flatten allOf before further processing.
    final flattened = _flattener.flatten(schema);

    // After flattening, check for $ref surfaced from allOf (e.g. allOf: [{$ref: ...}]).
    if (flattened.containsKey(r'$ref')) {
      final refPath = flattened[r'$ref'] as String;
      final rawRefName = _extractRefName(refPath);
      final refName =
          _nameMapping[rawRefName] ??
          sanitizeDartName(toPascalCase(rawRefName));
      final flatDescription =
          flattened['description'] as String? ?? description;
      final flatNullable = _isNullable(flattened) || nullable;
      return IrTypeRef(
        refName,
        description: flatDescription,
        isNullable: flatNullable,
      );
    }

    // After flattening, check again for resolved refs (allOf may have surfaced one).
    if (flattened.containsKey('_resolvedRef') && name == null) {
      final rawRefName = flattened['_resolvedRef'] as String;
      final refName =
          _nameMapping[rawRefName] ??
          sanitizeDartName(toPascalCase(rawRefName));
      return IrTypeRef(refName, description: description, isNullable: nullable);
    }

    // oneOf with discriminator → IrDiscriminatedUnion.
    if (flattened.containsKey('oneOf') &&
        flattened.containsKey('discriminator')) {
      return _lowerDiscriminatedUnion(name, flattened);
    }

    // oneOf without discriminator → IrUntaggedUnion.
    if (flattened.containsKey('oneOf')) {
      return _lowerUntaggedUnion(name, flattened, isInline: isInline);
    }

    // anyOf → check for OpenAPI 3.1 nullable pattern first.
    // `anyOf: [SomeType, {type: null}]` is the 3.1 way of expressing nullable.
    if (flattened.containsKey('anyOf')) {
      final anyOf = flattened['anyOf'] as List;
      final nonNullVariants = anyOf
          .where((v) => v is Map<String, dynamic> && v['type'] != 'null')
          .toList();
      final hasNullVariant = anyOf.any(
        (v) => v is Map<String, dynamic> && v['type'] == 'null',
      );
      if (hasNullVariant && nonNullVariants.length == 1) {
        // This is just a nullable wrapper - lower the single real type.
        final inner = nonNullVariants[0] as Map<String, dynamic>;
        final result = _lowerSchemaImpl(name, inner, isInline: isInline);
        return result.copyAsNullable();
      }
      return _lowerAnyOf(name, flattened, isInline: isInline);
    }

    final type = _extractType(flattened);

    // Enum strings.
    if (type == 'string' && flattened.containsKey('enum')) {
      // If an existing registered enum has the same title and values, reuse it
      // instead of creating a duplicate (e.g. allOf wrapping a named enum).
      final title = flattened['title'] as String?;
      if (title != null) {
        final enumValues = (flattened['enum'] as List)
            .whereType<String>()
            .toList();
        final matchName = sanitizeDartName(toPascalCase(title));
        final existing = typeRegistry[matchName];
        if (existing is IrEnum && _listEquals(existing.values, enumValues)) {
          return IrTypeRef(existing.name, isNullable: nullable);
        }
      }
      return _lowerEnum(name, flattened);
    }

    // Array.
    if (type == 'array') {
      return _lowerList(flattened, itemNameHint: name);
    }

    // Object with properties → IrObject.
    if (type == 'object' || flattened.containsKey('properties')) {
      // Object with only additionalProperties → IrMap.
      if (!flattened.containsKey('properties') &&
          flattened.containsKey('additionalProperties')) {
        return _lowerMap(flattened, nameHint: name);
      }
      // Object with no properties and no additionalProperties → Map<String, dynamic>.
      // This handles free-form objects like `type: object` with no further schema.
      if (!flattened.containsKey('properties') &&
          !flattened.containsKey('additionalProperties')) {
        return _lowerMap(flattened, nameHint: name);
      }
      return _lowerObject(
        name,
        flattened,
        discriminatorProperty: discriminatorProperty,
      );
    }

    // Object-like map (additionalProperties only, no explicit type).
    if (flattened.containsKey('additionalProperties')) {
      return _lowerMap(flattened, nameHint: name);
    }

    // Primitives.
    if (type != null) {
      return _lowerPrimitive(type, flattened);
    }

    // Fallback: no explicit type - treat as Object?.
    return IrPrimitive(
      PrimitiveKind.object,
      description: description,
      isNullable: true,
    );
  }

  // ─── Primitive ────────────────────────────────────────────────

  IrType _lowerPrimitive(String type, Map<String, dynamic> schema) {
    final format = schema['format'] as String?;
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);

    final kind = _primitiveKind(type, format);
    return IrPrimitive(
      kind,
      format: format,
      description: description,
      isNullable: nullable,
    );
  }

  PrimitiveKind _primitiveKind(String type, String? format) {
    switch (type) {
      case 'string':
        switch (format) {
          case 'date-time':
            return PrimitiveKind.dateTime;
          case 'uri':
            return PrimitiveKind.uri;
          case 'binary':
          case 'byte':
            return PrimitiveKind.bytes;
          default:
            return PrimitiveKind.string;
        }
      case 'integer':
        return PrimitiveKind.int;
      case 'number':
        return PrimitiveKind.double;
      case 'boolean':
        return PrimitiveKind.bool;
      default:
        return PrimitiveKind.string;
    }
  }

  IrType _lowerBooleanSchema(bool schema, {String? nameHint}) {
    warnings.add(
      'Boolean schema${nameHint != null ? ' for $nameHint' : ''} lowered as Object? fallback.',
    );
    return const IrPrimitive(PrimitiveKind.object, isNullable: true);
  }

  // ─── Enum ─────────────────────────────────────────────────────

  IrType _lowerEnum(String? name, Map<String, dynamic> schema) {
    final values = (schema['enum'] as List).map((e) => e.toString()).toList();
    final rawDefault = schema['default'];
    final defaultValue = rawDefault is String ? rawDefault : null;
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);
    final enumName = name ?? _uniqueTypeName('InlineEnum');
    return IrEnum(
      enumName,
      values,
      defaultValue: defaultValue,
      description: description,
      isNullable: nullable,
    );
  }

  // ─── List ─────────────────────────────────────────────────────

  IrType _lowerList(Map<String, dynamic> schema, {String? itemNameHint}) {
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);
    final rawItems = schema['items'];
    final itemsSchema = rawItems is Map<String, dynamic> ? rawItems : null;
    IrType itemsType;
    if (itemsSchema != null) {
      itemsType = lowerInlineSchema(itemsSchema, nameHint: itemNameHint);
    } else {
      itemsType = const IrPrimitive(PrimitiveKind.object, isNullable: true);
    }
    return IrList(itemsType, description: description, isNullable: nullable);
  }

  // ─── Map ──────────────────────────────────────────────────────

  IrType _lowerMap(Map<String, dynamic> schema, {String? nameHint}) {
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);
    final addProps = schema['additionalProperties'];
    IrType valueType;
    if (addProps is Map<String, dynamic>) {
      // Derive a value name hint from the parent context.
      final valueHint = nameHint != null ? '${nameHint}Value' : null;
      valueType = lowerInlineSchema(addProps, nameHint: valueHint);
    } else {
      // additionalProperties: true or absent → Map<String, dynamic>
      valueType = const IrPrimitive(PrimitiveKind.object, isNullable: true);
    }
    return IrMap(valueType, description: description, isNullable: nullable);
  }

  // ─── Object ───────────────────────────────────────────────────

  IrType _lowerObject(
    String? name,
    Map<String, dynamic> schema, {
    String? discriminatorProperty,
  }) {
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);
    final objectName = name ?? _uniqueTypeName('InlineObject');

    final requiredList = <String>[];
    final rawRequired = schema['required'];
    if (rawRequired is List) {
      requiredList.addAll(rawRequired.cast<String>());
    }
    final requiredSet = requiredList.toSet();

    final properties =
        schema['properties'] as Map<String, dynamic>? ?? <String, dynamic>{};
    final fields = <IrField>[];

    for (final entry in properties.entries) {
      final fieldOriginalName = entry.key;
      final fieldDartName = sanitizeDartName(toCamelCase(fieldOriginalName));
      // Property values can be boolean schemas (true/false) in JSON Schema.
      // Treat boolean schemas as unconstrained (true) or impossible (false).
      if (entry.value is! Map<String, dynamic>) {
        // true/false boolean schema → accept anything via Object? fallback.
        // false → nothing valid, but we still emit the field
        final fieldType = const IrPrimitive(
          PrimitiveKind.object,
          isNullable: true,
        );
        fields.add(
          IrField(
            fieldDartName,
            fieldOriginalName,
            fieldType,
            isRequired: requiredSet.contains(fieldOriginalName),
          ),
        );
        continue;
      }
      final fieldSchema = entry.value as Map<String, dynamic>;
      final fieldDescription = fieldSchema['description'] as String?;
      final fieldDefault = fieldSchema['default'];
      final isRequired = requiredSet.contains(fieldOriginalName);
      final fieldNullable = _isNullable(fieldSchema);

      // For inline enums in fields, generate a proper name.
      // If this field is a discriminator property, just use String instead of enum.
      String? inlineEnumName;
      final fieldSchemaType = _extractType(fieldSchema);
      if (fieldSchemaType == 'string' && fieldSchema.containsKey('enum')) {
        if (discriminatorProperty != null &&
            fieldOriginalName == discriminatorProperty) {
          // This is a discriminator field - emit as plain String.
          // Override the schema to remove the enum so it lowers as a primitive.
        } else {
          // Non-discriminator inline enum - generate a named enum.
          inlineEnumName = '$objectName${toPascalCase(fieldOriginalName)}';
        }
      }

      IrType fieldType;
      if (discriminatorProperty != null &&
          fieldOriginalName == discriminatorProperty &&
          fieldSchemaType == 'string' &&
          fieldSchema.containsKey('enum')) {
        // Discriminator field: emit as plain String.
        fieldType = IrPrimitive(
          PrimitiveKind.string,
          isNullable: fieldNullable,
        );
      } else if (inlineEnumName != null) {
        // Inline enum: lower with the generated name and register it.
        fieldType = _lowerEnum(inlineEnumName, fieldSchema);
        typeRegistry[inlineEnumName] = fieldType;
      } else {
        // Generate a name hint based on the parent object and field name.
        final fieldNameHint = '$objectName${toPascalCase(fieldOriginalName)}';
        // Use lowerInlineSchema to properly register any named types
        // (objects, enums, unions) that need separate files.
        fieldType = lowerInlineSchema(fieldSchema, nameHint: fieldNameHint);
      }

      // Apply nullability: if nullable is explicitly set on the field schema,
      // and the lowered type doesn't already reflect it, wrap appropriately.
      // For IrTypeRef we need to re-create with the nullable flag.
      if (fieldNullable && !fieldType.isNullable) {
        fieldType = fieldType.copyAsNullable();
      }

      fields.add(
        IrField(
          fieldDartName,
          fieldOriginalName,
          fieldType,
          isRequired: isRequired,
          defaultValue: fieldDefault,
          description: fieldDescription,
        ),
      );
    }

    return IrObject(
      objectName,
      fields,
      requiredFields: requiredList,
      description: description,
      isNullable: nullable,
    );
  }

  // ─── Discriminated Union ──────────────────────────────────────

  IrType _lowerDiscriminatedUnion(String? name, Map<String, dynamic> schema) {
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);
    final unionName = name ?? _uniqueTypeName('InlineUnion');

    final discriminator = schema['discriminator'] as Map<String, dynamic>;
    final propertyName = discriminator['propertyName'] as String;
    final mapping = <String, IrType>{};

    final explicitMapping = discriminator['mapping'] as Map<String, dynamic>?;
    final oneOf = schema['oneOf'] as List;

    // Collect oneOf ref names for cross-referencing when mapping values
    // don't match any known schema (some specs have mismatched mapping refs).
    final oneOfRefNames = <String>[];
    for (final variant in oneOf) {
      if (variant is Map<String, dynamic> && variant.containsKey(r'$ref')) {
        oneOfRefNames.add(_extractRefName(variant[r'$ref'] as String));
      }
    }

    if (explicitMapping != null) {
      for (final entry in explicitMapping.entries) {
        final value = entry.key;
        final refOrSchema = entry.value;
        if (refOrSchema is String) {
          final rawRefName = _extractRefName(refOrSchema);
          var dartRefName = _nameMapping[rawRefName];
          if (dartRefName == null) {
            // Try to match against oneOf refs by suffix (handles specs where
            // mapping refs like "foo-bar" don't match actual schemas like "prefix_foo-bar").
            for (final oneOfRef in oneOfRefNames) {
              if (oneOfRef.endsWith(rawRefName) &&
                  _nameMapping.containsKey(oneOfRef)) {
                dartRefName = _nameMapping[oneOfRef];
                break;
              }
            }
            dartRefName ??= sanitizeDartName(toPascalCase(rawRefName));
          }
          mapping[value] = IrTypeRef(dartRefName);
        } else if (refOrSchema is Map<String, dynamic>) {
          // Use title if available, otherwise derive from parent + value.
          final hint = (refOrSchema['title'] as String?) ??
              '$unionName${toPascalCase(value)}';
          mapping[value] = lowerInlineSchema(refOrSchema, nameHint: hint);
        }
      }
    } else {
      // Infer mapping from oneOf entries.
      for (var i = 0; i < oneOf.length; i++) {
        final variant = oneOf[i];
        if (variant is Map<String, dynamic> && variant.containsKey(r'$ref')) {
          final rawRefName = _extractRefName(variant[r'$ref'] as String);
          final dartRefName =
              _nameMapping[rawRefName] ??
              sanitizeDartName(toPascalCase(rawRefName));
          mapping[dartRefName] = IrTypeRef(dartRefName);
        } else if (variant is Map<String, dynamic> &&
            (_looksLikeObject(variant) || _looksLikeNamedType(variant))) {
          final hint = (variant['title'] as String?) ??
              '${unionName}Variant${i + 1}';
          final lowered = lowerInlineSchema(variant, nameHint: hint);
          // Derive the mapping key from the discriminator enum value if
          // available, otherwise use the type name.
          final props = variant['properties'] as Map<String, dynamic>?;
          final discProp = props?[propertyName] as Map<String, dynamic>?;
          final enumVals = discProp?['enum'] as List?;
          final key = (enumVals != null && enumVals.isNotEmpty)
              ? enumVals.first.toString()
              : (lowered is IrObject ? lowered.name : hint);
          mapping[key] = lowered is IrObject
              ? IrTypeRef(lowered.name)
              : lowered;
        }
      }
    }

    return IrDiscriminatedUnion(
      unionName,
      propertyName,
      mapping,
      description: description,
      isNullable: nullable,
    );
  }

  // ─── Untagged Union ───────────────────────────────────────────

  IrType _lowerUntaggedUnion(
    String? name,
    Map<String, dynamic> schema, {
    bool isInline = false,
  }) {
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);
    final unionName = name ?? _uniqueTypeName('InlineUnion');

    final oneOf = schema['oneOf'] as List;

    // Collapse anyOf/oneOf of single-value string enums into one enum.
    // e.g. oneOf: [{enum: [High]}, {enum: [Medium]}, {enum: [Low]}]
    final collapsed = _trySingleValueEnumCollapse(oneOf);
    if (collapsed != null) {
      return IrEnum(unionName, collapsed,
          description: description, isNullable: nullable);
    }

    final variants = <IrType>[];
    for (var i = 0; i < oneOf.length; i++) {
      final variant = oneOf[i];
      if (variant is Map<String, dynamic>) {
        // Use lowerInlineSchema for inline variants so they get registered
        // in the type registry and emitted as separate files.
        final hint = (variant['title'] as String?) ??
            _singleEnumHint(unionName, variant) ??
            '${unionName}Variant${i + 1}';
        variants.add(lowerInlineSchema(variant, nameHint: hint));
      }
    }

    // Collapse inline primitive-only unions to Object - generating sealed
    // wrapper types for oneOf: [string, number, bool] adds ceremony without
    // value. Named schemas (name was passed in) are kept as unions since the
    // spec author intentionally defined them.
    if (isInline && _allPrimitives(variants)) {
      return IrPrimitive(
        PrimitiveKind.object,
        description: description,
        isNullable: nullable,
      );
    }

    return IrUntaggedUnion(
      unionName,
      variants,
      description: description,
      isNullable: nullable,
    );
  }

  // ─── AnyOf ────────────────────────────────────────────────────

  IrType _lowerAnyOf(String? name, Map<String, dynamic> schema,
      {bool isInline = false}) {
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);
    final anyOfName = name ?? _uniqueTypeName('InlineAnyOf');

    final anyOf = schema['anyOf'] as List;

    // Collapse anyOf of single-value string enums into one enum.
    final collapsed = _trySingleValueEnumCollapse(anyOf);
    if (collapsed != null) {
      return IrEnum(anyOfName, collapsed,
          description: description, isNullable: nullable);
    }

    final variants = <IrType>[];
    for (var i = 0; i < anyOf.length; i++) {
      final variant = anyOf[i];
      if (variant is Map<String, dynamic>) {
        // Use lowerInlineSchema for inline variants so they get registered
        // in the type registry and emitted as separate files.
        final hint = (variant['title'] as String?) ??
            _singleEnumHint(anyOfName, variant) ??
            '${anyOfName}Variant${i + 1}';
        variants.add(lowerInlineSchema(variant, nameHint: hint));
      }
    }

    // Collapse inline primitive-only unions to Object.
    if (isInline && _allPrimitives(variants)) {
      return IrPrimitive(
        PrimitiveKind.object,
        description: description,
        isNullable: nullable,
      );
    }

    return IrAnyOf(
      anyOfName,
      variants,
      description: description,
      isNullable: nullable,
    );
  }

  // ─── Utilities ────────────────────────────────────────────────

  /// Detects anyOf/oneOf where every variant is a single-value string enum,
  /// e.g. `anyOf: [{enum: [Strict]}, {enum: [Lax]}, {enum: [None]}]`.
  /// Returns the merged enum values if the pattern matches, null otherwise.
  List<String>? _trySingleValueEnumCollapse(List variants) {
    if (variants.isEmpty) return null;
    final values = <String>[];
    for (final variant in variants) {
      if (variant is! Map<String, dynamic>) return null;
      final enumValues = variant['enum'] as List?;
      if (enumValues == null || enumValues.length != 1) return null;
      final type = variant['type'] as String?;
      if (type != null && type != 'string') return null;
      values.add(enumValues.first.toString());
    }
    return values;
  }

  /// Returns true if all variants are primitives (no objects, enums, refs, or
  /// unions), meaning a sealed wrapper type adds no value over plain Object.
  bool _allPrimitives(List<IrType> variants) {
    return variants.isNotEmpty && variants.every((v) => v is IrPrimitive);
  }

  /// Derives a name hint from an inline object's single-value enum property.
  ///
  /// For schemas like `{event: {enum: [thread.run.created]}, data: ...}`,
  /// returns `ParentNameThreadRunCreated`.
  String? _singleEnumHint(String parentName, Map<String, dynamic> schema) {
    final props = schema['properties'] as Map<String, dynamic>?;
    if (props == null) return null;
    for (final entry in props.entries) {
      final prop = entry.value;
      if (prop is Map<String, dynamic>) {
        final enumValues = prop['enum'] as List?;
        if (enumValues != null && enumValues.length == 1) {
          return '$parentName${toPascalCase(enumValues.first.toString())}';
        }
      }
    }
    return null;
  }

  String _uniqueTypeName(String rawName) {
    final pascal = toPascalCase(rawName);
    final sanitized = sanitizeDartName(pascal);
    // Avoid shadowing dart:core types
    var candidate = dartCoreTypeNames.contains(sanitized)
        ? '${sanitized}Model'
        : sanitized;
    final unique = deduplicateName(candidate, _usedNames);
    _usedNames.add(unique);
    return unique;
  }

  bool _isNullable(Map<String, dynamic> schema) {
    // OpenAPI 3.1 uses `nullable: true` or type array including 'null'.
    if (schema['nullable'] == true) return true;
    final type = schema['type'];
    if (type is List && type.contains('null')) return true;
    return false;
  }

  /// Extract the primary type string from a schema's `type` field.
  /// Handles both `"type": "string"` and `"type": ["string", "null"]` (OpenAPI 3.1).
  static String? _extractType(Map<String, dynamic> schema) {
    final type = schema['type'];
    if (type is String) return type;
    if (type is List) {
      // Return the first non-null type.
      for (final t in type) {
        if (t is String && t != 'null') return t;
      }
    }
    return null;
  }

  static String _extractRefName(String ref) {
    final segments = ref.split('/');
    return segments.last;
  }

  static bool _listEquals<T>(List<T> a, List<T> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}
