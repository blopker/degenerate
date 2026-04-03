import 'package:degenerate/src/lowering/ir_mapper.dart' show IrMapper;

import 'package:degenerate/src/naming.dart';

/// Result of normalizing OpenAPI schemas before IR mapping.
///
/// Contains all the metadata computed during the pre-scan phase:
/// name mappings, discriminator properties, and the set of allocated names.
/// This context is passed to [IrMapper] so it can perform pure schema→IR
/// translation without worrying about name conflicts or discriminator
/// detection.
class NormalizationContext {
  /// Creates a normalization context.
  NormalizationContext({
    required this.nameMapping,
    required this.discriminatorProperties,
    required this.usedNames,
    List<String>? warnings,
  }) : warnings = warnings ?? [];

  /// Maps original OpenAPI schema name → Dart type name (after renaming).
  final Map<String, String> nameMapping;

  /// Maps schema name → discriminator property name for schemas that
  /// participate in a discriminated union.
  final Map<String, String> discriminatorProperties;

  /// Set of all allocated type names (for deduplication of inline types).
  final Set<String> usedNames;

  /// Warnings collected during normalization.
  final List<String> warnings;
}

/// Pre-scans OpenAPI schemas to extract metadata needed for IR mapping.
///
/// This is the first phase of the lowering pipeline. It:
/// 1. Detects discriminated unions and records which schemas have
///    discriminator properties (so those fields emit as plain String).
/// 2. Pre-computes all name mappings so `$ref` resolution finds the
///    correct Dart name for any schema regardless of declaration order.
class SchemaNormalizer {
  /// Normalize all named schemas and return a [NormalizationContext].
  NormalizationContext normalize(Map<String, dynamic> schemas) {
    final usedNames = <String>{};
    final nameMapping = <String, String>{};
    final discriminatorProperties = <String, String>{};

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
              discriminatorProperties[refName] = propName;
            }
          }
        } else {
          final oneOf = schema['oneOf'] as List;
          for (final variant in oneOf) {
            if (variant is Map<String, dynamic> &&
                variant.containsKey(r'$ref')) {
              final refName = (variant[r'$ref'] as String).split('/').last;
              discriminatorProperties[refName] = propName;
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
      final dartName = _uniqueTypeName(entry.key, usedNames);
      nameMapping[entry.key] = dartName;
    }

    return NormalizationContext(
      nameMapping: nameMapping,
      discriminatorProperties: discriminatorProperties,
      usedNames: usedNames,
    );
  }

  static String _uniqueTypeName(String rawName, Set<String> usedNames) {
    final pascal = toPascalCase(rawName);
    final sanitized = sanitizeDartName(pascal);
    final candidate = dartCoreTypeNames.contains(sanitized)
        ? '${sanitized}Model'
        : sanitized;
    final unique = deduplicateName(candidate, usedNames);
    usedNames.add(unique);
    return unique;
  }
}
