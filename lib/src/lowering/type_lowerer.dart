import '../ir/ir_types.dart';
import '../naming.dart';
import '../normalizer/allof_flattener.dart';

/// Converts normalized OpenAPI schemas into IR types.
///
/// The lowerer expects schemas where `$ref` pointers are still present (not
/// pre-resolved). It creates [IrTypeRef] nodes for `$ref` and `_cycleRef`
/// markers, and lowers everything else to concrete IR types. `allOf` schemas
/// are flattened inline via [AllOfFlattener].
class TypeLowerer {
  final Set<String> _usedNames = {};
  final Map<String, IrType> typeRegistry = {};
  final AllOfFlattener _flattener = AllOfFlattener();

  /// Maps original OpenAPI schema name → Dart type name (after renaming).
  /// Used to resolve $ref names to their renamed counterparts.
  final Map<String, String> _nameMapping = {};

  /// Maps schema name → discriminator property name for schemas that participate
  /// in a discriminated union. Populated during a pre-scan of schemas.
  final Map<String, String> _discriminatorProperties = {};

  /// Warnings collected during lowering (e.g., unknown schema fallbacks).
  final List<String> warnings = [];

  /// Lower all named schemas from `components.schemas`.
  ///
  /// Each entry in [schemas] is a raw schema map keyed by its OpenAPI name.
  /// Returns the list of top-level IR types and populates [typeRegistry].
  List<IrType> lowerSchemas(Map<String, dynamic> schemas) {
    // Pre-scan: find discriminated unions and record which schemas have
    // discriminator properties, so we can emit those fields as String.
    for (final entry in schemas.entries) {
      final schema = entry.value;
      if (schema is! Map<String, dynamic>) continue;
      if (schema.containsKey('oneOf') && schema.containsKey('discriminator')) {
        final disc = schema['discriminator'] as Map<String, dynamic>;
        final propName = disc['propertyName'] as String;
        final mapping = disc['mapping'] as Map<String, dynamic>?;
        if (mapping != null) {
          for (final ref in mapping.values) {
            if (ref is String) {
              final refName = ref.split('/').last;
              _discriminatorProperties[refName] = propName;
            }
          }
        } else {
          final oneOf = schema['oneOf'] as List;
          for (final variant in oneOf) {
            if (variant is Map<String, dynamic> &&
                variant.containsKey(r'$ref')) {
              final refName = (variant[r'$ref'] as String).split('/').last;
              _discriminatorProperties[refName] = propName;
            }
          }
        }
      }
    }

    // Pre-scan: compute all name mappings before lowering, so that $ref
    // resolution can find the correct Dart name for any schema regardless
    // of declaration order.
    for (final entry in schemas.entries) {
      if (entry.value is! Map<String, dynamic>) continue;
      final dartName = _uniqueTypeName(entry.key);
      _nameMapping[entry.key] = dartName;
    }

    final results = <IrType>[];
    for (final entry in schemas.entries) {
      final name = entry.key;
      final schema = entry.value;
      if (schema is! Map<String, dynamic>) continue;
      final irType = lowerSchema(name, schema);
      results.add(irType);
    }

    // Second pass: resolve IrTypeRef fields that point to non-emittable types
    // (IrMap, IrList, IrPrimitive). This must happen after all schemas are
    // lowered so the registry is fully populated.
    for (var i = 0; i < results.length; i++) {
      results[i] = _resolveTypeRefsInType(results[i]);
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
  IrType resolveTypeRefs(IrType type) => _resolveTypeRefsInType(type);

  /// Recursively resolve IrTypeRef nodes within a type tree.
  /// Replaces refs to non-emittable types (IrMap, IrList, IrPrimitive)
  /// with the actual underlying type.
  /// Track types currently being resolved to prevent infinite recursion
  /// from circular references.
  final Set<String> _resolving = {};

  IrType _resolveTypeRefsInType(IrType type) {
    // Get a key for cycle detection
    final key = switch (type) {
      IrObject(:final name) => name,
      IrDiscriminatedUnion(:final name) => name,
      IrUntaggedUnion(:final name) => name,
      IrAnyOf(:final name) => name,
      _ => null,
    };
    if (key != null && !_resolving.add(key)) return type; // cycle detected
    try {
      return _resolveTypeRefsInTypeImpl(type);
    } finally {
      if (key != null) _resolving.remove(key);
    }
  }

  IrType _resolveTypeRefsInTypeImpl(IrType type) {
    switch (type) {
      case IrObject():
        var changed = false;
        final newFields = type.fields.map((f) {
          var resolved = _resolveTypeRef(f.type);
          resolved = _resolveTypeRefsInType(resolved);
          if (identical(resolved, f.type)) return f;
          changed = true;
          return IrField(
            f.name,
            f.originalName,
            resolved,
            isRequired: f.isRequired,
            defaultValue: f.defaultValue,
            description: f.description,
          );
        }).toList();
        if (!changed) return type;
        return IrObject(
          type.name,
          newFields,
          requiredFields: type.requiredFields,
          description: type.description,
          isNullable: type.isNullable,
        );
      case IrList():
        final resolved = _resolveTypeRef(type.items);
        final resolvedDeep = _resolveTypeRefsInType(resolved);
        if (identical(resolvedDeep, type.items)) return type;
        return IrList(
          resolvedDeep,
          description: type.description,
          isNullable: type.isNullable,
        );
      case IrMap():
        final resolved = _resolveTypeRef(type.values);
        final resolvedDeep = _resolveTypeRefsInType(resolved);
        if (identical(resolvedDeep, type.values)) return type;
        return IrMap(
          resolvedDeep,
          description: type.description,
          isNullable: type.isNullable,
        );
      case IrDiscriminatedUnion():
        var changed = false;
        final newMapping = <String, IrType>{};
        for (final entry in type.mapping.entries) {
          var resolved = _resolveTypeRef(entry.value);
          resolved = _resolveTypeRefsInType(resolved);
          if (!identical(resolved, entry.value)) changed = true;
          newMapping[entry.key] = resolved;
        }
        if (!changed) return type;
        return IrDiscriminatedUnion(
          type.name,
          type.discriminatorProperty,
          newMapping,
          description: type.description,
          isNullable: type.isNullable,
        );
      case IrUntaggedUnion():
        var changed = false;
        final newVariants = type.variants.map((v) {
          var resolved = _resolveTypeRef(v);
          resolved = _resolveTypeRefsInType(resolved);
          if (!identical(resolved, v)) changed = true;
          return resolved;
        }).toList();
        if (!changed) return type;
        return IrUntaggedUnion(
          type.name,
          newVariants,
          description: type.description,
          isNullable: type.isNullable,
        );
      case IrAnyOf():
        var changed = false;
        final newVariants = type.variants.map((v) {
          var resolved = _resolveTypeRef(v);
          resolved = _resolveTypeRefsInType(resolved);
          if (!identical(resolved, v)) changed = true;
          return resolved;
        }).toList();
        if (!changed) return type;
        return IrAnyOf(
          type.name,
          newVariants,
          description: type.description,
          isNullable: type.isNullable,
        );
      default:
        return type;
    }
  }

  /// Lower a single named schema to an IR type and register it.
  IrType lowerSchema(String name, Map<String, dynamic> schema) {
    // Use pre-computed name mapping if available, otherwise compute it
    final dartName = _nameMapping[name] ?? _uniqueTypeName(name);
    _nameMapping[name] = dartName;
    final discProp = _discriminatorProperties[name];
    final irType = _lowerSchemaImpl(
      dartName,
      schema,
      discriminatorProperty: discProp,
    );
    typeRegistry[dartName] = irType;
    return irType;
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
    // Pre-compute a unique name so that _lowerObject (and its inline enums)
    // use the correct final name from the start.
    final effectiveName = needsName
        ? _uniqueTypeName(
            (nameHint != null && nameHint.isNotEmpty)
                ? nameHint
                : 'InlineObject',
          )
        : nameHint;

    final result = _lowerSchemaImpl(effectiveName, schema);
    var resolved = _resolveTypeRef(result);
    // Recursively resolve type refs within nested types (e.g. list items, map values).
    resolved = _resolveTypeRefsDeep(resolved);
    // Register inline named types so they get emitted as separate files.
    if (resolved is IrObject) {
      final objName = resolved.name;
      resolved = _resolveTypeRefsInType(resolved);
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

  /// Recursively resolve IrTypeRef nodes within list items, map values, etc.
  /// Unlike [_resolveTypeRef] which only handles the top-level ref, this
  /// walks into `IrList`/`IrMap` to resolve nested refs (e.g. `List<EnumRef>` → `List<IrEnum>`).
  IrType _resolveTypeRefsDeep(IrType type) {
    switch (type) {
      case IrList():
        final resolvedItems = _resolveTypeRef(type.items);
        final deepItems = _resolveTypeRefsDeep(resolvedItems);
        if (identical(deepItems, type.items)) return type;
        return IrList(
          deepItems,
          description: type.description,
          isNullable: type.isNullable,
        );
      case IrMap():
        final resolvedValues = _resolveTypeRef(type.values);
        final deepValues = _resolveTypeRefsDeep(resolvedValues);
        if (identical(deepValues, type.values)) return type;
        return IrMap(
          deepValues,
          description: type.description,
          isNullable: type.isNullable,
        );
      default:
        return type;
    }
  }

  /// If [type] is an [IrTypeRef] whose target in the registry is not an
  /// emittable named type (object, enum, union), replace it with the actual
  /// resolved type so generated code uses `List<Pet>` instead of `Pets`.
  ///
  /// Follows chains of refs (e.g., TypeA → TypeB → IrPrimitive) until
  /// reaching a concrete type or a ref to an emittable type.
  IrType _resolveTypeRef(IrType type) {
    if (type is! IrTypeRef) return type;
    final nullable = type.isNullable;
    var current = type as IrType;
    // Follow ref chains up to a reasonable depth to avoid infinite loops.
    for (var depth = 0; depth < 20; depth++) {
      if (current is! IrTypeRef) break;
      final resolved = typeRegistry[current.name];
      if (resolved == null) return current; // unknown ref — keep as-is
      // Emittable named types (object, unions) get their own class, so
      // IrTypeRef is correct for them.
      if (resolved is IrObject ||
          resolved is IrDiscriminatedUnion ||
          resolved is IrUntaggedUnion ||
          resolved is IrAnyOf) {
        return current; // keep the ref — these get their own emitted files
      }
      // For non-emittable types (IrEnum, IrList, IrMap, IrPrimitive, IrTypeRef),
      // resolve to the actual type.
      current = resolved;
    }
    // Apply nullability from the original ref if needed.
    if (nullable && !current.isNullable) {
      return _withNullable(current);
    }
    return current;
  }

  // ──────────────────────────────────────────────────────────────
  // Internal helpers
  // ──────────────────────────────────────────────────────────────

  IrType _lowerSchemaImpl(
    String? name,
    Map<String, dynamic> schema, {
    String? discriminatorProperty,
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
      return _lowerUntaggedUnion(name, flattened);
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
        // This is just a nullable wrapper — lower the single real type.
        final inner = nonNullVariants[0] as Map<String, dynamic>;
        final result = _lowerSchemaImpl(name, inner);
        return result.isNullable ? result : _withNullable(result);
      }
      return _lowerAnyOf(name, flattened);
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
        return _lowerMap(flattened);
      }
      // Object with no properties and no additionalProperties → Map<String, dynamic>.
      // This handles free-form objects like `type: object` with no further schema.
      if (!flattened.containsKey('properties') &&
          !flattened.containsKey('additionalProperties')) {
        return _lowerMap(flattened);
      }
      return _lowerObject(
        name,
        flattened,
        discriminatorProperty: discriminatorProperty,
      );
    }

    // Object-like map (additionalProperties only, no explicit type).
    if (flattened.containsKey('additionalProperties')) {
      return _lowerMap(flattened);
    }

    // Primitives.
    if (type != null) {
      return _lowerPrimitive(type, flattened);
    }

    // Fallback: treat as dynamic (map to Object via string).
    warnings.add(
      'Schema "${name ?? "(anonymous)"}" has no type — falling back to String',
    );
    return IrPrimitive(
      PrimitiveKind.string,
      description: description,
      isNullable: nullable,
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
      // Use lowerInlineSchema for items that need registration (objects,
      // enums, unions) so they get emitted as separate files.
      if (_looksLikeObject(itemsSchema) || _looksLikeNamedType(itemsSchema)) {
        itemsType = lowerInlineSchema(itemsSchema, nameHint: itemNameHint);
      } else {
        itemsType = _lowerSchemaImpl(itemNameHint, itemsSchema);
      }
    } else {
      itemsType = IrPrimitive(PrimitiveKind.string);
    }
    return IrList(itemsType, description: description, isNullable: nullable);
  }

  // ─── Map ──────────────────────────────────────────────────────

  IrType _lowerMap(Map<String, dynamic> schema) {
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);
    final addProps = schema['additionalProperties'];
    IrType valueType;
    if (addProps is Map<String, dynamic>) {
      // Use lowerInlineSchema so inline value types get registered.
      if (_looksLikeObject(addProps) || _looksLikeNamedType(addProps)) {
        valueType = lowerInlineSchema(addProps);
      } else {
        valueType = _lowerSchemaImpl(null, addProps);
      }
    } else {
      // additionalProperties: true or absent → Map<String, dynamic>
      valueType = IrPrimitive(PrimitiveKind.string);
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
        // true → accept anything (dynamic/String fallback)
        // false → nothing valid, but we still emit the field
        final fieldType = IrPrimitive(PrimitiveKind.string);
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
          // This is a discriminator field — emit as plain String.
          // Override the schema to remove the enum so it lowers as a primitive.
        } else {
          // Non-discriminator inline enum — generate a named enum.
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
        fieldType = _withNullable(fieldType);
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
          mapping[value] =
              (_looksLikeObject(refOrSchema) ||
                  _looksLikeNamedType(refOrSchema))
              ? lowerInlineSchema(refOrSchema)
              : _lowerSchemaImpl(null, refOrSchema);
        }
      }
    } else {
      // Infer mapping from oneOf entries.
      for (final variant in oneOf) {
        if (variant is Map<String, dynamic> && variant.containsKey(r'$ref')) {
          final rawRefName = _extractRefName(variant[r'$ref'] as String);
          final dartRefName =
              _nameMapping[rawRefName] ??
              sanitizeDartName(toPascalCase(rawRefName));
          mapping[dartRefName] = IrTypeRef(dartRefName);
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

  IrType _lowerUntaggedUnion(String? name, Map<String, dynamic> schema) {
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);
    final unionName = name ?? _uniqueTypeName('InlineUnion');

    final oneOf = schema['oneOf'] as List;
    final variants = <IrType>[];
    for (final variant in oneOf) {
      if (variant is Map<String, dynamic>) {
        // Use lowerInlineSchema for inline variants so they get registered
        // in the type registry and emitted as separate files.
        if (_looksLikeObject(variant) || _looksLikeNamedType(variant)) {
          variants.add(lowerInlineSchema(variant));
        } else {
          variants.add(_lowerSchemaImpl(null, variant));
        }
      }
    }

    return IrUntaggedUnion(
      unionName,
      variants,
      description: description,
      isNullable: nullable,
    );
  }

  // ─── AnyOf ────────────────────────────────────────────────────

  IrType _lowerAnyOf(String? name, Map<String, dynamic> schema) {
    final description = schema['description'] as String?;
    final nullable = _isNullable(schema);
    final anyOfName = name ?? _uniqueTypeName('InlineAnyOf');

    final anyOf = schema['anyOf'] as List;
    final variants = <IrType>[];
    for (final variant in anyOf) {
      if (variant is Map<String, dynamic>) {
        // Use lowerInlineSchema for inline variants so they get registered
        // in the type registry and emitted as separate files.
        if (_looksLikeObject(variant) || _looksLikeNamedType(variant)) {
          variants.add(lowerInlineSchema(variant));
        } else {
          variants.add(_lowerSchemaImpl(null, variant));
        }
      }
    }

    return IrAnyOf(
      anyOfName,
      variants,
      description: description,
      isNullable: nullable,
    );
  }

  // ─── Utilities ────────────────────────────────────────────────

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

  /// Return a copy of [type] with isNullable set to true.
  IrType _withNullable(IrType type) {
    return switch (type) {
      IrPrimitive t => IrPrimitive(
        t.kind,
        format: t.format,
        description: t.description,
        isNullable: true,
      ),
      IrEnum t => IrEnum(
        t.name,
        t.values,
        defaultValue: t.defaultValue,
        description: t.description,
        isNullable: true,
      ),
      IrList t => IrList(t.items, description: t.description, isNullable: true),
      IrMap t => IrMap(t.values, description: t.description, isNullable: true),
      IrObject t => IrObject(
        t.name,
        t.fields,
        requiredFields: t.requiredFields,
        description: t.description,
        isNullable: true,
      ),
      IrTypeRef t => IrTypeRef(
        t.name,
        description: t.description,
        isNullable: true,
      ),
      IrDiscriminatedUnion t => IrDiscriminatedUnion(
        t.name,
        t.discriminatorProperty,
        t.mapping,
        description: t.description,
        isNullable: true,
      ),
      IrUntaggedUnion t => IrUntaggedUnion(
        t.name,
        t.variants,
        description: t.description,
        isNullable: true,
      ),
      IrAnyOf t => IrAnyOf(
        t.name,
        t.variants,
        description: t.description,
        isNullable: true,
      ),
    };
  }

  static bool _listEquals<T>(List<T> a, List<T> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}
