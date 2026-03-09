import 'dart:convert';

import 'package:yaml/yaml.dart';

/// Wraps a parsed OpenAPI spec providing typed accessors and ref resolution.
class OpenApiDocument {
  final Map<String, dynamic> root;

  OpenApiDocument(this.root);

  /// Parse an OpenAPI spec from a YAML string.
  factory OpenApiDocument.parseYaml(String content) {
    final yamlDoc = loadYaml(content);
    final map = _convertYamlNode(yamlDoc);
    if (map is! Map<String, dynamic>) {
      throw FormatException('Expected a YAML mapping at the root');
    }
    return OpenApiDocument(map);
  }

  /// Parse an OpenAPI spec from a JSON string.
  factory OpenApiDocument.parseJson(String content) {
    final decoded = json.decode(content);
    if (decoded is! Map<String, dynamic>) {
      throw FormatException('Expected a JSON object at the root');
    }
    return OpenApiDocument(decoded);
  }

  /// The `openapi` version string (e.g. "3.0.0").
  String get version => root['openapi'] as String? ?? '';

  /// The `info.title` field.
  String get title {
    final info = root['info'] as Map<String, dynamic>?;
    return info?['title'] as String? ?? '';
  }

  /// `components.schemas` or an empty map if missing.
  Map<String, dynamic> get schemas {
    final components = root['components'] as Map<String, dynamic>?;
    if (components == null) return <String, dynamic>{};
    final schemas = components['schemas'] as Map<String, dynamic>?;
    return schemas ?? <String, dynamic>{};
  }

  /// `paths` or an empty map if missing.
  Map<String, dynamic> get paths {
    final p = root['paths'] as Map<String, dynamic>?;
    return p ?? <String, dynamic>{};
  }

  /// `servers` list, each entry as a Map.
  List<Map<String, dynamic>> get servers {
    final s = root['servers'];
    if (s is! List) return [];
    return s.cast<Map<String, dynamic>>();
  }

  /// Resolve a JSON pointer reference like `#/components/schemas/Pet`.
  ///
  /// Returns `null` if the path cannot be resolved.
  dynamic resolveRef(String ref) {
    if (!ref.startsWith('#/')) return null;
    final segments = ref.substring(2).split('/');
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
