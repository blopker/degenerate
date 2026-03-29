/// Name canonicalization utilities for the dartgen pipeline.
///
/// Handles conversion of OpenAPI identifiers into valid, idiomatic Dart names.
library;

/// All Dart reserved words and built-in identifiers that must be escaped.
const dartReservedWords = <String>{
  // Reserved words
  'assert',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'default',
  'do',
  'else',
  'enum',
  'extends',
  'false',
  'final',
  'finally',
  'for',
  'if',
  'in',
  'is',
  'new',
  'null',
  'rethrow',
  'return',
  'super',
  'switch',
  'this',
  'throw',
  'true',
  'try',
  'var',
  'void',
  'while',
  'with',
  // Built-in identifiers
  'abstract',
  'as',
  'covariant',
  'deferred',
  'dynamic',
  'export',
  'extension',
  'external',
  'factory',
  'Function',
  'get',
  'implements',
  'import',
  'interface',
  'late',
  'library',
  'mixin',
  'operator',
  'part',
  'required',
  'set',
  'static',
  'typedef',
  'yield',
  // Context keywords
  'async',
  'await',
  'hide',
  'of',
  'on',
  'show',
  'sync',
};

/// Dart core type names that would shadow `dart:core` types if used as
/// generated class/enum names. When a schema name collides, we suffix it.
const dartCoreTypeNames = <String>{
  'Error',
  'Exception',
  'Type',
  'Object',
  'Function',
  'Future',
  'Stream',
  'List',
  'Map',
  'Set',
  'String',
  'int',
  'double',
  'bool',
  'num',
  'dynamic',
  'void',
  'Null',
  'Never',
};

/// Names that would shadow identifiers used inside generated enum/class bodies.
///
/// These include constructor parameters (`json`, `value`), static members
/// (`values`, `index`, `name`), and inherited Object members that we override
/// (`hashCode`, `toString`, `runtimeType`, `noSuchMethod`, `identical`, `override`).
const enumReservedNames = <String>{
  'json',
  'value',
  'values',
  'index',
  'name',
  'identical',
  'other',
  'hashCode',
  'toString',
  'runtimeType',
  'noSuchMethod',
  'override',
};

/// Object members that generated model classes override (toString, hashCode,
/// operator ==). A field with one of these names would conflict.
const objectMemberNames = <String>{
  'toString',
  'hashCode',
  'runtimeType',
  'noSuchMethod',
};

/// Sanitize a field/variable name: handles reserved words, dart:core type
/// name collisions, and Object member conflicts.
/// Uses `$` prefix for consistency with [sanitizeDartName].
String sanitizeFieldName(String name) {
  name = sanitizeDartName(name);
  if (dartCoreTypeNames.contains(name) || objectMemberNames.contains(name)) {
    name = '\$$name';
  }
  return name;
}

// Pre-compiled regexps for hot naming paths.
final _leadingPlusDigit = RegExp(r'^\+(\d)');
final _leadingMinusDigit = RegExp(r'^-(\d)');
final _leadingTrailingSeparators = RegExp(r"^[\s_\-./']+'|[\s_\-./']+$");
final _segmentSplitter = RegExp(r"[_\-.\s/']+");
final _versionSegment = RegExp(r'^v\d+$');
final _invalidIdentChars = RegExp(r'[^a-zA-Z0-9_$]');
final _startsWithDigit = RegExp(r'^[0-9]');
final _pathTemplateParam = RegExp(r'\{[^}]*\}');
final _trailingSeparators = RegExp(r'[_\-.\s]+$');

