/// Flattens `allOf` compositions into merged schemas.
class AllOfFlattener {
  /// If [schema] has an `allOf` key, merge all sub-schemas into a single
  /// schema by unioning `properties` and `required` lists.
  ///
  /// If the `allOf` entry carries a `discriminator`, the schema is left as-is
  /// so downstream code can handle it as a union type.
  Map<String, dynamic> flatten(Map<String, dynamic> schema) {
    if (!schema.containsKey('allOf')) return Map<String, dynamic>.from(schema);

    // Don't flatten discriminated unions.
    if (schema.containsKey('discriminator')) {
      return Map<String, dynamic>.from(schema);
    }

    final allOf = schema['allOf'];
    if (allOf is! List) return Map<String, dynamic>.from(schema);

    // Check sub-schemas for a discriminator as well.
    for (final sub in allOf) {
      if (sub is Map<String, dynamic> && sub.containsKey('discriminator')) {
        return Map<String, dynamic>.from(schema);
      }
    }

    // Special case: single-entry allOf with a $ref or _resolvedRef is
    // unambiguously "this field is that type". Short-circuit to preserve the
    // ref identity instead of merging properties (which would make it look
    // like a full object schema and lose the type reference).
    if (allOf.length == 1) {
      final single = allOf[0];
      if (single is Map<String, dynamic> &&
          (single.containsKey(r'$ref') || single.containsKey('_resolvedRef'))) {
        final result = <String, dynamic>{};
        // Copy the ref key from the single allOf entry.
        if (single.containsKey(r'$ref')) {
          result[r'$ref'] = single[r'$ref'];
        } else {
          result['_resolvedRef'] = single['_resolvedRef'];
        }
        // Carry over outer keys (description, default, nullable, etc.)
        for (final entry in schema.entries) {
          if (entry.key == 'allOf') continue;
          result.putIfAbsent(entry.key, () => entry.value);
        }
        return result;
      }
    }

    final mergedProperties = <String, dynamic>{};
    final mergedRequired = <String>{};
    String? type;
    String? description;

    // Carry over top-level fields that aren't allOf.
    final result = <String, dynamic>{};
    for (final entry in schema.entries) {
      if (entry.key == 'allOf') continue;
      if (entry.key == 'properties' && entry.value is Map<String, dynamic>) {
        mergedProperties.addAll(entry.value as Map<String, dynamic>);
        continue;
      }
      if (entry.key == 'required' && entry.value is List) {
        mergedRequired.addAll((entry.value as List).cast<String>());
        continue;
      }
      result[entry.key] = entry.value;
    }

    for (final sub in allOf) {
      if (sub is! Map<String, dynamic>) continue;

      final props = sub['properties'];
      if (props is Map<String, dynamic>) {
        mergedProperties.addAll(props);
      }

      final req = sub['required'];
      if (req is List) {
        mergedRequired.addAll(req.cast<String>());
      }

      if (sub.containsKey('type')) {
        type = sub['type'] as String?;
      }

      if (sub.containsKey('description')) {
        description = sub['description'] as String?;
      }

      // Carry over any other keys from sub-schemas that aren't already set.
      for (final entry in sub.entries) {
        if (const {
          'properties',
          'required',
          'type',
          'description',
          'allOf',
        }.contains(entry.key)) {
          continue;
        }
        result.putIfAbsent(entry.key, () => entry.value);
      }
    }

    if (type != null) result['type'] = type;
    if (description != null) result['description'] = description;
    if (mergedProperties.isNotEmpty) result['properties'] = mergedProperties;
    if (mergedRequired.isNotEmpty) {
      result['required'] = mergedRequired.toList();
    }

    return result;
  }

  /// Apply [flatten] to every schema in [schemas].
  Map<String, Map<String, dynamic>> flattenAll(
    Map<String, Map<String, dynamic>> schemas,
  ) {
    return schemas.map((key, value) => MapEntry(key, flatten(value)));
  }
}
