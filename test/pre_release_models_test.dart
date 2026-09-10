import 'package:degenerate/src/generator.dart';
import 'package:test/test.dart';

import 'support/generated_client.dart';

void main() {
  test(
    'inline discriminator variants preserve defaulted nullable presence',
    () async {
      final result = await runGeneratedClient(
        {
          'Event': {
            'oneOf': [
              {
                'type': 'object',
                'required': ['kind'],
                'properties': {
                  'kind': {
                    'type': 'string',
                    'enum': ['changed'],
                  },
                  'state': {
                    'type': ['string', 'null'],
                    'default': 'active',
                  },
                },
                'additionalProperties': {'type': 'integer'},
              },
              {
                'type': 'object',
                'required': ['kind'],
                'properties': {
                  'kind': {
                    'type': 'string',
                    'enum': ['other'],
                  },
                },
              },
            ],
            'discriminator': {'propertyName': 'kind'},
          },
        },
        '''
  print(jsonEncode([
    Event.fromJson({'kind': 'changed', 'extra': 1}).toJson(),
    Event.fromJson({'kind': 'changed', 'state': null}).toJson(),
  ]));
''',
      );
      expect(result, [
        {'kind': 'changed', 'extra': 1},
        {'kind': 'changed', 'state': null},
      ]);
    },
  );
  for (final mode in OmittableMode.values) {
    test('defaults do not imply presence in ${mode.name}', () async {
      final result = await runGeneratedClient(
        {
          'Patch': {
            'type': 'object',
            'properties': {
              'state': {
                'type': ['string', 'null'],
                'default': 'active',
              },
              'count': {'type': 'integer', 'default': 3},
            },
          },
        },
        '''
  final absent = Patch.fromJson({});
  final cleared = Patch.fromJson({'state': null});
  print(jsonEncode([
    absent.toJson(), absent.stateOrDefault, absent.countOrDefault,
    cleared.toJson(),
    Patch.fromJson({'state': 'other', 'count': 5}).toJson(),
  ]));
''',
        mode: mode,
      );
      expect(result, [
        <String, Object?>{},
        'active',
        3,
        if (mode == OmittableMode.off) <String, Object?>{} else {'state': null},
        {'state': 'other', 'count': 5},
      ]);
    });
  }

  test('overflow map equality has stable order independent hashes', () async {
    final result = await runGeneratedClient(
      {
        'Bag': {
          'type': 'object',
          'properties': {
            'name': {'type': 'string'},
          },
          'additionalProperties': {'type': 'integer'},
        },
      },
      '''
  final a = Bag.fromJson({'x': 1, 'y': 2});
  final b = Bag.fromJson({'y': 2, 'x': 1});
  final hash = a.hashCode;
  final set = {a};
  print(jsonEncode([a == b, hash == a.hashCode, a.hashCode == b.hashCode, set.contains(b)]));
''',
    );
    expect(result, [true, true, true, true]);
  });

  test('anyOf preserves overlapping objects and unknown properties', () async {
    final result = await runGeneratedClient(
      {
        'A': {
          'type': 'object',
          'required': ['a'],
          'properties': {
            'a': {'type': 'string'},
          },
        },
        'B': {
          'type': 'object',
          'required': ['b'],
          'properties': {
            'b': {'type': 'string'},
          },
        },
        'Combined': {
          'anyOf': [
            {r'$ref': '#/components/schemas/A'},
            {r'$ref': '#/components/schemas/B'},
          ],
        },
        'Envelope': {
          'type': 'object',
          'properties': {
            'combined': {r'$ref': '#/components/schemas/Combined'},
          },
        },
      },
      '''
  final input = {'combined': {'a': 'first', 'b': 'second', 'future': 42}};
  final model = Envelope.fromJson(input);
  print(jsonEncode(model.toJson()));
''',
    );
    expect(result, {
      'combined': {'a': 'first', 'b': 'second', 'future': 42},
    });
  });

  test('constructed anyOf views merge and reject conflicts', () async {
    final result = await runGeneratedClient({
      'A': {'type': 'object', 'properties': {'a': {'type': 'string'}, 'shared': {'type': 'string'}}},
      'B': {'type': 'object', 'properties': {'b': {'type': 'string'}, 'shared': {'type': 'string'}}},
      'Combined': {'anyOf': [{r'$ref': '#/components/schemas/A'}, {r'$ref': '#/components/schemas/B'}]},
    }, '''
  const combined = Combined(a: Omittable(A(a: 'first', shared: 'same')), b: Omittable(B(b: 'second', shared: 'same')));
  final decoded = Combined.fromJson({'b': 'second', 'shared': 'same', 'a': 'first'});
  var conflict = false;
  try {
    const Combined(a: Omittable(A(shared: 'one')), b: Omittable(B(shared: 'two'))).toJson();
  } on StateError {
    conflict = true;
  }
  print(jsonEncode([combined.toJson(), decoded.a.isPresent, decoded.b.isPresent, combined == decoded, combined.hashCode == decoded.hashCode, conflict]));
''');
    expect(result, [{'a': 'first', 'b': 'second', 'shared': 'same'}, true, true, true, true, true]);
  });

  test('anyOf preserves scalar, list, and null wire values', () async {
    final result = await runGeneratedClient(
      {
        'Value': {
          'anyOf': [
            {'type': 'string'},
            {
              'type': 'array',
              'items': {'type': 'integer'},
            },
            {'type': 'null'},
          ],
        },
        'Envelope': {
          'type': 'object',
          'properties': {
            'value': {r'$ref': '#/components/schemas/Value'},
          },
        },
      },
      '''
  print(jsonEncode([
    Envelope.fromJson({'value': 'text'}).toJson(),
    Envelope.fromJson({'value': [1, 2]}).toJson(),
    Envelope.fromJson({'value': null}).toJson(),
  ]));
''',
    );
    expect(result, [
      {'value': 'text'},
      {
        'value': [1, 2],
      },
      {'value': null},
    ]);
  });
}
