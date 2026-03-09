import '../parser/openapi_document.dart';

/// Walks a schema tree and resolves all `$ref` pointers inline.
class RefResolver {
  final OpenApiDocument document;

  RefResolver(this.document);

  /// Resolve all `$ref` occurrences in [schema], returning a new map with refs
  /// inlined.
  ///
  /// [visited] tracks refs currently being resolved to detect cycles. When a
  /// cycle is detected the resolver leaves a marker
  /// `{'_cycleRef': 'SchemaName'}` instead of recursing infinitely.
  Map<String, dynamic> resolveSchema(
    Map<String, dynamic> schema, {
    Set<String>? visited,
  }) {
    visited ??= <String>{};
    return _resolve(schema, visited) as Map<String, dynamic>;
  }

  /// Resolve every schema under `components.schemas` and return the resulting
  /// map keyed by schema name.
  Map<String, Map<String, dynamic>> resolveAllSchemas() {
    final schemas = document.schemas;
    final result = <String, Map<String, dynamic>>{};
    for (final entry in schemas.entries) {
      if (entry.value is Map<String, dynamic>) {
        result[entry.key] = resolveSchema(entry.value as Map<String, dynamic>);
      }
    }
    return result;
  }

  /// Internal recursive resolver.
  dynamic _resolve(dynamic node, Set<String> visited) {
    if (node is Map<String, dynamic>) {
      // If this node is a $ref, resolve it.
      if (node.containsKey(r'$ref')) {
        final ref = node[r'$ref'] as String;
        final refName = _refName(ref);

        // Cycle detection.
        if (visited.contains(ref)) {
          return <String, dynamic>{'_cycleRef': refName};
        }

        final resolved = document.resolveRef(ref);
        if (resolved == null) {
          // Unresolvable ref — return as-is.
          return Map<String, dynamic>.from(node);
        }

        if (resolved is Map<String, dynamic>) {
          final newVisited = {...visited, ref};
          final resolvedMap =
              _resolve(resolved, newVisited) as Map<String, dynamic>;
          // Preserve original $ref name so downstream code knows this was a reference.
          return <String, dynamic>{'_resolvedRef': refName, ...resolvedMap};
        }

        return resolved;
      }

      // Otherwise walk every value in the map.
      return <String, dynamic>{
        for (final entry in node.entries)
          entry.key: _resolve(entry.value, visited),
      };
    }

    if (node is List) {
      return [for (final item in node) _resolve(item, visited)];
    }

    return node;
  }

  /// Extract a human-readable name from a `$ref` pointer.
  /// e.g. `#/components/schemas/Pet` → `Pet`.
  static String _refName(String ref) {
    final segments = ref.split('/');
    return segments.last;
  }
}
