import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:test/test.dart';

import 'package:degenerate/src/ir/ir_types.dart';
import 'package:degenerate/src/lowering/type_lowerer.dart';
import 'package:degenerate/src/lowering/operation_lowerer.dart';
import 'package:degenerate/src/parser/openapi_document.dart';
import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/model_emitter.dart';
import 'package:degenerate/src/emitter/enum_emitter.dart';
import 'package:degenerate/src/emitter/api_emitter.dart';
import 'package:degenerate/src/emitter/sealed_union_emitter.dart';
import 'package:degenerate/src/emitter/extension_type_emitter.dart';
import 'package:degenerate/src/emitter/file_emitter.dart';

/// Full pipeline helper: parse YAML -> lower types -> lower operations.
({List<IrType> types, List<IrApi> apis, TypeLowerer typeLowerer})
_lowerPetstore() {
  final yamlContent = File(
    'test/fixtures/public/petstore-v3.0-oai.yaml',
  ).readAsStringSync();
  final doc = OpenApiDocument.parseYaml(yamlContent);

  final typeLowerer = TypeLowerer();
  final types = typeLowerer.lowerSchemas(doc.schemas);

  final opLowerer = OperationLowerer(typeLowerer, doc: doc);
  final apis = opLowerer.lowerPaths(doc.paths);

  return (types: types, apis: apis, typeLowerer: typeLowerer);
}

final _formatter = DartFormatter(
  languageVersion: DartFormatter.latestLanguageVersion,
);

/// Attempt to format Dart source; throws if syntactically invalid.
String _formatOrFail(String source) => _formatter.format(source);

