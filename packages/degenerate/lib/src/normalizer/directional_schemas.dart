import 'package:degenerate/src/parser/openapi_document.dart';

enum _Direction { request, response }

/// Projects schemas only where request and response property visibility differs.
/// Examples and default values are data, so they are never traversed as schemas.
class DirectionalSchemas {
  DirectionalSchemas(this.document)
    : _schemas = document.schemas,
      _names = document.schemas.keys.toSet();

  final OpenApiDocument document;
  final Map<String, dynamic> _schemas;
  final Set<String> _names;
  final _projected = <(_Direction, String), String>{};
  final _clones = <String, dynamic>{};
  final _affected = <_Direction, Set<String>>{};

  OpenApiDocument project() {
    for (final direction in _Direction.values) {
      final affected = <String>{};
      final dependencies = <String, Set<String>>{};
      for (final entry in _schemas.entries) {
        final refs = <String>{};
        void inspect(Object? schema) {
          if (schema is! Map<String, dynamic>) return;
          final ref = _schemaName(schema[r'$ref']);
          if (ref != null) refs.add(ref);
          final properties = schema['properties'];
          if (properties is Map<String, dynamic> &&
              properties.values.any((p) => _excluded(p, direction))) {
            affected.add(entry.key);
          }
          _children(schema).forEach(inspect);
        }

        inspect(entry.value);
        dependencies[entry.key] = refs;
      }
      var changed = true;
      while (changed) {
        changed = false;
        for (final entry in dependencies.entries) {
          if (!affected.contains(entry.key) &&
              entry.value.any(affected.contains)) {
            changed = affected.add(entry.key) || changed;
          }
        }
      }
      _affected[direction] = affected;
    }
    final paths = document.paths.map(
      (key, value) => MapEntry(key, _pathItem(value)),
    );
    final components =
        document.root['components'] as Map<String, dynamic>? ?? {};
    return OpenApiDocument({
      ...document.root,
      'paths': paths,
      'components': {
        ...components,
        'schemas': {..._schemas, ..._clones},
      },
    });
  }

  static const _singleSchemas = {
    'items',
    'additionalProperties',
    'unevaluatedProperties',
    'contains',
    'propertyNames',
    'not',
    'if',
    'then',
    'else',
    'contentSchema',
  };
  static const _schemaLists = {'allOf', 'anyOf', 'oneOf', 'prefixItems'};
  static const _schemaMaps = {
    'properties',
    'patternProperties',
    r'$defs',
    'definitions',
    'dependentSchemas',
  };

  Iterable<Object?> _children(Map<String, dynamic> schema) sync* {
    for (final key in _singleSchemas) {
      if (schema.containsKey(key)) yield schema[key];
    }
    for (final key in _schemaLists) {
      if (schema[key] case final List<dynamic> items) yield* items;
    }
    for (final key in _schemaMaps) {
      if (schema[key] case final Map<String, dynamic> items) {
        yield* items.values;
      }
    }
  }

  String? _schemaName(Object? ref) {
    if (ref is! String || !ref.startsWith('#/components/schemas/')) return null;
    final suffix = ref.substring('#/components/schemas/'.length);
    if (suffix.contains('/')) return null;
    var decoded = suffix;
    try {
      decoded = Uri.decodeComponent(suffix);
    } on Object catch (error) {
      if (error is! ArgumentError) rethrow;
      // Non-conforming references can contain literal percent characters.
      // Keep their schema identity so generation can still proceed.
    }
    return decoded.replaceAll('~1', '/').replaceAll('~0', '~');
  }

  String _ref(String name) =>
      '#/components/schemas/${name.replaceAll('~', '~0').replaceAll('/', '~1')}';

