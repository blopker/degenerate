import 'package:test/test.dart';

import 'package:degenerate/src/parser/openapi_document.dart';
import 'package:degenerate/src/normalizer/ref_resolver.dart';
import 'package:degenerate/src/normalizer/allof_flattener.dart';

void main() {
  group('RefResolver', () {
    test('resolves a simple \$ref', () {
      final doc = OpenApiDocument({
        'openapi': '3.0.0',
        'info': {'title': 'Test'},
        'components': {
          'schemas': {
            'Pet': {
              'type': 'object',
              'properties': {
                'name': {'type': 'string'},
              },
            },
          },
        },
      });
      final resolver = RefResolver(doc);
      final schema = resolver.resolveSchema({
        r'$ref': '#/components/schemas/Pet',
      });
      expect(schema['type'], equals('object'));
      expect(
        (schema['properties'] as Map<String, dynamic>)['name'],
        isA<Map<String, dynamic>>(),
      );
    });

    test('resolves chained refs', () {
      final doc = OpenApiDocument({
        'openapi': '3.0.0',
        'info': {'title': 'Test'},
        'components': {
          'schemas': {
            'Animal': {
              'type': 'object',
              'properties': {
                'species': {'type': 'string'},
              },
            },
            'Pet': {
              r'$ref': '#/components/schemas/Animal',
            },
          },
        },
      });
      final resolver = RefResolver(doc);
      final schema = resolver.resolveSchema({
        r'$ref': '#/components/schemas/Pet',
      });
      expect(schema['type'], equals('object'));
      expect(
        (schema['properties'] as Map<String, dynamic>),
        contains('species'),
      );
    });

    test('detects circular refs without hanging', () {
      final doc = OpenApiDocument({
        'openapi': '3.0.0',
        'info': {'title': 'Test'},
        'components': {
          'schemas': {
            'Node': {
              'type': 'object',
              'properties': {
                'child': {
                  r'$ref': '#/components/schemas/Node',
                },
              },
            },
          },
        },
      });
      final resolver = RefResolver(doc);
      final schema = resolver.resolveSchema({
        r'$ref': '#/components/schemas/Node',
      });

      // The top-level should resolve fine.
      expect(schema['type'], equals('object'));

      // The nested ref should be replaced with a cycle marker.
      final props = schema['properties'] as Map<String, dynamic>;
      final child = props['child'] as Map<String, dynamic>;
      expect(child['_cycleRef'], equals('Node'));
    });

    test('resolveAllSchemas processes every schema', () {
      final doc = OpenApiDocument({
        'openapi': '3.0.0',
        'info': {'title': 'Test'},
        'components': {
          'schemas': {
            'A': {
              'type': 'object',
              'properties': {
                'b': {r'$ref': '#/components/schemas/B'},
              },
            },
            'B': {
              'type': 'object',
              'properties': {
                'value': {'type': 'integer'},
              },
            },
          },
        },
      });
      final resolver = RefResolver(doc);
      final all = resolver.resolveAllSchemas();
      expect(all, contains('A'));
      expect(all, contains('B'));

      final aProps = all['A']!['properties'] as Map<String, dynamic>;
      final bInlined = aProps['b'] as Map<String, dynamic>;
      expect(bInlined['type'], equals('object'));
    });

    test('handles refs nested in arrays', () {
      final doc = OpenApiDocument({
        'openapi': '3.0.0',
        'info': {'title': 'Test'},
        'components': {
          'schemas': {
            'Tag': {
              'type': 'object',
              'properties': {
                'name': {'type': 'string'},
              },
            },
          },
        },
      });
      final resolver = RefResolver(doc);
      final schema = resolver.resolveSchema({
        'type': 'array',
        'items': {r'$ref': '#/components/schemas/Tag'},
      });
      final items = schema['items'] as Map<String, dynamic>;
      expect(items['type'], equals('object'));
    });
  });

  group('AllOfFlattener', () {
    late AllOfFlattener flattener;

    setUp(() {
      flattener = AllOfFlattener();
    });

    test('returns schema as-is when no allOf present', () {
      final schema = {
        'type': 'object',
        'properties': {
          'id': {'type': 'integer'},
        },
      };
      final result = flattener.flatten(schema);
      expect(result['type'], equals('object'));
      expect(result['properties'], equals(schema['properties']));
    });

    test('merges properties from allOf sub-schemas', () {
      final schema = <String, dynamic>{
        'allOf': [
          {
            'type': 'object',
            'properties': {
              'id': {'type': 'integer'},
            },
          },
          {
            'properties': {
              'name': {'type': 'string'},
            },
          },
        ],
      };
      final result = flattener.flatten(schema);
      final props = result['properties'] as Map<String, dynamic>;
      expect(props, contains('id'));
      expect(props, contains('name'));
    });

    test('unions required lists from allOf sub-schemas', () {
      final schema = <String, dynamic>{
        'allOf': [
          {
            'type': 'object',
            'required': ['id'],
            'properties': {
              'id': {'type': 'integer'},
            },
          },
          {
            'required': ['name'],
            'properties': {
              'name': {'type': 'string'},
            },
          },
        ],
      };
      final result = flattener.flatten(schema);
      final required = result['required'] as List;
      expect(required, containsAll(['id', 'name']));
    });

    test('does not flatten when discriminator is present', () {
      final schema = <String, dynamic>{
        'discriminator': {
          'propertyName': 'type',
        },
        'allOf': [
          {
            'type': 'object',
            'properties': {
              'id': {'type': 'integer'},
            },
          },
        ],
      };
      final result = flattener.flatten(schema);
      // Should still have allOf since we didn't flatten.
      expect(result, contains('allOf'));
      expect(result, contains('discriminator'));
    });

    test('flattenAll processes every schema', () {
      final schemas = <String, Map<String, dynamic>>{
        'Combined': {
          'allOf': [
            {
              'type': 'object',
              'properties': {
                'a': {'type': 'string'},
              },
            },
            {
              'properties': {
                'b': {'type': 'integer'},
              },
            },
          ],
        },
        'Simple': {
          'type': 'object',
          'properties': {
            'x': {'type': 'boolean'},
          },
        },
      };

      final result = flattener.flattenAll(schemas);
      expect(result, contains('Combined'));
      expect(result, contains('Simple'));

      final combinedProps =
          result['Combined']!['properties'] as Map<String, dynamic>;
      expect(combinedProps, contains('a'));
      expect(combinedProps, contains('b'));
    });

    test('merges top-level properties and required with allOf', () {
      final schema = <String, dynamic>{
        'properties': {
          'extra': {'type': 'boolean'},
        },
        'required': ['extra'],
        'allOf': [
          {
            'type': 'object',
            'required': ['id'],
            'properties': {
              'id': {'type': 'integer'},
            },
          },
        ],
      };
      final result = flattener.flatten(schema);
      final props = result['properties'] as Map<String, dynamic>;
      expect(props, contains('extra'));
      expect(props, contains('id'));
      final required = result['required'] as List;
      expect(required, containsAll(['extra', 'id']));
    });
  });
}