void main() {
  late List<IrType> types;
  late List<IrApi> apis;
  late TypeLowerer typeLowerer;

  setUpAll(() {
    final result = _lowerPetstore();
    types = result.types;
    apis = result.apis;
    typeLowerer = result.typeLowerer;
  });

  // ─── Model emission ──────────────────────────────────────────

  group('ModelEmitter', () {
    group('Pet model', () {
      late String source;

      setUp(() {
        final pet = typeLowerer.typeRegistry['Pet']! as IrObject;
        final specs = ModelEmitter(pet).emit();
        final library = Library((b) => b..body.addAll(specs));
        source = emitRaw(library);
      });

      test('emits final class', () {
        expect(source, contains('final class Pet'));
      });

      test('has final fields', () {
        expect(source, contains('final int id;'));
        expect(source, contains('final String name;'));
        expect(source, contains('final String? tag;'));
      });

      test('has const constructor', () {
        expect(source, contains('const Pet('));
      });

      test('has fromJson factory', () {
        expect(source, contains('factory Pet.fromJson('));
        expect(source, contains("json['id'] as num).toInt()"));
        expect(source, contains("json['name'] as String"));
        expect(source, contains("json['tag'] as String?"));
      });

      test('has toJson method', () {
        expect(source, contains('Map<String, dynamic> toJson()'));
        expect(source, contains("'id': id"));
        expect(source, contains("'name': name"));
        // Optional field uses null check
        expect(source, contains("tag"));
      });

      test('has copyWith method', () {
        expect(source, contains('Pet copyWith('));
      });

      test('has operator ==', () {
        expect(source, contains('operator ==(Object other)'));
        expect(source, contains('other is Pet'));
      });

      test('has hashCode', () {
        expect(source, contains('int get hashCode'));
        expect(source, contains('Object.hash('));
      });

      test('has toString', () {
        expect(source, contains('String toString()'));
        expect(source, contains('Pet('));
      });

      test('has canParse static method with type checks', () {
        expect(source, contains('static bool canParse('));
        expect(source, contains("json.containsKey('id')"));
        expect(source, contains("json['id'] is num"));
        expect(source, contains("json.containsKey('name')"));
        expect(source, contains("json['name'] is String"));
      });

      test('is valid Dart (formats without error)', () {
        expect(() => _formatOrFail(source), returnsNormally);
      });
    });

    group('ErrorModel model', () {
      late String source;

      setUp(() {
        final error = typeLowerer.typeRegistry['ErrorModel']! as IrObject;
        final specs = ModelEmitter(error).emit();
        final library = Library((b) => b..body.addAll(specs));
        source = emitRaw(library);
      });

      test(
        'emits final class ErrorModel (avoids shadowing dart:core Error)',
        () {
          expect(source, contains('final class ErrorModel'));
        },
      );

      test('has code and message fields', () {
        expect(source, contains('final int code;'));
        expect(source, contains('final String message;'));
      });

      test('has fromJson with correct casts', () {
        expect(source, contains("json['code'] as num).toInt()"));
        expect(source, contains("json['message'] as String"));
      });

      test('is valid Dart (formats without error)', () {
        expect(() => _formatOrFail(source), returnsNormally);
      });
    });
  });

  // ─── Enum emission ───────────────────────────────────────────

  group('EnumEmitter', () {
    test('emits enhanced enum with value field', () {
      final irEnum = IrEnum('Status', ['active', 'inactive', 'suspended']);
      final specs = EnumEmitter(irEnum).emit();
      final library = Library((b) => b..body.addAll(specs));
      final source = emitRaw(library);

      expect(source, contains('final class Status'));
      expect(source, contains('final String value;'));
      expect(source, contains('const Status._(this.value)'));
      expect(source, contains('factory Status.fromJson(String json)'));
      expect(source, contains('String toJson()'));
      expect(source, contains("active = Status._('active')"));
      expect(source, contains("inactive = Status._('inactive')"));
      expect(source, contains("suspended = Status._('suspended')"));
    });

    test('enum code is valid Dart', () {
      final irEnum = IrEnum('Color', ['red', 'green', 'blue']);
      final specs = EnumEmitter(irEnum).emit();
      final library = Library((b) => b..body.addAll(specs));
      final source = emitRaw(library);

      expect(() => _formatOrFail(source), returnsNormally);
    });
  });

  // ─── Discriminated union emission ────────────────────────────

  group('DiscriminatedUnionEmitter', () {
    test('emits sealed class with variant subclasses', () {
      final union = IrDiscriminatedUnion('Shape', 'type', {
        'circle': IrObject(
          'Circle',
          [
            IrField(
              'type',
              'type',
              IrPrimitive(PrimitiveKind.string),
              isRequired: true,
            ),
            IrField(
              'radius',
              'radius',
              IrPrimitive(PrimitiveKind.double),
              isRequired: true,
            ),
          ],
          requiredFields: ['type', 'radius'],
        ),
        'rectangle': IrObject(
          'Rectangle',
          [
            IrField(
              'type',
              'type',
              IrPrimitive(PrimitiveKind.string),
              isRequired: true,
            ),
            IrField(
              'width',
              'width',
              IrPrimitive(PrimitiveKind.double),
              isRequired: true,
            ),
            IrField(
              'height',
              'height',
              IrPrimitive(PrimitiveKind.double),
              isRequired: true,
            ),
          ],
          requiredFields: ['type', 'width', 'height'],
        ),
      });

      final specs = DiscriminatedUnionEmitter(union).emit();
      final library = Library((b) => b..body.addAll(specs));
      final source = emitRaw(library);

      expect(source, contains('sealed class Shape'));
      expect(source, contains('final class ShapeCircle extends Shape'));
      expect(source, contains('final class ShapeRectangle extends Shape'));
      expect(source, contains("json['type']"));
      expect(source, contains("'circle' => ShapeCircle.fromJson(json)"));
    });

    test('discriminated union is valid Dart', () {
      final union = IrDiscriminatedUnion('Animal', 'kind', {
        'dog': IrObject(
          'Dog',
          [
            IrField(
              'kind',
              'kind',
              IrPrimitive(PrimitiveKind.string),
              isRequired: true,
            ),
            IrField(
              'breed',
              'breed',
              IrPrimitive(PrimitiveKind.string),
              isRequired: true,
            ),
          ],
          requiredFields: ['kind', 'breed'],
        ),
      });

      final specs = DiscriminatedUnionEmitter(union).emit();
      final library = Library((b) => b..body.addAll(specs));
      final source = emitRaw(library);

      expect(() => _formatOrFail(source), returnsNormally);
    });
  });

  // ─── Untagged union emission ─────────────────────────────────

  group('UntaggedUnionEmitter', () {
    test('emits sealed class for primitive union', () {
      final union = IrUntaggedUnion('StringOrInt', [
        IrPrimitive(PrimitiveKind.string),
        IrPrimitive(PrimitiveKind.int),
      ]);

      final specs = UntaggedUnionEmitter(union).emit();
      final library = Library((b) => b..body.addAll(specs));
      final source = emitRaw(library);

      expect(source, contains('sealed class StringOrInt'));
      expect(source, contains('StringOrIntString'));
      expect(source, contains('StringOrIntInt'));
    });

    test('primitive union is valid Dart', () {
      final union = IrUntaggedUnion('StringOrBool', [
        IrPrimitive(PrimitiveKind.string),
        IrPrimitive(PrimitiveKind.bool),
      ]);

      final specs = UntaggedUnionEmitter(union).emit();
      final library = Library((b) => b..body.addAll(specs));
      final source = emitRaw(library);

      expect(() => _formatOrFail(source), returnsNormally);
    });
  });

  // ─── API emission ────────────────────────────────────────────

  group('ApiEmitter', () {
    late String source;

    setUp(() {
      final specs = ApiEmitter(apis.first).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      source = emitRaw(library);
    });

    test('emits PetsApi class', () {
      expect(source, contains('final class PetsApi'));
    });

    test('has ApiConfig field', () {
      expect(source, contains('final ApiConfig _config'));
    });

    test('has listPets method', () {
      expect(source, contains('listPets'));
      expect(source, contains("method: 'GET'"));
      expect(source, contains("path: '/pets'"));
    });

    test('has createPets method', () {
      expect(source, contains('createPets'));
      expect(source, contains("method: 'POST'"));
    });

    test('has showPetById method', () {
      expect(source, contains('showPetById'));
      expect(source, contains('/pets/'));
    });

    test('has _execute method', () {
      expect(source, contains('_execute'));
      expect(source, contains('ApiSuccess'));
      expect(source, contains('ApiError'));
      expect(source, contains('ApiException'));
    });

    test('_execute passes onError callback for typed error parsing', () {
      expect(source, contains('onError'));
    });

    test('operations pass error deserializer when error schema exists', () {
      // Petstore has default error responses with Error schema.
      // The generated code should try to parse errors as ErrorModel.
      expect(source, contains('ErrorModel.fromJson'));
    });

    test('_execute uses middleware chain', () {
      expect(source, contains('buildInterceptorChain'));
    });

    test('is valid Dart (formats without error)', () {
      expect(() => _formatOrFail(source), returnsNormally);
    });
  });

  // ─── FileEmitter end-to-end ──────────────────────────────────

  group('FileEmitter', () {
    late Map<String, String> files;

    setUpAll(() {
      files = FileEmitter().emitAll(
        types: types,
        apis: apis,
        packageName: 'petstore_client',
        specFileName: 'petstore-v3.0-oai.yaml',
        specVersion: '1.0.0',
      );
    });

    test('produces model files', () {
      expect(files.keys, contains('lib/src/models/pet.dart'));
      expect(files.keys, contains('lib/src/models/error_model.dart'));
    });

    test('produces API files', () {
      expect(files.keys, contains('lib/src/apis/pets_api.dart'));
    });

    test('does not emit runtime files (uses degenerate_runtime)', () {
      expect(files.keys, isNot(contains('lib/src/client/api_client.dart')));
      expect(files.keys, isNot(contains('lib/src/client/api_config.dart')));
      expect(files.keys, isNot(contains('lib/src/client/api_result.dart')));
    });

    test('produces barrel file', () {
      expect(files.keys, contains('lib/petstore_client.dart'));
      final barrel = files['lib/petstore_client.dart']!;
      expect(barrel, contains("export 'src/models/pet.dart'"));
      expect(
        barrel,
        contains("export 'package:degenerate_runtime/degenerate_runtime.dart'"),
      );
      expect(barrel, contains("export 'src/apis/pets_api.dart'"));
    });

    test('produces pubspec.yaml', () {
      expect(files.keys, contains('pubspec.yaml'));
      final pubspec = files['pubspec.yaml']!;
      expect(pubspec, contains('name: petstore_client'));
      expect(pubspec, contains('sdk: ^3.8.0'));
      expect(pubspec, contains('collection:'));
      expect(pubspec, contains('degenerate_runtime:'));
    });

    test('all model files contain header comment', () {
      for (final entry in files.entries) {
        if (entry.key.startsWith('lib/src/models/')) {
          expect(entry.value, contains('GENERATED CODE'));
          expect(entry.value, contains('petstore-v3.0-oai.yaml'));
        }
      }
    });

    test('all emitted Dart is syntactically valid', () {
      for (final entry in files.entries) {
        if (entry.key.endsWith('.dart')) {
          expect(
            () => _formatOrFail(entry.value),
            returnsNormally,
            reason: 'File ${entry.key} should be valid Dart',
          );
        }
      }
    });

    test('produces root SDK facade', () {
      final barrel = files['lib/petstore_client.dart']!;
      expect(barrel, contains("export 'src/client/petstore_client_api.dart'"));
      final sdkFile = files['lib/src/client/petstore_client_api.dart'];
      expect(
        sdkFile,
        isNotNull,
        reason: 'Should generate root SDK facade file',
      );
      expect(sdkFile, contains('class PetstoreClientApi'));
      expect(sdkFile, contains('PetsApi'));
    });

    test('root SDK facade doc example uses real method name', () {
      final sdkFile = files['lib/src/client/petstore_client_api.dart']!;
      // Example should reference an actual generated method, not "listAll"
      expect(sdkFile, isNot(contains('listAll')));
    });

    test('root SDK facade field names drop redundant Api suffix', () {
      final sdkFile = files['lib/src/client/petstore_client_api.dart']!;
      // "petsApi" is redundant — should just be "pets"
      expect(sdkFile, contains('late final PetsApi pets = '));
    });

    test('operations return ApiResult with typed error', () {
      final apiSource = files['lib/src/apis/pets_api.dart']!;
      expect(apiSource, contains('ApiResult<List<Pet>, ErrorModel>'));
    });

    test('API files import degenerate_runtime', () {
      final apiSource = files['lib/src/apis/pets_api.dart']!;
      expect(
        apiSource,
        contains("import 'package:degenerate_runtime/degenerate_runtime.dart'"),
      );
    });

    test('SDK facade imports degenerate_runtime', () {
      final sdkFile = files['lib/src/client/petstore_client_api.dart']!;
      expect(
        sdkFile,
        contains("import 'package:degenerate_runtime/degenerate_runtime.dart'"),
      );
    });

    test('SDK facade emits defaultBaseUrl from servers', () {
      final filesWithServer = FileEmitter().emitAll(
        types: types,
        apis: apis,
        packageName: 'petstore_client',
        specFileName: 'petstore.yaml',
        specVersion: '1.0.0',
        defaultServerUrl: 'https://petstore.swagger.io/v1',
      );
      final sdkFile =
          filesWithServer['lib/src/client/petstore_client_api.dart']!;
      expect(
        sdkFile,
        contains(
          "static const defaultBaseUrl = 'https://petstore.swagger.io/v1'",
        ),
      );
    });

    test('SDK facade omits defaultBaseUrl when no servers', () {
      final sdkFile = files['lib/src/client/petstore_client_api.dart']!;
      expect(sdkFile, isNot(contains('defaultBaseUrl')));
    });
  });

  // ─── Header parameter emission ─────────────────────────────────

  group('ApiEmitter - header parameters', () {
    late String source;

    setUp(() {
      final api = IrApi('TestApi', [
        IrOperation(
          'getWithHeaders',
          'getWithHeaders',
          HttpMethod.get,
          '/test',
          parameters: [
            IrParameter(
              'X-Api-Key',
              'xApiKey',
              ParameterLocation.header,
              IrPrimitive(PrimitiveKind.string),
              isRequired: true,
            ),
            IrParameter(
              'X-Request-Id',
              'xRequestId',
              ParameterLocation.header,
              IrPrimitive(PrimitiveKind.string),
              isRequired: false,
            ),
          ],
          responses: {
            200: IrResponse(
              content: {
                'application/json': IrMediaType(
                  IrPrimitive(PrimitiveKind.string),
                ),
              },
            ),
          },
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      source = emitRaw(library);
    });

    test('header params appear in method signature', () {
      expect(source, contains('required String xApiKey'));
      expect(source, contains('String? xRequestId'));
    });

    test('required header params are written into request headers', () {
      expect(source, contains("headers['X-Api-Key'] = xApiKey;"));
    });

    test(
      'optional header params are conditionally written into request headers',
      () {
        expect(source, contains('xRequestId'));
        expect(
          source,
          contains(
            "if (xRequestId != null) headers['X-Request-Id'] = xRequestId;",
          ),
        );
      },
    );

    test('is valid Dart', () {
      expect(() => _formatOrFail(source), returnsNormally);
    });
  });

  group('ApiEmitter - query serialization', () {
    test('serializes exploded form arrays as repeated query parameters', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'listPets',
          'listPets',
          HttpMethod.get,
          '/pets',
          parameters: [
            IrParameter(
              'tag',
              'tag',
              ParameterLocation.query,
              IrList(IrPrimitive(PrimitiveKind.string)),
              isRequired: true,
            ),
          ],
          responses: {200: IrResponse()},
        ),
      ]);
      final source = emitRaw(
        Library((b) => b..body.addAll(ApiEmitter(api).emit())),
      );

      expect(
        source,
        contains('final queryParametersList = <ApiQueryParameter>[];'),
      );
      expect(
        source,
        contains(
          "ApiQueryParameter(name: 'tag', value: item, allowReserved: false)",
        ),
      );
    });

    test('serializes pipeDelimited arrays into queryParameters map', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'listPets',
          'listPets',
          HttpMethod.get,
          '/pets',
          parameters: [
            IrParameter(
              'tag',
              'tag',
              ParameterLocation.query,
              IrList(IrPrimitive(PrimitiveKind.string)),
              isRequired: true,
              style: 'pipeDelimited',
              explode: false,
            ),
          ],
          responses: {200: IrResponse()},
        ),
      ]);
      final source = emitRaw(
        Library((b) => b..body.addAll(ApiEmitter(api).emit())),
      );

      expect(source, contains("queryParameters['tag'] = tag.join('|');"));
    });

    test('serializes spaceDelimited arrays into queryParameters map', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'listPets',
          'listPets',
          HttpMethod.get,
          '/pets',
          parameters: [
            IrParameter(
              'tag',
              'tag',
              ParameterLocation.query,
              IrList(IrPrimitive(PrimitiveKind.string)),
              isRequired: true,
              style: 'spaceDelimited',
              explode: false,
            ),
          ],
          responses: {200: IrResponse()},
        ),
      ]);
      final source = emitRaw(
        Library((b) => b..body.addAll(ApiEmitter(api).emit())),
      );

      expect(source, contains("queryParameters['tag'] = tag.join(' ');"));
    });

    test('serializes deepObject query params into bracketed keys', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'listPets',
          'listPets',
          HttpMethod.get,
          '/pets',
          parameters: [
            IrParameter(
              'filter',
              'filter',
              ParameterLocation.query,
              IrObject(
                'Filter',
                [
                  IrField(
                    'status',
                    'status',
                    IrPrimitive(PrimitiveKind.string),
                    isRequired: true,
                  ),
                ],
                requiredFields: ['status'],
              ),
              isRequired: true,
              style: 'deepObject',
              explode: true,
            ),
          ],
          responses: {200: IrResponse()},
        ),
      ]);
      final source = emitRaw(
        Library((b) => b..body.addAll(ApiEmitter(api).emit())),
      );

      expect(
        source,
        contains("queryParameters['filter[status]'] = filter.status;"),
      );
    });

    test('serializes non-exploded form objects into comma-joined values', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'listPets',
          'listPets',
          HttpMethod.get,
          '/pets',
          parameters: [
            IrParameter(
              'filter',
              'filter',
              ParameterLocation.query,
              IrObject(
                'Filter',
                [
                  IrField(
                    'status',
                    'status',
                    IrPrimitive(PrimitiveKind.string),
                    isRequired: true,
                  ),
                  IrField(
                    'limit',
                    'limit',
                    IrPrimitive(PrimitiveKind.int),
                    isRequired: true,
                  ),
                ],
                requiredFields: ['status', 'limit'],
              ),
              isRequired: true,
              style: 'form',
              explode: false,
            ),
          ],
          responses: {200: IrResponse()},
        ),
      ]);
      final source = emitRaw(
        Library((b) => b..body.addAll(ApiEmitter(api).emit())),
      );

      expect(
        source,
        contains(
          "queryParameters['filter'] = ['status', filter.status, 'limit', filter.limit.toString()].join(',');",
        ),
      );
    });

    test('uses queryParametersList for allowReserved values', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'listPets',
          'listPets',
          HttpMethod.get,
          '/pets',
          parameters: [
            IrParameter(
              'redirect',
              'redirect',
              ParameterLocation.query,
              IrPrimitive(PrimitiveKind.string),
              isRequired: true,
              allowReserved: true,
            ),
          ],
          responses: {200: IrResponse()},
        ),
      ]);
      final source = emitRaw(
        Library((b) => b..body.addAll(ApiEmitter(api).emit())),
      );

      expect(
        source,
        contains(
          "ApiQueryParameter(name: 'redirect', value: redirect, allowReserved: true)",
        ),
      );
    });
  });

  // ─── Cookie parameter warning ─────────────────────────────────

  group('ApiEmitter - cookie parameters', () {
    test(
      'cookie params are included in method signature and request cookies',
      () {
        final api = IrApi('TestApi', [
          IrOperation(
            'getWithCookie',
            'getWithCookie',
            HttpMethod.get,
            '/test',
            parameters: [
              IrParameter(
                'session_id',
                'sessionId',
                ParameterLocation.cookie,
                IrPrimitive(PrimitiveKind.string),
                isRequired: true,
              ),
            ],
            responses: {
              200: IrResponse(
                content: {
                  'application/json': IrMediaType(
                    IrPrimitive(PrimitiveKind.string),
                  ),
                },
              ),
            },
          ),
        ]);
        final specs = ApiEmitter(api).emit();
        final library = Library(
          (b) => b
            ..directives.add(Directive.import('dart:convert'))
            ..body.addAll(specs),
        );
        final source = emitRaw(library);

        expect(source, contains('{required String sessionId}'));
        expect(
          source,
          contains(
            'final cookies = <String, String>{..._config.defaultCookies};',
          ),
        );
        expect(source, contains("cookies['session_id'] = sessionId;"));
        expect(source, contains('cookies: cookies,'));
        expect(() => _formatOrFail(source), returnsNormally);
      },
    );
  });

  // ─── Error deserialization for non-object types ────────────────

  group('ApiEmitter - error deserialization', () {
    test('primitive string error type generates valid Dart', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getTest',
          'getTest',
          HttpMethod.get,
          '/test',
          responses: {
            200: IrResponse(
              content: {
                'application/json': IrMediaType(
                  IrPrimitive(PrimitiveKind.string),
                ),
              },
            ),
          },
          defaultResponse: IrResponse(
            content: {
              'application/json': IrMediaType(
                IrPrimitive(PrimitiveKind.string),
              ),
            },
          ),
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      // Should NOT generate String.fromJson (doesn't exist)
      expect(source, isNot(contains('String.fromJson')));
      expect(() => _formatOrFail(source), returnsNormally);
    });

    test('primitive int error type generates valid Dart', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getTest',
          'getTest',
          HttpMethod.get,
          '/test',
          responses: {
            200: IrResponse(
              content: {
                'application/json': IrMediaType(
                  IrPrimitive(PrimitiveKind.string),
                ),
              },
            ),
          },
          defaultResponse: IrResponse(
            content: {
              'application/json': IrMediaType(IrPrimitive(PrimitiveKind.int)),
            },
          ),
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(source, isNot(contains('int.fromJson')));
      expect(() => _formatOrFail(source), returnsNormally);
    });

    test('list error type generates valid Dart', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getTest',
          'getTest',
          HttpMethod.get,
          '/test',
          responses: {
            200: IrResponse(
              content: {
                'application/json': IrMediaType(
                  IrPrimitive(PrimitiveKind.string),
                ),
              },
            ),
          },
          defaultResponse: IrResponse(
            content: {
              'application/json': IrMediaType(
                IrList(IrPrimitive(PrimitiveKind.string)),
              ),
            },
          ),
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(source, isNot(contains('List<String>.fromJson')));
      expect(() => _formatOrFail(source), returnsNormally);
    });

    test('enum error type generates valid Dart', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getTest',
          'getTest',
          HttpMethod.get,
          '/test',
          responses: {
            200: IrResponse(
              content: {
                'application/json': IrMediaType(
                  IrPrimitive(PrimitiveKind.string),
                ),
              },
            ),
          },
          defaultResponse: IrResponse(
            content: {
              'application/json': IrMediaType(
                IrEnum('ErrorCode', ['notFound', 'unauthorized']),
              ),
            },
          ),
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(source, contains('ErrorCode.fromJson'));
      // Should NOT cast to Map<String, dynamic> for enum
      expect(
        source,
        isNot(
          contains(
            'ErrorCode.fromJson(jsonDecode(response.body) as Map<String, dynamic>)',
          ),
        ),
      );
      expect(() => _formatOrFail(source), returnsNormally);
    });
  });

  // ─── Success response type detection ──────────────────────────

  group('ApiEmitter - success response detection', () {
    test('handles 206 partial content response', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getPartial',
          'getPartial',
          HttpMethod.get,
          '/test',
          responses: {
            206: IrResponse(
              content: {
                'application/json': IrMediaType(
                  IrPrimitive(PrimitiveKind.string),
                ),
              },
            ),
          },
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      // Should return String, not void
      expect(source, contains('ApiResult<String,'));
    });

    test('handles 207 multi-status response', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getMultiStatus',
          'getMultiStatus',
          HttpMethod.get,
          '/test',
          responses: {
            207: IrResponse(
              content: {
                'application/json': IrMediaType(
                  IrObject(
                    'MultiStatusResponse',
                    [
                      IrField(
                        'status',
                        'status',
                        IrPrimitive(PrimitiveKind.string),
                        isRequired: true,
                      ),
                    ],
                    requiredFields: ['status'],
                  ),
                ),
              },
            ),
          },
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(source, contains('ApiResult<MultiStatusResponse,'));
    });

    test('handles text/plain success responses', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getPlainText',
          'getPlainText',
          HttpMethod.get,
          '/test',
          responses: {
            200: IrResponse(
              content: {
                'text/plain': IrMediaType(IrPrimitive(PrimitiveKind.string)),
              },
            ),
          },
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(source, contains('ApiResult<String,'));
      expect(source, contains('return response.body;'));
    });
  });

  group('ApiEmitter - non-JSON media types', () {
    test('emits text/plain request bodies without jsonEncode', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'sendPlainText',
          'sendPlainText',
          HttpMethod.post,
          '/test',
          requestBody: IrRequestBody({
            'text/plain': IrMediaType(IrPrimitive(PrimitiveKind.string)),
          }, isRequired: true),
          responses: {200: IrResponse()},
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(source, contains("headers['Content-Type'] = 'text/plain';"));
      expect(source, contains('body: body,'));
      expect(source, isNot(contains('body: jsonEncode(body')));
    });

    test('detects application/problem+json error responses', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getTest',
          'getTest',
          HttpMethod.get,
          '/test',
          responses: {
            200: IrResponse(),
            400: IrResponse(
              content: {
                'application/problem+json': IrMediaType(
                  IrObject(
                    'ProblemDetails',
                    [
                      IrField(
                        'title',
                        'title',
                        IrPrimitive(PrimitiveKind.string),
                        isRequired: true,
                      ),
                    ],
                    requiredFields: ['title'],
                  ),
                ),
              },
            ),
          },
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(source, contains('ApiResult<void, ProblemDetails>'));
      expect(source, contains('ProblemDetails.fromJson'));
    });

    test('treats JSON media types with parameters as JSON-like', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getProblem',
          'getProblem',
          HttpMethod.get,
          '/test',
          responses: {
            200: IrResponse(
              content: {
                'application/json; charset=utf-8': IrMediaType(
                  IrObject(
                    'Payload',
                    [
                      IrField(
                        'title',
                        'title',
                        IrPrimitive(PrimitiveKind.string),
                        isRequired: true,
                      ),
                    ],
                    requiredFields: ['title'],
                  ),
                ),
              },
            ),
          },
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(source, contains('Payload.fromJson(jsonDecode(response.body)'));
    });

    test('emits TODO and throw for unsupported text response objects', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getTextObject',
          'getTextObject',
          HttpMethod.get,
          '/test',
          responses: {
            200: IrResponse(
              content: {
                'text/plain': IrMediaType(
                  IrObject(
                    'PlainObject',
                    [
                      IrField(
                        'value',
                        'value',
                        IrPrimitive(PrimitiveKind.string),
                        isRequired: true,
                      ),
                    ],
                    requiredFields: ['value'],
                  ),
                ),
              },
            ),
          },
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(source, contains('// TODO: Unsupported non-JSON response schema'));
      expect(
        source,
        contains(
          "throw UnsupportedError('Cannot decode text/plain response into PlainObject')",
        ),
      );
    });

    test('emits TODO for unsupported text error objects', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getError',
          'getError',
          HttpMethod.get,
          '/test',
          responses: {
            400: IrResponse(
              content: {
                'text/plain': IrMediaType(
                  IrObject(
                    'PlainError',
                    [
                      IrField(
                        'message',
                        'message',
                        IrPrimitive(PrimitiveKind.string),
                        isRequired: true,
                      ),
                    ],
                    requiredFields: ['message'],
                  ),
                ),
              },
            ),
          },
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(source, contains('// TODO: Unsupported non-JSON error schema'));
      expect(source, contains('return null;'));
    });

    test('throws for unsupported text request object bodies', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'sendObject',
          'sendObject',
          HttpMethod.post,
          '/test',
          requestBody: IrRequestBody({
            'text/plain': IrMediaType(
              IrObject(
                'PlainRequest',
                [
                  IrField(
                    'value',
                    'value',
                    IrPrimitive(PrimitiveKind.string),
                    isRequired: true,
                  ),
                ],
                requiredFields: ['value'],
              ),
            ),
          }, isRequired: true),
          responses: {200: IrResponse()},
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(
        source,
        contains(
          "throw UnsupportedError('Cannot encode non-JSON text/plain request body from PlainRequest')",
        ),
      );
      expect(source, isNot(contains('body: body,')));
    });

    test('uses bodyBytes for octet-stream success responses', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'download',
          'download',
          HttpMethod.get,
          '/download',
          responses: {
            200: IrResponse(
              content: {
                'application/octet-stream': IrMediaType(
                  IrPrimitive(PrimitiveKind.bytes),
                ),
              },
            ),
          },
        ),
      ]);
      final specs = ApiEmitter(api).emit();
      final library = Library(
        (b) => b
          ..directives.add(Directive.import('dart:convert'))
          ..directives.add(Directive.import('dart:typed_data'))
          ..body.addAll(specs),
      );
      final source = emitRaw(library);

      expect(source, contains('ApiResult<Uint8List,'));
      expect(source, contains('Uint8List.fromList(response.bodyBytes)'));
    });
  });

  group('FileEmitter warnings', () {
    test('collects warnings for unsupported non-JSON object bodies', () {
      final warnings = <String>[];

      FileEmitter().emitAll(
        types: const [],
        apis: [
          IrApi('TestApi', [
            IrOperation(
              'sendObject',
              'sendObject',
              HttpMethod.post,
              '/test',
              requestBody: IrRequestBody({
                'text/plain': IrMediaType(
                  IrObject(
                    'PlainRequest',
                    [
                      IrField(
                        'value',
                        'value',
                        IrPrimitive(PrimitiveKind.string),
                        isRequired: true,
                      ),
                    ],
                    requiredFields: ['value'],
                  ),
                ),
              }, isRequired: true),
              responses: const {200: IrResponse()},
            ),
          ]),
        ],
        packageName: 'test_client',
        specFileName: 'test.yaml',
        specVersion: '3.0.0',
        warnings: warnings,
      );

      expect(
        warnings,
        contains(
          'Operation sendObject uses unsupported non-JSON request body media type text/plain with type PlainRequest.',
        ),
      );
    });

    test('collects warnings for unsupported non-JSON response/error shapes', () {
      final warnings = <String>[];

      FileEmitter().emitAll(
        types: const [],
        apis: [
          IrApi('TestApi', [
            IrOperation(
              'getTextObject',
              'getTextObject',
              HttpMethod.get,
              '/test',
              responses: {
                200: IrResponse(
                  content: {
                    'text/plain': IrMediaType(
                      IrObject(
                        'PlainObject',
                        [
                          IrField(
                            'value',
                            'value',
                            IrPrimitive(PrimitiveKind.string),
                            isRequired: true,
                          ),
                        ],
                        requiredFields: ['value'],
                      ),
                    ),
                  },
                ),
                400: IrResponse(
                  content: {
                    'text/plain': IrMediaType(
                      IrObject(
                        'PlainError',
                        [
                          IrField(
                            'message',
                            'message',
                            IrPrimitive(PrimitiveKind.string),
                            isRequired: true,
                          ),
                        ],
                        requiredFields: ['message'],
                      ),
                    ),
                  },
                ),
              },
            ),
          ]),
        ],
        packageName: 'test_client',
        specFileName: 'test.yaml',
        specVersion: '3.0.0',
        warnings: warnings,
      );

      expect(
        warnings,
        contains(
          'Operation getTextObject uses unsupported non-JSON success response media type text/plain with type PlainObject.',
        ),
      );
      expect(
        warnings,
        contains(
          'Operation getTextObject uses unsupported non-JSON error response media type text/plain with type PlainError.',
        ),
      );
    });
  });

  group('FileEmitter security emission', () {
    test('emits security helpers and requirement metadata', () {
      final files = FileEmitter().emitAll(
        types: const [],
        apis: [
          IrApi('DefaultApi', [
            IrOperation(
              'secureRead',
              'secureRead',
              HttpMethod.get,
              '/secure',
              responses: const {200: IrResponse()},
              securityRequirements: const [
                IrSecurityRequirement({'HttpBearer': []}),
              ],
            ),
          ]),
        ],
        securitySchemes: const [
          IrSecurityScheme(
            name: 'ApiKeyAuth',
            type: 'apiKey',
            parameterName: 'x-api-key',
            location: 'header',
          ),
          IrSecurityScheme(name: 'HttpBearer', type: 'http', scheme: 'bearer'),
          IrSecurityScheme(name: 'HttpBasic', type: 'http', scheme: 'basic'),
        ],
        globalSecurity: const [
          IrSecurityRequirement({'ApiKeyAuth': []}),
        ],
        packageName: 'test_client',
        specFileName: 'test.yaml',
        specVersion: '3.0.0',
      );

      final securityFile = files['lib/src/client/test_client_security.dart']!;
      final sdkFile = files['lib/src/client/test_client_api.dart']!;
      final barrelFile = files['lib/test_client.dart']!;

      expect(
        securityFile,
        contains('static final securitySchemes = <String, ApiSecurityScheme>{'),
      );
      expect(
        securityFile,
        contains(
          'static final globalRequirements = [ApiSecurityRequirement({\'ApiKeyAuth\': []})];',
        ),
      );
      expect(
        securityFile,
        contains(
          'static final secureReadRequirements = [ApiSecurityRequirement({\'HttpBearer\': []})];',
        ),
      );
      expect(
        securityFile,
        contains(
          'static ApiConfig applyApiKeyAuth(ApiConfig config, String value)',
        ),
      );
      expect(
        securityFile,
        contains(
          'static ApiConfig applyHttpBearer(ApiConfig config, String token)',
        ),
      );
      expect(
        securityFile,
        contains(
          'static ApiConfig applyHttpBasic(ApiConfig config, {required String username, required String password})',
        ),
      );
      expect(sdkFile, contains("import 'test_client_security.dart';"));
      expect(sdkFile, contains('withApiKeyAuth(String value)'));
      expect(sdkFile, contains('withHttpBearer(String token)'));
      expect(
        sdkFile,
        contains(
          'withHttpBasic({required String username, required String password})',
        ),
      );
      expect(
        barrelFile,
        contains("export 'src/client/test_client_security.dart';"),
      );
    });
  });

  // ─── Extension type emission ──────────────────────────────────

  group('ExtensionTypeEmitter', () {
    test('emits string extension type', () {
      final type = IrExtensionType(
        'UserId',
        const IrPrimitive(PrimitiveKind.string),
        description: 'A unique user identifier.',
      );
      final specs = ExtensionTypeEmitter(type).emit();
      final source = emitRaw(Library((b) => b.body.addAll(specs)));

      expect(source, contains('extension type const UserId(String value)'));
      expect(source, contains('factory UserId.fromJson(String json)'));
      expect(source, contains('UserId(json)'));
      expect(source, contains('String toJson()'));
      expect(source, contains('=> value'));
      expect(source, contains('A unique user identifier.'));
      expect(() => _formatOrFail(source), returnsNormally);
    });

    test('emits DateTime extension type with parsing', () {
      final type = IrExtensionType(
        'Timestamp',
        const IrPrimitive(PrimitiveKind.dateTime),
      );
      final specs = ExtensionTypeEmitter(type).emit();
      final source = emitRaw(Library((b) => b.body.addAll(specs)));

      // DateTime wraps DateTime, but fromJson takes String and parses
      expect(source, contains('extension type Timestamp(DateTime value)'));
      expect(
        source,
        isNot(contains('const Timestamp')),
      ); // DateTime can't be const
      expect(source, contains('factory Timestamp.fromJson(String json)'));
      expect(source, contains('DateTime.parse(json)'));
      expect(source, contains('String toJson()'));
      expect(source, contains('value.toIso8601String()'));
      expect(() => _formatOrFail(source), returnsNormally);
    });

    test('emits int extension type with num fromJson', () {
      final type = IrExtensionType(
        'Score',
        const IrPrimitive(PrimitiveKind.int),
      );
      final specs = ExtensionTypeEmitter(type).emit();
      final source = emitRaw(Library((b) => b.body.addAll(specs)));

      expect(source, contains('extension type const Score(int value)'));
      expect(source, contains('factory Score.fromJson(num json)'));
      expect(source, contains('json.toInt()'));
      expect(() => _formatOrFail(source), returnsNormally);
    });

    test('emits Uri extension type with parsing', () {
      final type = IrExtensionType(
        'WebUrl',
        const IrPrimitive(PrimitiveKind.uri),
      );
      final specs = ExtensionTypeEmitter(type).emit();
      final source = emitRaw(Library((b) => b.body.addAll(specs)));

      expect(source, contains('extension type WebUrl(Uri value)'));
      expect(source, contains('factory WebUrl.fromJson(String json)'));
      expect(source, contains('Uri.parse(json)'));
      expect(source, contains('value.toString()'));
      expect(() => _formatOrFail(source), returnsNormally);
    });

    test('emits bool extension type', () {
      final type = IrExtensionType(
        'Active',
        const IrPrimitive(PrimitiveKind.bool),
      );
      final specs = ExtensionTypeEmitter(type).emit();
      final source = emitRaw(Library((b) => b.body.addAll(specs)));

      expect(source, contains('extension type const Active(bool value)'));
      expect(source, contains('factory Active.fromJson(bool json)'));
      expect(source, contains('Active(json)'));
      expect(() => _formatOrFail(source), returnsNormally);
    });
  });

  // ─── Extension type full pipeline ──────────────────────────────

  group('Extension type pipeline', () {
    late Map<String, String> files;

    setUpAll(() {
      final jsonContent = File(
        'test/fixtures/specs/extension-types.json',
      ).readAsStringSync();
      final doc = OpenApiDocument.parseJson(jsonContent);

      final tl = TypeLowerer();
      final irTypes = tl.lowerSchemas(doc.schemas);

      final opLowerer = OperationLowerer(tl, doc: doc);
      final irApis = opLowerer.lowerPaths(doc.paths);

      // Resolve type refs
      for (var i = 0; i < irTypes.length; i++) {
        irTypes[i] = tl.resolveTypeRefs(irTypes[i]);
      }

      files = FileEmitter().emitAll(
        types: irTypes,
        apis: irApis,
        packageName: 'ext_test',
        specFileName: 'extension-types.json',
        specVersion: '3.1.0',
      );
    });

    test('emits extension type files', () {
      // UserId is referenced by both API and User — stays separate
      expect(files.keys, contains('lib/src/models/user_id.dart'));
      // Timestamp, Score are only referenced by User — inlined into user.dart
      expect(files.keys, isNot(contains('lib/src/models/timestamp.dart')));
      expect(files.keys, isNot(contains('lib/src/models/score.dart')));
      // They should appear inside user.dart instead
      final user = files['lib/src/models/user.dart']!;
      expect(user, contains('extension type Timestamp'));
      expect(user, contains('extension type const Score'));
    });

    test('User model references extension types with correct fromJson', () {
      final user = files['lib/src/models/user.dart']!;
      expect(user, contains('final UserId id'));
      expect(user, contains('final Timestamp createdAt'));
      expect(user, contains('UserId.fromJson'));
      expect(user, contains('Timestamp.fromJson'));
      // Should NOT cast to Map<String, dynamic> for extension types
      expect(user, isNot(contains('UserId.fromJson(json[\'id\'] as Map')));
    });

    test('API deserializes extension type parameters correctly', () {
      final api = files['lib/src/apis/default_api.dart']!;
      // userId path param should be present
      expect(api, contains('userId'));
    });

    test('all emitted Dart is syntactically valid', () {
      for (final entry in files.entries) {
        if (entry.key.endsWith('.dart')) {
          expect(
            () => _formatOrFail(entry.value),
            returnsNormally,
            reason: 'File ${entry.key} should be valid Dart',
          );
        }
      }
    });
  });
}