/// Splits an identifier into word segments.
///
/// Handles:
/// - Underscore/hyphen/dot/space separators
/// - camelCase boundaries (lowercase→uppercase)
/// - Acronym boundaries (multiple uppercase followed by lowercase, e.g. HTTPSConnection → HTTPS, Connection)
/// - Strips path prefixes and version segments (e.g. v1, v2, api)
List<String> _splitWords(String input) {
  // Replace leading +/- before digits with words.
  // Prevents collisions like +1 and -1 both becoming $1.
  var preprocessed = input
      .replaceAllMapped(_leadingPlusDigit, (m) => 'plus${m[1]}')
      .replaceAllMapped(_leadingMinusDigit, (m) => 'minus${m[1]}');
  // Strip leading/trailing separators
  final cleaned = preprocessed.replaceAll(_leadingTrailingSeparators, '');
  if (cleaned.isEmpty) return [];

  final words = <String>[];

  // First, split on explicit separators (underscore, hyphen, dot, space, slash, apostrophe)
  final segments = cleaned.split(_segmentSplitter);

  for (final segment in segments) {
    if (segment.isEmpty) continue;

    // Build a list of character indices where new words start
    final breaks = <int>[0];

    for (var i = 1; i < segment.length; i++) {
      final curr = segment[i];
      final prev = segment[i - 1];
      final currIsUpper = _isUpperCase(curr);
      final prevIsUpper = _isUpperCase(prev);

      if (currIsUpper && !prevIsUpper) {
        // camelCase boundary: aB → a | B
        breaks.add(i);
      } else if (currIsUpper && prevIsUpper && i + 1 < segment.length) {
        final next = segment[i + 1];
        if (!_isUpperCase(next) && _isLetter(next)) {
          // Acronym end: ABc → A | Bc (but we want HTTPS|Connection)
          // At position of 'C' in HTTPSConnection: prev='S' (upper), curr='C' (upper), next='o' (lower)
          // We break before curr
          breaks.add(i);
        }
      }
    }

    // Extract words based on break positions
    for (var i = 0; i < breaks.length; i++) {
      final start = breaks[i];
      final end = i + 1 < breaks.length ? breaks[i + 1] : segment.length;
      words.add(segment.substring(start, end));
    }
  }

  return words;
}

bool _isUpperCase(String c) => c == c.toUpperCase() && c != c.toLowerCase();

bool _isLetter(String c) => c.toLowerCase() != c.toUpperCase();

/// Returns true if [word] looks like a version segment (e.g. v1, v2, api).
bool _isVersionOrPathSegment(String word) {
  final lower = word.toLowerCase();
  if (lower == 'api') return true;
  if (_versionSegment.hasMatch(lower)) return true;
  return false;
}

/// Strips path prefixes and version segments from a list of words.
///
/// For type names like `PetStore_api_v2_Pet`, we want to extract just the
/// meaningful final segments. We strip known prefixes (api, version segments)
/// but keep them if stripping would leave nothing.
List<String> _stripPrefixes(List<String> words) {
  if (words.isEmpty) return words;

  // Find the last meaningful segment(s) by removing leading version/api words
  // Also check from the end - for patterns like PetStore_api_v2_Pet,
  // we want to find the last contiguous non-prefix segment(s)
  // Strategy: walk from end, skip version/api segments in the middle
  final meaningful = <String>[];
  var foundMeaningful = false;
  for (var i = words.length - 1; i >= 0; i--) {
    if (_isVersionOrPathSegment(words[i])) {
      if (foundMeaningful) break;
      continue;
    }
    foundMeaningful = true;
    meaningful.insert(0, words[i]);
  }

  if (meaningful.isEmpty) {
    // All words were version/prefix segments; keep them all
    return words;
  }

  return meaningful;
}

/// Converts [input] to PascalCase. Used for type names.
///
/// Examples:
/// - `pet_store` → `PetStore`
/// - `PetStore_api_v2_Pet` → `Pet`
/// - `__my__weird__name__` → `MyWeirdName`
/// - `HTTPSConnection` → `HttpsConnection`
String toPascalCase(String input) {
  if (input.isEmpty) return input;
  var words = _splitWords(input);
  words = _stripPrefixes(words);
  if (words.isEmpty) return input;

  return words.map((w) {
    if (w.isEmpty) return w;
    return w[0].toUpperCase() + w.substring(1).toLowerCase();
  }).join();
}

/// Converts [input] to camelCase. Used for method names and field names.
///
/// Examples:
/// - `pet_store` → `petStore`
/// - `__my__weird__name__` → `myWeirdName`
/// - `HTTPSConnection` → `httpsConnection`
String toCamelCase(String input) {
  if (input.isEmpty) return input;
  final words = _splitWords(input);
  if (words.isEmpty) return input;

  return words.indexed.map((entry) {
    final (i, w) = entry;
    if (w.isEmpty) return w;
    if (i == 0) return w.toLowerCase();
    return w[0].toUpperCase() + w.substring(1).toLowerCase();
  }).join();
}

/// Sanitizes [input] to be a valid Dart identifier.
///
/// - Prefixes with `\$` if the result is a Dart reserved word.
/// - Prefixes with `\$` if the result starts with a digit.
/// - Removes characters that are not alphanumeric or underscore.
String sanitizeDartName(String input) {
  if (input.isEmpty) return r'$empty';

  // Transliterate accented Latin characters to ASCII before stripping.
  var result = _transliterateToAscii(input);

  // Remove characters that are not valid in Dart identifiers
  result = result.replaceAll(_invalidIdentChars, '');

  if (result.isEmpty) return r'$empty';

  // Prefix with $ if starts with a digit
  if (_startsWithDigit.hasMatch(result)) {
    result = '\$$result';
  }

  // Prefix with $ if it's a reserved word
  if (dartReservedWords.contains(result)) {
    result = '\$$result';
  }

  return result;
}

