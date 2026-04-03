import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

/// Resolves external `$ref` values by loading referenced files, registering
/// their schemas into `components/schemas`, and rewriting external refs to
/// local `#/components/schemas/Name` refs.
///
/// After inlining, all `$ref` values in the returned document are local
/// (starting with `#/`).
///
/// Throws [FormatException] if a circular external ref is detected.
/// Throws [FileSystemException] if a referenced file cannot be found.
class RefInliner {
  /// Creates an inliner rooted at [_baseDir].
  RefInliner(this._baseDir);

  /// The directory of the root spec file, used to resolve relative paths.
  final String _baseDir;

  /// Cache of parsed files to avoid re-reading the same file.
  final _fileCache = <String, Map<String, dynamic>>{};

  /// Schemas collected from external files, keyed by their local name.
  final _collectedSchemas = <String, Map<String, dynamic>>{};

  /// Maps external ref keys to their assigned local schema name.
  final _refToLocalName = <String, String>{};

  /// Tracks names to avoid collisions.
  final _usedNames = <String>{};

  /// Inline all external refs in [root], returning a new
  /// map with only local refs.
  Map<String, dynamic> inline(Map<String, dynamic> root) {
    // Pre-register existing schema names.
    final components = root['components'] as Map<String, dynamic>?;
    final existingSchemas =
        components?['schemas'] as Map<String, dynamic>? ?? <String, dynamic>{};

    // First pass: resolve components/schemas entries that are pure external
    // $ref wrappers in place, so they keep their original names.
    final resolvedSchemas = <String, dynamic>{};
    for (final entry in existingSchemas.entries) {
      final value = entry.value;
      if (value is Map<String, dynamic> &&
          value.length == 1 &&
          value[r'$ref'] is String &&
          !(value[r'$ref'] as String).startsWith('#/')) {
        // Resolve in place under the original name.
        final ref = value[r'$ref'] as String;
        final resolved = _resolveAndRegister(ref, _baseDir, {}, entry.key);
        resolvedSchemas[entry.key] = resolved;
      } else {
        resolvedSchemas[entry.key] = value;
      }
    }
    _usedNames.addAll(resolvedSchemas.keys);

    // Build a modified root with pre-resolved schemas and paths.
    final modifiedRoot = Map<String, dynamic>.from(root);
    if (components != null) {
      final modifiedComponents = Map<String, dynamic>.from(components);
      modifiedComponents['schemas'] = resolvedSchemas;
      modifiedRoot['components'] = modifiedComponents;
    }

    // Pre-resolve path items that are pure external $ref wrappers.
    final paths = root['paths'] as Map<String, dynamic>?;
    if (paths != null) {
      final resolvedPaths = <String, dynamic>{};
      for (final entry in paths.entries) {
        final value = entry.value;
        if (value is Map<String, dynamic> &&
            value.length == 1 &&
            value[r'$ref'] is String &&
            !(value[r'$ref'] as String).startsWith('#/')) {
          final ref = value[r'$ref'] as String;
          resolvedPaths[entry.key] = _inlineExternalRef(ref, _baseDir, {});
        } else {
          resolvedPaths[entry.key] = value;
        }
      }
      modifiedRoot['paths'] = resolvedPaths;
    }

    // Walk the rest of the tree.
    final result = _walkMap(modifiedRoot, _baseDir, {});

    // Merge any additional collected schemas (from refs outside components).
    if (_collectedSchemas.isNotEmpty) {
      final resultComponents =
          result.putIfAbsent('components', () => <String, dynamic>{})
              as Map<String, dynamic>;
      (resultComponents.putIfAbsent(
                'schemas',
                () => <String, dynamic>{},
              )
              as Map<String, dynamic>)
          .addAll(_collectedSchemas);
    }

    return result;
  }

