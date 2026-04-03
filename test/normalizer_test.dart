import 'package:degenerate/src/normalizer/allof_flattener.dart';
import 'package:test/test.dart';

void main() {
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