  bool _excluded(Object? schema, _Direction direction, [Set<String>? seen]) {
    if (schema is! Map<String, dynamic>) return false;
    final keyword = direction == _Direction.request ? 'readOnly' : 'writeOnly';
    if (schema.containsKey(keyword)) return schema[keyword] == true;
    final ref = schema[r'$ref'];
    if (ref is String && (seen ??= {}).add(ref)) {
      if (_excluded(document.resolveRef(ref), direction, seen)) return true;
    }
    if (schema['allOf'] case final List<dynamic> parts) {
      return parts.any((part) => _excluded(part, direction, {...?seen}));
    }
    return false;
  }

  Set<String> _excludedNames(
    Object? schema,
    _Direction direction, [
    Set<String>? seen,
  ]) {
    if (schema is! Map<String, dynamic>) return {};
    final names = <String>{};
    if (schema['properties'] case final Map<String, dynamic> properties) {
      for (final entry in properties.entries) {
        if (_excluded(entry.value, direction)) names.add(entry.key);
      }
    }
    if (schema[r'$ref'] case final String ref) {
      if ((seen ??= {}).add(ref)) {
        names.addAll(_excludedNames(document.resolveRef(ref), direction, seen));
      }
    }
    if (schema['allOf'] case final List<dynamic> parts) {
      for (final part in parts) {
        names.addAll(_excludedNames(part, direction, seen));
      }
    }
    return names;
  }

  Object? _rewriteRef(Object? ref, _Direction direction) {
    final name = ref is String && _schemas.containsKey(ref)
        ? ref
        : _schemaName(ref);
    if (name == null || !_affected[direction]!.contains(name)) return ref;
    final key = (direction, name);
    final allocated = _projected[key];
    if (allocated != null) return _ref(allocated);
    final base =
        '$name${direction == _Direction.request ? 'Request' : 'Response'}';
    var projected = base;
    for (var i = 2; !_names.add(projected); i++) {
      projected = '$base$i';
    }
    // Allocate before descending so recursive references point to this clone.
    _projected[key] = projected;
    _clones[projected] = _schema(_schemas[name], direction);
    return _ref(projected);
  }

  Object? _schema(
    Object? value,
    _Direction direction, {
    Set<String> inherited = const {},
  }) {
    if (value is! Map<String, dynamic>) return value;
    final result = <String, dynamic>{...value};
    final excluded = {...inherited, ..._excludedNames(value, direction)};
    if (value.containsKey(r'$ref')) {
      result[r'$ref'] = _rewriteRef(value[r'$ref'], direction);
    }
    if (value['required'] case final List<dynamic> required) {
      result['required'] = required
          .where((name) => !excluded.contains(name))
          .toList();
    }
    for (final key in _singleSchemas) {
      if (value.containsKey(key)) result[key] = _schema(value[key], direction);
    }
    for (final key in _schemaLists) {
      if (value[key] case final List<dynamic> parts) {
        result[key] = parts
            .map(
              (part) => _schema(
                part,
                direction,
                inherited: key == 'allOf' ? excluded : const {},
              ),
            )
            .toList();
      }
    }
    for (final key in _schemaMaps) {
      if (value[key] case final Map<String, dynamic> properties) {
        result[key] = <String, dynamic>{
          for (final entry in properties.entries)
            if (key != 'properties' || !excluded.contains(entry.key))
              entry.key: _schema(entry.value, direction),
        };
      }
    }
    if (value['discriminator'] case final Map<String, dynamic> discriminator) {
      final mapping = <String, dynamic>{};
      final variants = value['oneOf'] ?? value['anyOf'];
      if (variants is List) {
        for (final variant in variants.whereType<Map<String, dynamic>>()) {
          final ref = variant[r'$ref'];
          final name = _schemaName(ref);
          if (name == null) continue;
          final keys = _discriminatorKeys(
            _schemas[name],
            discriminator['propertyName'] as String?,
          );
          for (final key in keys.isEmpty ? [name] : keys) {
            mapping[key] = _rewriteRef(ref, direction);
          }
        }
      }
      if (discriminator['mapping'] case final Map<String, dynamic> explicit) {
        for (final entry in explicit.entries) {
          mapping[entry.key] = _rewriteRef(entry.value, direction);
        }
      }
      result['discriminator'] = {
        ...discriminator,
        if (mapping.isNotEmpty) 'mapping': mapping,
      };
    }
    return result;
  }