  /// Resolve an external ref and register it under a specific name.
  /// Returns the resolved content directly (for inline replacement).
  Map<String, dynamic> _resolveAndRegister(
    String ref,
    String currentDir,
    Set<String> ancestors,
    String localName,
  ) {
    final (absolutePath, pointer) = _parseRef(ref, currentDir);
    final refKey = '$absolutePath${pointer != null ? '#$pointer' : ''}';

    if (ancestors.contains(refKey)) {
      throw FormatException(
        'Circular external \$ref detected: $ref (resolved to $refKey)',
      );
    }

    // Register the mapping.
    _refToLocalName[refKey] = localName;
    _usedNames.add(localName);

    // Load, resolve pointer, and recursively walk.
    final content = _loadAndResolve(absolutePath, pointer);
    final fileDir = p.dirname(absolutePath);
    return _walkMap(content, fileDir, {...ancestors, refKey});
  }

  Map<String, dynamic> _walkMap(
    Map<String, dynamic> map,
    String currentDir,
    Set<String> ancestors,
  ) {
    // If this map is a $ref to an external file, resolve it.
    final ref = map[r'$ref'];
    if (ref is String && !ref.startsWith('#/')) {
      return _resolveExternalRef(ref, currentDir, ancestors);
    }

    // Otherwise, recursively walk all values.
    final result = <String, dynamic>{};
    for (final entry in map.entries) {
      result[entry.key] = _walkValue(entry.value, currentDir, ancestors);
    }
    return result;
  }

  dynamic _walkValue(dynamic value, String currentDir, Set<String> ancestors) {
    if (value is Map<String, dynamic>) {
      return _walkMap(value, currentDir, ancestors);
    } else if (value is List) {
      return value.map((e) => _walkValue(e, currentDir, ancestors)).toList();
    }
    return value;
  }

  /// Inline an external `$ref` directly (for path items
  /// and other non-schema refs).
  Map<String, dynamic> _inlineExternalRef(
    String ref,
    String currentDir,
    Set<String> ancestors,
  ) {
    final (absolutePath, pointer) = _parseRef(ref, currentDir);
    final refKey = '$absolutePath${pointer != null ? '#$pointer' : ''}';

    if (ancestors.contains(refKey)) {
      throw FormatException(
        'Circular external \$ref detected: $ref (resolved to $refKey)',
      );
    }

    final resolved = _loadAndResolve(absolutePath, pointer);
    final fileDir = p.dirname(absolutePath);
    return _walkMap(resolved, fileDir, {...ancestors, refKey});
  }

  /// Resolve an external `$ref` encountered outside components/schemas.
  ///
  /// Registers the resolved schema in [_collectedSchemas] and returns a
  /// local `$ref` map pointing to `#/components/schemas/Name`.
  Map<String, dynamic> _resolveExternalRef(
    String ref,
    String currentDir,
    Set<String> ancestors,
  ) {
    final (absolutePath, pointer) = _parseRef(ref, currentDir);
    final refKey = '$absolutePath${pointer != null ? '#$pointer' : ''}';

    // If we've already resolved this ref, return the local ref.
    if (_refToLocalName.containsKey(refKey)) {
      return {r'$ref': '#/components/schemas/${_refToLocalName[refKey]}'};
    }

    // Detect circular refs.
    if (ancestors.contains(refKey)) {
      throw FormatException(
        'Circular external \$ref detected: $ref (resolved to $refKey)',
      );
    }

    // Load and resolve.
    final resolved = _loadAndResolve(absolutePath, pointer);

    // Derive a unique name.
    final baseName = _deriveSchemaName(pointer, ref);
    final localName = _uniqueName(baseName);

    // Register the mapping before recursing.
    _refToLocalName[refKey] = localName;

    // Recursively walk the resolved content.
    final fileDir = p.dirname(absolutePath);
    final inlined = _walkMap(resolved, fileDir, {...ancestors, refKey});

    // Store the schema.
    _collectedSchemas[localName] = inlined;

    return {r'$ref': '#/components/schemas/$localName'};
  }

