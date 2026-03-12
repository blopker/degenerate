import '../ir/ir_types.dart';

/// Resolves [IrTypeRef] nodes within IR type trees.
///
/// After all schemas are lowered to IR types, some [IrTypeRef] nodes may
/// point to non-emittable types (lists, maps, primitives, extension types).
/// This resolver replaces those refs with the actual underlying type so
/// generated code uses concrete types instead of referencing type names
/// that have no emitted class.
///
/// Refs to emittable types (objects, unions) are kept as [IrTypeRef] since
/// those types get their own generated files.
class TypeRefResolver {
  final Map<String, IrType> _typeRegistry;

  /// Tracks types currently being resolved to prevent infinite recursion
  /// from circular references.
  final Set<String> _resolving = {};

  TypeRefResolver(this._typeRegistry);

  /// Resolve all [IrTypeRef] nodes within a type tree.
  IrType resolve(IrType type) => _resolveInType(type);

  /// Recursively resolve IrTypeRef nodes within a type tree.
  IrType _resolveInType(IrType type) {
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
      return _resolveInTypeImpl(type);
    } finally {
      if (key != null) _resolving.remove(key);
    }
  }

  IrType _resolveInTypeImpl(IrType type) {
    switch (type) {
      case IrObject():
        var changed = false;
        final newFields = type.fields.map((f) {
          var resolved = resolveRef(f.type);
          resolved = _resolveInType(resolved);
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
        final resolved = resolveRef(type.items);
        final resolvedDeep = _resolveInType(resolved);
        if (identical(resolvedDeep, type.items)) return type;
        return IrList(
          resolvedDeep,
          description: type.description,
          isNullable: type.isNullable,
        );
      case IrMap():
        final resolved = resolveRef(type.values);
        final resolvedDeep = _resolveInType(resolved);
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
          var resolved = resolveRef(entry.value);
          resolved = _resolveInType(resolved);
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
          var resolved = resolveRef(v);
          resolved = _resolveInType(resolved);
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
          var resolved = resolveRef(v);
          resolved = _resolveInType(resolved);
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

  /// If [type] is an [IrTypeRef] whose target in the registry is not an
  /// emittable named type (object, union), replace it with the actual
  /// resolved type.
  ///
  /// Follows chains of refs (e.g., TypeA → TypeB → IrPrimitive) until
  /// reaching a concrete type or a ref to an emittable type.
  IrType resolveRef(IrType type) {
    if (type is! IrTypeRef) return type;
    final nullable = type.isNullable;
    var current = type as IrType;
    // Follow ref chains up to a reasonable depth to avoid infinite loops.
    for (var depth = 0; depth < 20; depth++) {
      if (current is! IrTypeRef) break;
      final resolved = _typeRegistry[current.name];
      if (resolved == null) return current; // unknown ref - keep as-is
      // Emittable named types (object, unions) get their own class, so
      // IrTypeRef is correct for them.
      if (resolved is IrObject ||
          resolved is IrDiscriminatedUnion ||
          resolved is IrUntaggedUnion ||
          resolved is IrAnyOf) {
        return current; // keep the ref - these get their own emitted files
      }
      // Extension types are emittable but resolve like enums - the
      // IrExtensionType node itself carries the fromJson/toJson semantics.
      if (resolved is IrExtensionType) {
        if (nullable && !resolved.isNullable) {
          return resolved.copyAsNullable();
        }
        return resolved;
      }
      // For non-emittable types (IrEnum, IrList, IrMap, IrPrimitive, IrTypeRef),
      // resolve to the actual type.
      current = resolved;
    }
    // Apply nullability from the original ref if needed.
    if (nullable && !current.isNullable) {
      return current.copyAsNullable();
    }
    return current;
  }

  /// Recursively resolve IrTypeRef nodes within list items, map values, etc.
  IrType resolveDeep(IrType type) {
    switch (type) {
      case IrList():
        final resolvedItems = resolveRef(type.items);
        final deepItems = resolveDeep(resolvedItems);
        if (identical(deepItems, type.items)) return type;
        return IrList(
          deepItems,
          description: type.description,
          isNullable: type.isNullable,
        );
      case IrMap():
        final resolvedValues = resolveRef(type.values);
        final deepValues = resolveDeep(resolvedValues);
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
}