  List<String> _discriminatorKeys(
    Object? schema,
    String? property, [
    Set<String>? seen,
  ]) {
    if (schema is! Map<String, dynamic> || property == null) return [];
    final properties = schema['properties'];
    if (properties is Map<String, dynamic> &&
        properties[property] is Map<String, dynamic>) {
      final field = properties[property] as Map<String, dynamic>;
      if (field['const'] case final String value) return [value];
      if (field['enum'] case final List<dynamic> values) {
        return values.whereType<String>().toList();
      }
    }
    if (schema[r'$ref'] case final String ref) {
      if ((seen ??= {}).add(ref)) {
        return _discriminatorKeys(document.resolveRef(ref), property, seen);
      }
    }
    if (schema['allOf'] case final List<dynamic> parts) {
      for (final part in parts) {
        final keys = _discriminatorKeys(part, property, seen);
        if (keys.isNotEmpty) return keys;
      }
    }
    return [];
  }

  Map<String, dynamic> _resolved(Object? value) {
    if (value is! Map<String, dynamic>) return {};
    var result = value;
    final seen = <String>{};
    while (true) {
      final ref = result[r'$ref'];
      if (ref is! String) break;
      if (!seen.add(ref)) break;
      final target = document.resolveRef(ref);
      if (target is! Map<String, dynamic>) break;
      final siblings = {...result}..remove(r'$ref');
      result = {...target, ...siblings};
    }
    return result;
  }

  Map<String, dynamic> _content(Object? value, _Direction direction) =>
      _resolved(value).map((key, item) {
        final media = _resolved(item);
        return MapEntry(key, {
          ...media,
          if (media.containsKey('schema'))
            'schema': _schema(media['schema'], direction),
          if (media.containsKey('itemSchema'))
            'itemSchema': _schema(media['itemSchema'], direction),
        });
      });

  Map<String, dynamic> _parameter(Object? value, _Direction direction) {
    final parameter = _resolved(value);
    return {
      ...parameter,
      if (parameter.containsKey('schema'))
        'schema': _schema(parameter['schema'], direction),
      if (parameter.containsKey('content'))
        'content': _content(parameter['content'], direction),
    };
  }

  Map<String, dynamic> _pathItem(Object? value) {
    final path = _resolved(value);
    return path.map((key, item) {
      if (key == 'parameters' && item is List) {
        return MapEntry(
          key,
          item.map((p) => _parameter(p, _Direction.request)).toList(),
        );
      }
      if (key == 'additionalOperations' && item is Map<String, dynamic>) {
        return MapEntry(
          key,
          item.map(
            (method, operation) => MapEntry(method, _operation(operation)),
          ),
        );
      }
      if (const {
        'get',
        'put',
        'post',
        'delete',
        'options',
        'head',
        'patch',
        'trace',
        'query',
      }.contains(key)) {
        return MapEntry(key, _operation(item));
      }
      return MapEntry(key, item);
    });
  }

  Map<String, dynamic> _operation(Object? value) {
    final operation = _resolved(value);
    return {
      ...operation,
      if (operation['parameters'] case final List<dynamic> parameters)
        'parameters': parameters
            .map((p) => _parameter(p, _Direction.request))
            .toList(),
      if (operation.containsKey('requestBody'))
        'requestBody': _parameter(operation['requestBody'], _Direction.request),
      if (operation['responses'] case final Map<String, dynamic> responses)
        'responses': responses.map((key, value) {
          final response = _parameter(value, _Direction.response);
          if (response['headers'] case final Map<String, dynamic> headers) {
            response['headers'] = headers.map(
              (k, v) => MapEntry(k, _parameter(v, _Direction.response)),
            );
          }
          return MapEntry(key, response);
        }),
    };
  }
}
