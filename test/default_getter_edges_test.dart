import 'package:degenerate/src/generator.dart';
import 'package:test/test.dart';

import 'support/generated_client.dart';

void main() {
  test('default getters avoid declared field names', () async {
    final result = await runGeneratedClient(
      {
        'Patch': {
          'type': 'object',
          'properties': {
            'state': {
              'type': ['string', 'null'],
              'default': 'active',
            },
            'stateOrDefault': {'type': 'integer'},
          },
        },
      },
      r'''
  const patch = Patch(stateOrDefault: 3);
  print(jsonEncode([patch.stateOrDefault, patch.$stateOrDefault, patch.toJson()]));
''',
    );
    expect(result, [
      3,
      'active',
      {'stateOrDefault': 3},
    ]);
  });

  test(
    'enum defaults retain the exact value when Dart names collide',
    () async {
      final result = await runGeneratedClient(
        {
          'Patch': {
            'type': 'object',
            'properties': {
              'mode': {
                'type': 'string',
                'enum': ['a-b', 'a_b'],
                'default': 'a_b',
              },
            },
          },
        },
        '''
  print(jsonEncode(const Patch().modeOrDefault?.toJson()));
''',
      );
      expect(result, 'a_b');
    },
  );
  test('numeric enum defaults expose their exact wire values', () async {
    final result = await runGeneratedClient(
      {
        'Patch': {
          'type': 'object',
          'properties': {
            'count': {
              'type': 'integer',
              'enum': [1, 2],
              'default': 2,
            },
            'ratio': {
              'type': 'number',
              'enum': [1.5, 2.5],
              'default': 2.5,
            },
          },
        },
      },
      '''
  print(jsonEncode([const Patch().countOrDefault?.toJson(), const Patch().ratioOrDefault?.toJson()]));
''',
    );
    expect(result, [2, 2.5]);
  });
  for (final mode in OmittableMode.values) {
    test(
      'boolean defaults preserve false and nullable values in ${mode.name}',
      () async {
        final result = await runGeneratedClient(
          {
            'Patch': {
              'type': 'object',
              'properties': {
                'enabled': {'type': 'boolean', 'default': true},
                'nullable': {
                  'type': ['boolean', 'null'],
                  'default': true,
                },
              },
            },
          },
          '''
  final absent = Patch.fromJson({});
  final disabled = Patch.fromJson({'enabled': false, 'nullable': false});
  final cleared = Patch.fromJson({'nullable': null});
  print(jsonEncode([
    absent.enabledOrDefault, absent.nullableOrDefault,
    disabled.enabledOrDefault, disabled.nullableOrDefault,
    cleared.nullableOrDefault,
  ]));
''',
          mode: mode,
        );
        expect(result, [
          true,
          true,
          false,
          false,
          if (mode == OmittableMode.off) true else null,
        ]);
      },
    );
  }
}