  /// Parse a ref string into an absolute file path and optional JSON pointer.
  (String absolutePath, String? pointer) _parseRef(
    String ref,
    String currentDir,
  ) {
    final hashIndex = ref.indexOf('#');
    final String filePath;
    final String? pointer;
    if (hashIndex >= 0) {
      filePath = ref.substring(0, hashIndex);
      pointer = ref.substring(hashIndex + 1);
    } else {
      filePath = ref;
      pointer = null;
    }
    final absolutePath = p.normalize(p.join(currentDir, filePath));
    return (absolutePath, pointer);
  }

  /// Load a file and resolve a JSON pointer within it.
  Map<String, dynamic> _loadAndResolve(String absolutePath, String? pointer) {
    final fileContent = _loadFile(absolutePath);

    if (pointer != null && pointer.isNotEmpty) {
      final target = _resolvePointer(fileContent, pointer);
      if (target is Map<String, dynamic>) {
        return target;
      }
      throw FormatException(
        'External \$ref pointer "$pointer" in $absolutePath '
        'resolved to a non-object value.',
      );
    }

    return fileContent;
  }

  /// Derive a schema name from a JSON pointer or file path.
  String _deriveSchemaName(String? pointer, String ref) {
    if (pointer != null && pointer.isNotEmpty) {
      // Use the last segment of the pointer as the name.
      final segments = pointer.substring(1).split('/');
      final last = segments.last.replaceAll('~1', '/').replaceAll('~0', '~');
      return last;
    }
    // Fall back to the file name without extension.
    return p.basenameWithoutExtension(ref);
  }

  /// Generate a unique name, appending a suffix if needed.
  String _uniqueName(String baseName) {
    if (_usedNames.add(baseName)) return baseName;
    var i = 2;
    while (!_usedNames.add('$baseName$i')) {
      i++;
    }
    return '$baseName$i';
  }

  /// Load and parse a YAML or JSON file, with caching.
  Map<String, dynamic> _loadFile(String absolutePath) {
    if (_fileCache.containsKey(absolutePath)) {
      return _fileCache[absolutePath]!;
    }

    final file = File(absolutePath);
    if (!file.existsSync()) {
      throw FileSystemException('Referenced file not found', absolutePath);
    }

    final content = file.readAsStringSync();
    final ext = p.extension(absolutePath).toLowerCase();

    final dynamic parsed;
    if (ext == '.json') {
      parsed = json.decode(content);
    } else {
      parsed = _convertYamlNode(loadYaml(content));
    }

    if (parsed is! Map<String, dynamic>) {
      throw FormatException('Expected a mapping at the root of $absolutePath');
    }

    _fileCache[absolutePath] = parsed;
    return parsed;
  }

  /// Resolve a JSON pointer like `/components/schemas/Pet` within a map.
  ///
  /// Handles `~0` (escaped `~`) and `~1` (escaped `/`) per RFC 6901.
  dynamic _resolvePointer(Map<String, dynamic> root, String pointer) {
    if (!pointer.startsWith('/')) {
      throw FormatException('Invalid JSON pointer: $pointer');
    }
    final segments = pointer
        .substring(1)
        .split('/')
        .map((s) => s.replaceAll('~1', '/').replaceAll('~0', '~'))
        .toList();

    dynamic current = root;
    for (final segment in segments) {
      if (current is Map<String, dynamic>) {
        current = current[segment];
      } else {
        return null;
      }
    }
    return current;
  }

  /// Recursively convert [YamlMap] / [YamlList] into plain Dart collections.
  static dynamic _convertYamlNode(dynamic node) {
    if (node is YamlMap) {
      return node.map<String, dynamic>(
        (key, value) => MapEntry(key.toString(), _convertYamlNode(value)),
      );
    } else if (node is YamlList) {
      return node.map(_convertYamlNode).toList();
    }
    return node;
  }
}