/// Returns a unique name by appending a numeric suffix if [name] already
/// exists in [existing].
///
/// Tries `name`, then `name2`, `name3`, etc.
String deduplicateName(String name, Set<String> existing) {
  if (!existing.contains(name)) return name;

  for (var i = 2; ; i++) {
    final candidate = '$name$i';
    if (!existing.contains(candidate)) return candidate;
  }
}

/// Converts an OpenAPI operationId to a camelCase Dart method name.
///
/// Strips path prefixes and version segments, then converts to camelCase.
///
/// Examples:
/// - `get_/pets/{petId}` → `getPet`
/// - `listPets` → `listPets`
String operationMethodName(String operationId) {
  if (operationId.isEmpty) return operationId;

  // Remove path template parameters like {petId}
  var cleaned = operationId.replaceAll(_pathTemplateParam, '');

  // Remove leading HTTP method patterns followed by separators or slashes
  // but keep the method word itself as part of the name
  // Replace slashes with underscores for splitting
  cleaned = cleaned.replaceAll('/', '_');

  // Clean up any trailing separators
  cleaned = cleaned.replaceAll(_trailingSeparators, '');

  // Deduplicate consecutive repeated multi-word segments.
  // e.g. "mobile_api_mobile_api_get_spaces" → "mobile_api_get_spaces"
  final segments = cleaned
      .split(_segmentSplitter)
      .where((s) => s.isNotEmpty)
      .toList();
  final deduped = <String>[];
  var i = 0;
  while (i < segments.length) {
    deduped.add(segments[i]);
    // Try to skip a repeated run of length `len` starting at i+1
    var skipped = false;
    for (
      var len = 1;
      len <= deduped.length && i + len < segments.length;
      len++
    ) {
      var match = true;
      for (var j = 0; j < len; j++) {
        if (i + 1 + j >= segments.length ||
            deduped[deduped.length - len + j].toLowerCase() !=
                segments[i + 1 + j].toLowerCase()) {
          match = false;
          break;
        }
      }
      if (match) {
        i += len + 1; // skip the duplicate
        skipped = true;
        break;
      }
    }
    if (!skipped) i++;
  }

  return toCamelCase(deduped.join('_'));
}

/// Transliterate accented Latin characters to their ASCII equivalents.
/// Characters outside Latin-1 Supplement without a mapping are left as-is
/// (they'll be stripped later by [_invalidIdentChars]).
String _transliterateToAscii(String input) {
  // Fast path: skip if all ASCII.
  if (input.runes.every((r) => r < 128)) return input;
  final buf = StringBuffer();
  for (final rune in input.runes) {
    if (rune < 128) {
      buf.writeCharCode(rune);
    } else {
      buf.write(_latinToAscii[rune] ?? String.fromCharCode(rune));
    }
  }
  return buf.toString();
}

/// Latin-1 Supplement (U+00C0–U+00FF) to ASCII mappings.
const _latinToAscii = <int, String>{
  0xC0: 'A', 0xC1: 'A', 0xC2: 'A', 0xC3: 'A', 0xC4: 'A', 0xC5: 'A',
  0xC6: 'AE', 0xC7: 'C',
  0xC8: 'E', 0xC9: 'E', 0xCA: 'E', 0xCB: 'E',
  0xCC: 'I', 0xCD: 'I', 0xCE: 'I', 0xCF: 'I',
  0xD0: 'D', 0xD1: 'N',
  0xD2: 'O', 0xD3: 'O', 0xD4: 'O', 0xD5: 'O', 0xD6: 'O', 0xD8: 'O',
  0xD9: 'U', 0xDA: 'U', 0xDB: 'U', 0xDC: 'U',
  0xDD: 'Y', 0xDF: 'ss',
  0xE0: 'a', 0xE1: 'a', 0xE2: 'a', 0xE3: 'a', 0xE4: 'a', 0xE5: 'a',
  0xE6: 'ae', 0xE7: 'c',
  0xE8: 'e', 0xE9: 'e', 0xEA: 'e', 0xEB: 'e',
  0xEC: 'i', 0xED: 'i', 0xEE: 'i', 0xEF: 'i',
  0xF0: 'd', 0xF1: 'n',
  0xF2: 'o', 0xF3: 'o', 0xF4: 'o', 0xF5: 'o', 0xF6: 'o', 0xF8: 'o',
  0xF9: 'u', 0xFA: 'u', 0xFB: 'u', 0xFC: 'u',
  0xFD: 'y', 0xFF: 'y',
};
