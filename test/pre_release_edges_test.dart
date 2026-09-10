import 'dart:convert';
import 'dart:io';

import 'package:degenerate/src/generator.dart';
import 'package:degenerate/src/normalizer/directional_schemas.dart';
import 'package:degenerate/src/parser/openapi_document.dart';
import 'package:test/test.dart';

import 'support/generated_client.dart';

const Map<String, Object?> _a = {
  'type': 'object',
  'required': ['a'],
  'properties': {
    'a': {'type': 'string'},
  },
};
const Map<String, Object?> _b = {
  'type': 'object',
  'required': ['b'],
  'properties': {
    'b': {'type': 'string'},
  },
};
const Map<String, Object?> _binary = {
  'anyOf': [
    {'type': 'string', 'format': 'byte'},
    {
      'type': 'array',
      'items': {
        'type': ['string', 'null'],
        'format': 'byte',
      },
    },
    {'type': 'integer'},
  ],
};

void main() {
  test(
    'nullable discriminator payloads serialize without dereferencing null',
    () async {
      final result = await runGeneratedClient(
        {
          'A': {..._a, 'nullable': true},
          'B': _b,
          'Event': {
            'oneOf': [
              {r'$ref': '#/components/schemas/A'},
              {r'$ref': '#/components/schemas/B'},
            ],
            'discriminator': {
              'propertyName': 'kind',
              'mapping': {
                'a': '#/components/schemas/A',
                'b': '#/components/schemas/B',
              },
            },
          },
        },
        '''
  print(jsonEncode([const EventA(null).toJson(), Event.fromJson({'kind': 'a', 'a': 'x'}).toJson()]));
''',
      );
      expect(result, [
        {'kind': 'a'},
        {'kind': 'a', 'a': 'x'},
      ]);
    },
  );
  test('discriminator can wrap an anyOf object payload', () async {
    final result = await runGeneratedClient(
      {
        'A': _a,
        'B': _b,
        'Both': {
          'anyOf': [
            {r'$ref': '#/components/schemas/A'},
            {r'$ref': '#/components/schemas/B'},
          ],
        },
        'Event': {
          'oneOf': [
            {r'$ref': '#/components/schemas/Both'},
            {r'$ref': '#/components/schemas/A'},
          ],
          'discriminator': {
            'propertyName': 'kind',
            'mapping': {
              'both': '#/components/schemas/Both',
              'a': '#/components/schemas/A',
            },
          },
        },
      },
      '''
  print(jsonEncode(Event.fromJson({'kind': 'both', 'a': 'x', 'b': 'y', 'future': 3}).toJson()));
''',
    );
    expect(result, {'kind': 'both', 'a': 'x', 'b': 'y', 'future': 3});
  });

  test('null anyOf alternative does not match other wire values', () async {
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
      },
      '''
  print(jsonEncode([
    Value.fromJson(null).isValid,
    Value.fromJson('x').isValid,
    Value.fromJson([1]).isValid,
    Value.fromJson(true).isValid,
    Value.fromJson(true).isUnknown,
    Value.fromJson(true).toJson(),
  ]));
''',
    );
    expect(result, [true, true, true, false, true, true]);
  });

  test('unknown nested anyOf is not a matching typed view', () async {
    final result = await runGeneratedClient(
      {
        'Binary': _binary,
        'Nested': {
          'anyOf': [
            {r'$ref': '#/components/schemas/Binary'},
            {'type': 'boolean'},
          ],
        },
      },
      '''
  final unknown = Nested.fromJson({'future': 3});
  print(jsonEncode([
    unknown.isValid, unknown.isUnknown, unknown.binary.isAbsent, unknown.toJson(),
    Nested.fromJson(true).isValid,
    Nested.fromJson('AQI=').isValid,
    Nested.fromJson(['AQI=', null]).toJson(),
  ]));
''',
    );
    expect(result, [
      false,
      true,
      true,
      {'future': 3},
      true,
      true,
      ['AQI=', null],
    ]);
  });

  test(
    'directional reusable bodies project bare discriminator mapping names',
    () {
      final projected = DirectionalSchemas(
        OpenApiDocument({
          'components': {
            'schemas': {
              'Base': {
                'type': 'object',
                'required': ['id'],
                'properties': {
                  'id': {'type': 'string', 'readOnly': true},
                },
              },
              'Dog': {
                'allOf': [
                  {r'$ref': '#/components/schemas/Base'},
                  {
                    'type': 'object',
                    'properties': {
                      'name': {'type': 'string'},
                    },
                  },
                ],
              },
              'DogRequest': _a,
              'Zoo': {
                'oneOf': [
                  {r'$ref': '#/components/schemas/Dog'},
                ],
                'discriminator': {
                  'propertyName': 'kind',
                  'mapping': {'dog': 'Dog'},
                },
              },
            },
            'requestBodies': {
              'Payload': {
                'content': {
                  'application/json': {
                    'schema': {r'$ref': '#/components/schemas/Zoo'},
                  },
                },
              },
            },
          },
          'paths': {
            '/zoo': {
              'post': {
                'requestBody': {r'$ref': '#/components/requestBodies/Payload'},
              },
            },
          },
        }),
      ).project();
      final zoo = projected.schemas['ZooRequest'] as Map<String, dynamic>;
      final discriminator = zoo['discriminator'] as Map<String, dynamic>;
      expect(
        (discriminator['mapping'] as Map)['dog'],
        '#/components/schemas/DogRequest2',
      );
      final base = projected.schemas['BaseRequest'] as Map<String, dynamic>;
      expect(base['required'], isEmpty);
      expect(base['properties'], isEmpty);
    },
  );

  test(
    'property allOf annotations remove readOnly and writeOnly requirements',
    () {
      final projected = DirectionalSchemas(
        OpenApiDocument({
          'components': {
            'schemas': {
              'Id': {'type': 'string', 'readOnly': true},
              'Secret': {'type': 'string', 'writeOnly': true},
              'Account': {
                'type': 'object',
                'required': ['id', 'secret'],
                'properties': {
                  'id': {
                    'allOf': [
                      {r'$ref': '#/components/schemas/Id'},
                    ],
                  },
                  'secret': {
                    'allOf': [
                      {r'$ref': '#/components/schemas/Secret'},
                    ],
                  },
                },
              },
            },
          },
          'paths': {
            '/account': {
              'post': {
                'requestBody': {
                  'content': {
                    'application/json': {
                      'schema': {r'$ref': '#/components/schemas/Account'},
                    },
                  },
                },
                'responses': {
                  '200': {
                    'content': {
                      'application/json': {
                        'schema': {r'$ref': '#/components/schemas/Account'},
                      },
                    },
                  },
                },
              },
            },
          },
        }),
      ).project();
      expect((projected.schemas['AccountRequest'] as Map?)?['required'], [
        'secret',
      ]);
      expect((projected.schemas['AccountResponse'] as Map?)?['required'], [
        'id',
      ]);
    },
  );

  test(
    'directional projection tolerates malformed percent escapes in refs',
    () {
      final projected = DirectionalSchemas(
        OpenApiDocument({
          'components': {
            'schemas': {
              'Percent%ZZ': {
                'type': 'object',
                'properties': {
                  'id': {'type': 'string', 'readOnly': true},
                },
              },
            },
          },
          'paths': {
            '/account': {
              'post': {
                'requestBody': {
                  'content': {
                    'application/json': {
                      'schema': {r'$ref': '#/components/schemas/Percent%ZZ'},
                    },
                  },
                },
              },
            },
          },
        }),
      ).project();
      expect(projected.schemas, contains('Percent%ZZRequest'));
    },
  );

  test('generated models and API methods pass strict analysis', () async {
    final root = Directory('outputs/anyof_analysis')
      ..createSync(recursive: true);
    final dir = root.createTempSync('client_');
    addTearDown(() => dir.deleteSync(recursive: true));
    final files = await Generator(
      GeneratorConfig(
        inputPath: '-',
        quiet: true,
        dryRun: true,
        packageName: 'generated',
        stdinContent: jsonEncode({
          'openapi': '3.1.0',
          'info': {'title': 'Analysis', 'version': '1'},
          'paths': {
            '/value': {
              'get': {
                'operationId': 'getValue',
                'responses': {
                  '200': {
                    'description': 'Value',
                    'content': {
                      'application/json': {
                        'schema': {r'$ref': '#/components/schemas/A'},
                      },
                    },
                  },
                },
              },
              'delete': {
                'operationId': 'deleteValue',
                'responses': {
                  '204': {'description': 'Deleted'},
                },
              },
            },
          },
          'components': {
            'schemas': {
              'A': _a,
              'Binary': _binary,
              'Either': {
                'oneOf': [
                  {r'$ref': '#/components/schemas/A'},
                  {r'$ref': '#/components/schemas/Binary'},
                ],
              },
              'Nested': {
                'anyOf': [
                  {r'$ref': '#/components/schemas/Binary'},
                  {r'$ref': '#/components/schemas/A'},
                  {r'$ref': '#/components/schemas/Either'},
                ],
              },
              'Collections': {
                'type': 'object',
                'required': ['requiredItems'],
                'properties': {
                  'requiredItems': {
                    'type': 'array',
                    'items': {r'$ref': '#/components/schemas/Binary'},
                  },
                  'optionalItems': {
                    'type': 'array',
                    'items': {r'$ref': '#/components/schemas/Nested'},
                  },
                },
              },
            },
          },
        }),
      ),
    ).generate();
    for (final entry in files.entries.where((e) => e.key.endsWith('.dart'))) {
      final file = File('${dir.path}/${entry.key}');
      file.parent.createSync(recursive: true);
      file.writeAsStringSync(entry.value);
    }
    File('${dir.path}/pubspec.yaml').writeAsStringSync(
      'name: generated\nenvironment:\n  sdk: ^3.11.1\ndependencies:\n  degenerate_runtime: any\n',
    );
    final configFile = File('.dart_tool/package_config.json').absolute;
    final config =
        jsonDecode(configFile.readAsStringSync()) as Map<String, dynamic>;
    for (final package in config['packages'] as List) {
      final entry = package as Map<String, dynamic>;
      entry['rootUri'] = configFile.uri
          .resolve(entry['rootUri'] as String)
          .toString();
    }
    final target = File('${dir.path}/.dart_tool/package_config.json');
    target.parent.createSync();
    target.writeAsStringSync(jsonEncode(config));
    final result = await Process.run(Platform.resolvedExecutable, [
      'analyze',
      '--fatal-infos',
      dir.path,
    ]);
    expect(result.exitCode, 0, reason: '${result.stdout}\n${result.stderr}');
  });
}
