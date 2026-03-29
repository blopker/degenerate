import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:test/test.dart';

import 'package:degenerate/src/ir/ir_types.dart';
import 'package:degenerate/src/lowering/ir_mapper.dart';
import 'package:degenerate/src/lowering/operation_lowerer.dart';
import 'package:degenerate/src/normalizer/schema_normalizer.dart';
import 'package:degenerate/src/parser/openapi_document.dart';
import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/media_type_utils.dart';
import 'package:degenerate/src/emitter/model_emitter.dart';
import 'package:degenerate/src/emitter/enum_emitter.dart';
import 'package:degenerate/src/emitter/api_emitter.dart';
import 'package:degenerate/src/emitter/sealed_union_emitter.dart';
import 'package:degenerate/src/emitter/extension_type_emitter.dart';
import 'package:degenerate/src/emitter/file_emitter.dart';

/// Full pipeline helper: parse YAML -> normalize -> lower types -> lower operations.
({List<IrType> types, List<IrApi> apis, IrMapper irMapper})
_lowerPetstore() {
  final yamlContent = File(
    'test/fixtures/public/petstore-v3.0-oai.yaml',
  ).readAsStringSync();
  final doc = OpenApiDocument.parseYaml(yamlContent);

  final normalizer = SchemaNormalizer();
  final context = normalizer.normalize(doc.schemas);
  final irMapper = IrMapper(context);
  final types = irMapper.lowerSchemas(doc.schemas);

  final opLowerer = OperationLowerer(irMapper, doc: doc);
  final apis = opLowerer.lowerPaths(doc.paths);

  return (types: types, apis: apis, irMapper: irMapper);
}

final _formatter = DartFormatter(
  languageVersion: DartFormatter.latestLanguageVersion,
);

/// Attempt to format Dart source; throws if syntactically invalid.
String _formatOrFail(String source) => _formatter.format(source);

void main() {
  late List<IrType> types;
  late List<IrApi> apis;
  late IrMapper irMapper;

  setUpAll(() {
    final result = _lowerPetstore();
    types = result.types;
    apis = result.apis;
    irMapper = result.irMapper;
  });

  // ─── Model emission ──────────────────────────────────────────

  group('ModelEmitter', () {
    group('Pet model', () {
      late String source;

      setUp(() {
        final pet = irMapper.typeRegistry['Pet']! as IrObject;
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

    group('field named toString does not conflict with Object.toString', () {
      late String source;

      setUp(() {
        // Field name '$toString' simulates sanitizeFieldName('toString')
        final model = IrObject('Proto', [
          IrField(
            r'$toString',
            'toString',
            const IrPrimitive(PrimitiveKind.string),
            defaultValue: '[object Object]',
          ),
        ]);
        final specs = ModelEmitter(model).emit();
        final library = Library((b) => b..body.addAll(specs));
        source = emitRaw(library);
      });

      test('uses escaped field name', () {
        expect(source, contains(r'final String $toString'));
      });

      test('is valid Dart (no conflicting_field_and_method)', () {
        expect(() => _formatOrFail(source), returnsNormally);
      });
    });

    group('dynamic fields from PrimitiveKind.dynamic_', () {
      late String source;

      setUp(() {
        final model = IrObject('DynModel', [
          IrField(
            'data',
            'data',
            IrPrimitive(PrimitiveKind.dynamic_,
                description: 'One of: String, int'),
            description: 'One of: String, int',
          ),
          IrField('payload', 'payload', IrPrimitive(PrimitiveKind.dynamic_)),
        ]);
        final specs = ModelEmitter(model).emit();
        final library = Library((b) => b..body.addAll(specs));
        source = emitRaw(library);
      });

      test('emits dynamic instead of Object', () {
        expect(source, contains('final dynamic data;'));
        expect(source, contains('final dynamic payload;'));
        expect(source, isNot(contains('Object data')));
        expect(source, isNot(contains('Object payload')));
      });

      test('emits doc comment with variant types', () {
        expect(source, contains('/// One of: String, int'));
      });

      test('is valid Dart', () {
        expect(() => _formatOrFail(source), returnsNormally);
      });
    });

    group('required nullable field', () {
      test('fromJson uses nullable cast for required + nullable string', () {
        // A field can be required (key must be present in JSON) but nullable
        // (value can be null). The generated fromJson should use `as String?`
        // not `as String` to avoid "type 'Null' is not a subtype of type 'String'"
        final model = IrObject(
          'SpaceDetail',
          [
            IrField(
              'name',
              'name',
              const IrPrimitive(PrimitiveKind.string),
              isRequired: true,
            ),
            IrField(
              'description',
              'description',
              const IrPrimitive(PrimitiveKind.string, isNullable: true),
              isRequired: true,
            ),
          ],
          requiredFields: ['name', 'description'],
        );
        final specs = ModelEmitter(model).emit();
        final library = Library((b) => b..body.addAll(specs));
        final source = emitRaw(library);

        // The description field is required but nullable — Dart type should be String?
        expect(source, contains('final String? description;'));
        // fromJson should use nullable cast
        expect(source, contains("json['description'] as String?"));
        // name is required and non-nullable — should use non-nullable cast
        expect(source, contains("json['name'] as String"));
      });
    });

    group('ErrorModel model', () {
      late String source;

      setUp(() {
        final error = irMapper.typeRegistry['ErrorModel']! as IrObject;
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
      expect(source, contains('final ApiConfig apiConfig'));
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

    test('uses ApiExecutor mixin', () {
      expect(source, contains('with ApiExecutor'));
      expect(source, contains('execute('));
    });

    test('operations pass onError callback for typed error parsing', () {
      expect(source, contains('onError'));
    });

    test('operations pass error deserializer when error schema exists', () {
      // Petstore has default error responses with Error schema.
      // The generated code should try to parse errors as ErrorModel.
      expect(source, contains('ErrorModel.fromJson'));
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
      );
    });

    test('produces model files', () {
      expect(files.keys, contains('models/pet.dart'));
      expect(files.keys, contains('models/error_model.dart'));
    });

    test('produces API files', () {
      expect(files.keys, contains('apis/pets_api.dart'));
    });

    test('does not emit runtime files (uses degenerate_runtime)', () {
      expect(files.keys, isNot(contains('client/api_client.dart')));
      expect(files.keys, isNot(contains('client/api_config.dart')));
      expect(files.keys, isNot(contains('client/api_result.dart')));
    });

    test('produces barrel file', () {
      expect(files.keys, contains('petstore_client.dart'));
      final barrel = files['petstore_client.dart']!;
      expect(barrel, contains("export 'models/pet.dart'"));
      expect(
        barrel,
        contains("export 'package:degenerate_runtime/degenerate_runtime.dart'"),
      );
      expect(barrel, contains("export 'apis/pets_api.dart'"));
    });

    test('does not produce pubspec.yaml by default', () {
      expect(files.keys, isNot(contains('pubspec.yaml')));
    });

    test('produces pubspec.yaml in workspace mode', () {
      final wsFiles = FileEmitter().emitAll(
        types: types,
        apis: apis,
        packageName: 'petstore_client',
        workspace: true,
      );
      expect(wsFiles.keys, contains('pubspec.yaml'));
      final pubspec = wsFiles['pubspec.yaml']!;
      expect(pubspec, contains('name: petstore_client'));
      expect(pubspec, contains('sdk: ^3.8.0'));
      expect(pubspec, isNot(contains('collection:')));
      expect(pubspec, contains('degenerate_runtime:'));
      expect(pubspec, contains('resolution: workspace'));
    });

    test('all model files contain header comment', () {
      for (final entry in files.entries) {
        if (entry.key.startsWith('models/')) {
          expect(entry.value, contains('GENERATED CODE'));
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
      final barrel = files['petstore_client.dart']!;
      expect(barrel, contains("export 'client/petstore_client_api.dart'"));
      final sdkFile = files['client/petstore_client_api.dart'];
      expect(
        sdkFile,
        isNotNull,
        reason: 'Should generate root SDK facade file',
      );
      expect(sdkFile, contains('class PetstoreClientApi'));
      expect(sdkFile, contains('PetsApi'));
    });

    test('root SDK facade doc example uses real method name', () {
      final sdkFile = files['client/petstore_client_api.dart']!;
      // Example should reference an actual generated method, not "listAll"
      expect(sdkFile, isNot(contains('listAll')));
    });

    test('root SDK facade field names drop redundant Api suffix', () {
      final sdkFile = files['client/petstore_client_api.dart']!;
      // "petsApi" is redundant - should just be "pets"
      expect(sdkFile, contains('late final PetsApi pets = '));
    });

    test('operations return ApiResult with typed error', () {
      final apiSource = files['apis/pets_api.dart']!;
      expect(apiSource, contains('ApiResult<List<Pet>, ErrorModel>'));
    });

    test('API files import degenerate_runtime', () {
      final apiSource = files['apis/pets_api.dart']!;
      expect(
        apiSource,
        contains("import 'package:degenerate_runtime/degenerate_runtime.dart'"),
      );
    });

    test('SDK facade imports degenerate_runtime', () {
      final sdkFile = files['client/petstore_client_api.dart']!;
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
        defaultServerUrl: 'https://petstore.swagger.io/v1',
      );
      final sdkFile =
          filesWithServer['client/petstore_client_api.dart']!;
      expect(
        sdkFile,
        contains(
          "static const defaultBaseUrl = 'https://petstore.swagger.io/v1'",
        ),
      );
    });

    test('SDK facade omits defaultBaseUrl when no servers', () {
      final sdkFile = files['client/petstore_client_api.dart']!;
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
        expect(source, contains("if (xRequestId != null) {"));
        expect(
          source,
          contains("headers['X-Request-Id'] = xRequestId;"),
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

        expect(source, contains('required String sessionId'));
        expect(
          source,
          contains(
            'final cookies = <String, String>{...apiConfig.defaultCookies};',
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

    test('emits multipart/form-data body from object schema', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'uploadFile',
          'uploadFile',
          HttpMethod.post,
          '/upload',
          requestBody: IrRequestBody({
            'multipart/form-data': IrMediaType(
              IrObject(
                'UploadRequest',
                [
                  IrField(
                    'file',
                    'file',
                    IrPrimitive(PrimitiveKind.bytes),
                    isRequired: true,
                  ),
                  IrField(
                    'description',
                    'description',
                    IrPrimitive(PrimitiveKind.string),
                    isRequired: false,
                  ),
                ],
                requiredFields: ['file'],
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

      // Should NOT throw UnsupportedError
      expect(source, isNot(contains('UnsupportedError')));
      // Should build multipart fields
      expect(source, contains('ApiMultipartField'));
      expect(source, contains("contentType: 'multipart/form-data'"));
    });

    test('emits form-urlencoded body from object schema', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'createToken',
          'createToken',
          HttpMethod.post,
          '/token',
          requestBody: IrRequestBody({
            'application/x-www-form-urlencoded': IrMediaType(
              IrObject(
                'TokenRequest',
                [
                  IrField(
                    'grantType',
                    'grant_type',
                    IrPrimitive(PrimitiveKind.string),
                    isRequired: true,
                  ),
                  IrField(
                    'scope',
                    'scope',
                    IrPrimitive(PrimitiveKind.string),
                    isRequired: false,
                  ),
                ],
                requiredFields: ['grant_type'],
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

      // Should NOT throw UnsupportedError
      expect(source, isNot(contains('UnsupportedError')));
      // Content-Type set via headers
      expect(source,
          contains("'Content-Type'] = 'application/x-www-form-urlencoded'"));
      // Should build key=value pairs joined by &
      expect(source, contains('grant_type'));
      expect(source, contains('Uri.encodeQueryComponent'));
      expect(source, contains(".join('&')"));
      // Optional field uses null guard
      expect(source, contains(r'if (body.scope case final scope$?)'));
    });

    test('treats */* wildcard as JSON for object request bodies', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'createItem',
          'createItem',
          HttpMethod.post,
          '/items',
          requestBody: IrRequestBody({
            '*/*': IrMediaType(
              IrTypeRef('Item'),
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

      // Should serialize as JSON, not throw UnsupportedError
      expect(source, isNot(contains('UnsupportedError')));
      expect(source, contains('jsonEncode(body.toJson())'));
      // Content-Type should be application/json, not */*
      expect(source, contains("'Content-Type'] = 'application/json'"));
      expect(source, isNot(contains("'Content-Type'] = '*/*'")));
    });

    test('treats */* wildcard as JSON for object success responses', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getItem',
          'getItem',
          HttpMethod.get,
          '/items/1',
          responses: {
            200: IrResponse(
              content: {
                '*/*': IrMediaType(IrTypeRef('Item')),
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

      // Should deserialize as JSON
      expect(source, isNot(contains('UnsupportedError')));
      expect(source, contains('Item.fromJson'));
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
      );

      final securityFile = files['client/test_client_security.dart']!;
      final sdkFile = files['client/test_client_api.dart']!;
      final barrelFile = files['test_client.dart']!;

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
        contains("export 'client/test_client_security.dart';"),
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

      final ctx = SchemaNormalizer().normalize(doc.schemas);
      final tl = IrMapper(ctx);
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
      );
    });

    test('emits extension type files', () {
      // UserId is referenced by both API and User - stays separate
      expect(files.keys, contains('models/user_id.dart'));
      // Timestamp, Score are only referenced by User - inlined into user.dart
      expect(files.keys, isNot(contains('models/timestamp.dart')));
      expect(files.keys, isNot(contains('models/score.dart')));
      // They should appear inside user.dart instead
      final user = files['models/user.dart']!;
      expect(user, contains('extension type Timestamp'));
      expect(user, contains('extension type const Score'));
    });

    test('User model references extension types with correct fromJson', () {
      final user = files['models/user.dart']!;
      expect(user, contains('final UserId id'));
      expect(user, contains('final Timestamp createdAt'));
      expect(user, contains('UserId.fromJson'));
      expect(user, contains('Timestamp.fromJson'));
      // Should NOT cast to Map<String, dynamic> for extension types
      expect(user, isNot(contains('UserId.fromJson(json[\'id\'] as Map')));
    });

    test('API deserializes extension type parameters correctly', () {
      final api = files['apis/default_api.dart']!;
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

  group('preferredContent', () {
    test('prefers JSON over other types', () {
      final result = preferredContent({
        'application/octet-stream': IrMediaType(IrPrimitive(PrimitiveKind.bytes)),
        'application/json': IrMediaType(IrTypeRef('Item')),
      });
      expect(result!.$1, equals('application/json'));
    });

    test('prefers multipart over octet-stream', () {
      final result = preferredContent({
        'application/octet-stream': IrMediaType(IrTypeRef('Value')),
        'multipart/form-data': IrMediaType(
          IrObject('Request', [
            IrField('value', 'value', IrTypeRef('Value'), isRequired: true),
          ], requiredFields: ['value']),
        ),
      });
      expect(result!.$1, equals('multipart/form-data'));
    });

    test('prefers form-urlencoded over octet-stream', () {
      final result = preferredContent({
        'application/octet-stream': IrMediaType(IrPrimitive(PrimitiveKind.bytes)),
        'application/x-www-form-urlencoded': IrMediaType(
          IrObject('Request', [], requiredFields: []),
        ),
      });
      expect(result!.$1, equals('application/x-www-form-urlencoded'));
    });

    test('prefers text/plain over multipart', () {
      final result = preferredContent({
        'multipart/form-data': IrMediaType(IrTypeRef('Item')),
        'text/plain': IrMediaType(IrPrimitive(PrimitiveKind.string)),
      });
      expect(result!.$1, equals('text/plain'));
    });

    test('prefers octet-stream over unknown types', () {
      final result = preferredContent({
        'image/png': IrMediaType(IrPrimitive(PrimitiveKind.bytes)),
        'application/octet-stream': IrMediaType(IrPrimitive(PrimitiveKind.bytes)),
      });
      expect(result!.$1, equals('application/octet-stream'));
    });

    test('falls back to first entry for unknown types', () {
      final result = preferredContent({
        'image/png': IrMediaType(IrPrimitive(PrimitiveKind.bytes)),
        'video/mp4': IrMediaType(IrPrimitive(PrimitiveKind.bytes)),
      });
      expect(result!.$1, equals('image/png'));
    });
  });

  group('OneOf variant inlining', () {
    late Map<String, String> files;

    setUpAll(() {
      // Schema: Parent object with a field whose type is an anyOf typedef.
      // The anyOf has an int + a single-value enum variant.
      // The enum variant should be inlined into the typedef file,
      // not emitted as a separate file.
      final doc = OpenApiDocument({
        'openapi': '3.0.3',
        'info': {'title': 'Inline Test', 'version': '1.0.0'},
        'paths': <String, dynamic>{},
        'components': {
          'schemas': {
            'Container': {
              'type': 'object',
              'properties': {
                'value': {
                  'anyOf': [
                    {'type': 'integer'},
                    {'type': 'string', 'enum': ['']},
                  ],
                },
              },
            },
          },
        },
      });
      final ctx = SchemaNormalizer().normalize(doc.schemas);
      final tl = IrMapper(ctx);
      final types = tl.lowerSchemas(doc.schemas);
      final opLowerer = OperationLowerer(tl, doc: doc);
      final apis = opLowerer.lowerPaths(doc.paths);
      final allTypes = [...types, ...tl.inlineTypes];
      for (final entry in tl.typeRegistry.entries) {
        final name = switch (entry.value) {
          IrObject(:final name) => name,
          IrEnum(:final name) => name,
          IrUntaggedUnion(:final name) => name,
          IrAnyOf(:final name) => name,
          IrExtensionType(:final name) => name,
          _ => null,
        };
        if (name != null && !allTypes.any((t) => switch (t) {
          IrObject(:final name) => name == entry.key,
          IrEnum(:final name) => name == entry.key,
          IrUntaggedUnion(:final name) => name == entry.key,
          IrAnyOf(:final name) => name == entry.key,
          IrExtensionType(:final name) => name == entry.key,
          _ => false,
        })) {
          allTypes.add(entry.value);
        }
      }

      files = FileEmitter().emitAll(
        types: allTypes,
        apis: apis,
        packageName: 'inline_test',
      );
    });

    test('enum variant is inlined into typedef file, not separate', () {
      // The enum variant should NOT have its own file
      final variantFiles = files.keys.where(
        (k) => k.contains('variant') && k.endsWith('.dart'),
      ).toList();
      expect(variantFiles, isEmpty,
          reason: 'Enum variant should be inlined, not a separate file');

      // The typedef file should contain both the enum class and the typedef
      final typedefFile = files['models/container_value.dart'];
      expect(typedefFile, isNotNull);
      expect(typedefFile, contains('typedef ContainerValue'));
      expect(typedefFile, contains('OneOf2'));
      expect(typedefFile, contains('final class ContainerValueVariant2'));
    });

    test('parent model imports typedef file, not variant file', () {
      final containerFile = files['models/container.dart']!;
      // Should import the typedef file (which contains the inlined variant)
      expect(containerFile, contains("'container_value.dart'"));
      // Should NOT import a separate variant file
      expect(containerFile, isNot(contains("'container_value_variant2.dart'")));
    });
  });

  // ─── Unused import regression tests ───────────────────────────

  group('FileEmitter skips imports for inlined OneOf typedef variants', () {
    late Map<String, String> files;

    setUpAll(() {
      // Create a type chain: Parent has field of type OuterOneOf,
      // which is OneOf2<InnerOneOf, String>. InnerOneOf is OneOf2<A, B>.
      // InnerOneOf should NOT be imported by Parent because it's inlined.
      final types = <IrType>[
        IrObject('A', [
          IrField('id', 'id', IrPrimitive(PrimitiveKind.string), isRequired: true),
        ]),
        IrObject('B', [
          IrField('name', 'name', IrPrimitive(PrimitiveKind.string), isRequired: true),
        ]),
        IrUntaggedUnion('InnerOneOf', [
          IrTypeRef('A'),
          IrTypeRef('B'),
        ]),
        IrUntaggedUnion('OuterOneOf', [
          IrTypeRef('InnerOneOf'),
          IrPrimitive(PrimitiveKind.string),
        ]),
        IrObject('Parent', [
          IrField('value', 'value', IrTypeRef('OuterOneOf'), isRequired: true),
        ]),
      ];

      files = FileEmitter().emitAll(
        types: types,
        apis: [],
        packageName: 'import_test',
      );
    });

    test('parent model does not import inlined OneOf typedef', () {
      final parentFile = files['models/parent.dart']!;
      // OuterOneOf is used as the field type, so it should be imported
      expect(parentFile, contains("'outer_one_of.dart'"));
      // InnerOneOf is an inlined OneOf typedef - its parse code is inlined
      // as OneOf2.parse(...), so the import should NOT be present
      expect(parentFile, isNot(contains("'inner_one_of.dart'")));
      // But A and B should be imported (they appear in inlined .fromJson calls)
      expect(parentFile, contains("'a.dart'"));
      expect(parentFile, contains("'b.dart'"));
    });
  });

  group('FileEmitter does not import dart:convert for typedef with bytes', () {
    late Map<String, String> files;

    setUpAll(() {
      final types = <IrType>[
        IrUntaggedUnion('BytesOrStringOneOf', [
          IrPrimitive(PrimitiveKind.bytes),
          IrPrimitive(PrimitiveKind.string),
        ]),
        IrAnyOf('BytesOrStringAnyOf', [
          IrPrimitive(PrimitiveKind.bytes),
          IrPrimitive(PrimitiveKind.string),
        ]),
      ];

      files = FileEmitter().emitAll(
        types: types,
        apis: [],
        packageName: 'bytes_test',
      );
    });

    test('IrUntaggedUnion typedef file does not import dart:convert', () {
      final file = files['models/bytes_or_string_one_of.dart']!;
      expect(file, isNot(contains("import 'dart:convert'")));
      expect(file, contains("import 'dart:typed_data'"));
    });

    test('IrAnyOf typedef file does not import dart:convert', () {
      final file = files['models/bytes_or_string_any_of.dart']!;
      expect(file, isNot(contains("import 'dart:convert'")));
      expect(file, contains("import 'dart:typed_data'"));
    });
  });

  group('FileEmitter does not import dart:convert for model with non-OneOf bytes ref', () {
    late Map<String, String> files;

    setUpAll(() {
      // Create a sealed class (non-OneOf-eligible, 10 variants) that has bytes.
      // Parent model should NOT import dart:convert because it just calls .fromJson().
      final variants = <IrType>[
        IrPrimitive(PrimitiveKind.string),
        IrPrimitive(PrimitiveKind.int),
        IrPrimitive(PrimitiveKind.double),
        IrPrimitive(PrimitiveKind.bool),
        IrPrimitive(PrimitiveKind.bytes),
        IrPrimitive(PrimitiveKind.string),
        IrPrimitive(PrimitiveKind.int),
        IrPrimitive(PrimitiveKind.double),
        IrPrimitive(PrimitiveKind.bool),
        IrPrimitive(PrimitiveKind.num),
      ];
      final types = <IrType>[
        IrAnyOf('BigResult', variants),
        IrObject('ParentModel', [
          IrField('result', 'result', IrTypeRef('BigResult')),
        ]),
      ];

      files = FileEmitter().emitAll(
        types: types,
        apis: [],
        packageName: 'big_result_test',
      );
    });

    test('parent model does not import dart:convert', () {
      final file = files['models/parent_model.dart']!;
      // The parent just calls BigResult.fromJson() - no direct base64 usage
      expect(file, isNot(contains("import 'dart:convert'")));
    });
  });

  group('ApiEmitter early throw does not emit unused variables', () {
    late Map<String, String> files;

    setUpAll(() {
      final types = <IrType>[
        IrObject('SomeResponse', [
          IrField('ok', 'ok', IrPrimitive(PrimitiveKind.bool), isRequired: true),
        ]),
      ];

      final apis = <IrApi>[
        IrApi('TestApi', [
          IrOperation(
            'unsupportedUpload',
            'unsupportedUpload',
            HttpMethod.post,
            '/upload',
            parameters: [
              IrParameter(
                'tag',
                'tag',
                ParameterLocation.query,
                IrPrimitive(PrimitiveKind.string),
                isRequired: false,
              ),
            ],
            requestBody: IrRequestBody(
              {
                'multipart/form-data': IrMediaType(
                  // Non-object schema that can't be resolved to fields
                  IrMap(IrPrimitive(PrimitiveKind.string)),
                ),
              },
              isRequired: true,
            ),
            responses: {
              200: IrResponse(
                description: 'OK',
                content: {
                  'application/json': IrMediaType(
                    IrTypeRef('SomeResponse'),
                  ),
                },
              ),
            },
          ),
        ]),
      ];

      files = FileEmitter().emitAll(
        types: types,
        apis: apis,
        packageName: 'throw_test',
      );
    });

    test('method with early throw does not declare unused variables', () {
      final apiFile = files['apis/test_api.dart']!;
      // The method should throw before declaring queryParametersList/headers
      expect(apiFile, contains('throw UnsupportedError'));
      // These variables should NOT be present since they'd be unused
      expect(apiFile, isNot(contains('queryParametersList')));
      expect(apiFile, isNot(contains('final headers')));
    });
  });

  group('ApiEmitter form-urlencoded body null safety', () {
    late Map<String, String> files;

    setUpAll(() {
      final bodyType = IrObject('CreateRequest', [
        IrField('name', 'Name', IrPrimitive(PrimitiveKind.string), isRequired: true),
        IrField('tag', 'Tag', IrPrimitive(PrimitiveKind.string)),
      ]);
      final types = <IrType>[bodyType];

      final apis = <IrApi>[
        IrApi('TestApi', [
          IrOperation(
            'createThing',
            'createThing',
            HttpMethod.post,
            '/things',
            requestBody: IrRequestBody(
              {
                'application/x-www-form-urlencoded': IrMediaType(
                  IrTypeRef('CreateRequest'),
                ),
              },
              isRequired: false,
            ),
            responses: {
              200: IrResponse(
                description: 'OK',
                content: {
                  'application/json': IrMediaType(
                    IrPrimitive(PrimitiveKind.string),
                  ),
                },
              ),
            },
          ),
        ]),
      ];

      files = FileEmitter().emitAll(
        types: types,
        apis: apis,
        packageName: 'form_test',
      );
    });

    test('optional body is null-checked in form-urlencoded serialization', () {
      final apiFile = files['apis/test_api.dart']!;
      // When body is optional, field access should be guarded
      expect(apiFile, contains('body == null ? null :'));
    });
  });

  group('ApiEmitter form-urlencoded Object field uses toString', () {
    late Map<String, String> files;

    setUpAll(() {
      final bodyType = IrObject('ObjRequest', [
        IrField('data', 'Data', IrPrimitive(PrimitiveKind.dynamic_)),
      ]);
      final types = <IrType>[bodyType];

      final apis = <IrApi>[
        IrApi('TestApi', [
          IrOperation(
            'sendData',
            'sendData',
            HttpMethod.post,
            '/data',
            requestBody: IrRequestBody(
              {
                'application/x-www-form-urlencoded': IrMediaType(
                  IrTypeRef('ObjRequest'),
                ),
              },
              isRequired: true,
            ),
            responses: {
              200: IrResponse(
                description: 'OK',
                content: {
                  'application/json': IrMediaType(
                    IrPrimitive(PrimitiveKind.string),
                  ),
                },
              ),
            },
          ),
        ]),
      ];

      files = FileEmitter().emitAll(
        types: types,
        apis: apis,
        packageName: 'obj_test',
      );
    });

    test('Object fields are converted to String with toString()', () {
      final apiFile = files['apis/test_api.dart']!;
      expect(apiFile, contains('.toString()'));
    });
  });

  // ─── SDK facade class name sanitization ───────────────────────

  group('SDK facade class name with leading digit', () {
    test('sanitizes class name starting with digit', () {
      final files = FileEmitter().emitAll(
        types: const [],
        apis: [
          IrApi('PetsApi', [
            IrOperation(
              'listPets',
              'listPets',
              HttpMethod.get,
              '/pets',
              responses: const {200: IrResponse()},
            ),
          ]),
        ],
        packageName: 'pub_petstore_v3_0_oai',
      );
      final sdkFile =
          files['client/pub_petstore_v3_0_oai_api.dart']!;
      // Class name must be a valid Dart identifier (not start with digit without $)
      expect(sdkFile, isNot(contains('class 0')));
      // $0OaiApi is valid: $ prefix makes leading digit ok
      expect(sdkFile, contains(r'class $0OaiApi'));
    });
  });

  // ─── Deep object nullable field promotion ─────────────────────

  group('deepObject nullable field promotion', () {
    test('uses case-final pattern for nullable deepObject fields', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'listItems',
          'listItems',
          HttpMethod.get,
          '/items',
          parameters: [
            IrParameter(
              'scope',
              'scope',
              ParameterLocation.query,
              IrObject(
                'Scope',
                [
                  IrField(
                    'type',
                    'type',
                    IrPrimitive(PrimitiveKind.string),
                    isRequired: true,
                  ),
                  IrField(
                    'user',
                    'user',
                    IrPrimitive(PrimitiveKind.string),
                    isRequired: false,
                  ),
                ],
                requiredFields: ['type'],
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

      // Required field should still use direct access
      expect(source, contains("queryParameters['scope[type]'] = scope.type;"));
      // Optional field must NOT use raw property access after null check
      // (would fail dart analyze: can't promote public property)
      expect(source, isNot(contains("queryParameters['scope[user]'] = scope.user;")));
      // Should use case-final pattern for promotion
      expect(source, contains("case final user\$?"));
    });

    test('uses case-final pattern for nullable form-exploded fields', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'listItems',
          'listItems',
          HttpMethod.get,
          '/items',
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
                    'meter',
                    'meter',
                    IrPrimitive(PrimitiveKind.string),
                    isRequired: false,
                  ),
                ],
                requiredFields: ['status'],
              ),
              isRequired: true,
              style: 'form',
              explode: true,
            ),
          ],
          responses: {200: IrResponse()},
        ),
      ]);
      final source = emitRaw(
        Library((b) => b..body.addAll(ApiEmitter(api).emit())),
      );

      // Optional field must use case-final for promotion
      expect(source, isNot(contains("filter.meter != null")));
      expect(source, contains("case final meter\$?"));
    });
  });

  // ─── GET with request body ─────────────────────────────────────

  group('ApiEmitter - GET with request body', () {
    test('emits body parameter for GET requests with requestBody', () {
      final api = IrApi('TestApi', [
        IrOperation(
          'getWithBody',
          'getWithBody',
          HttpMethod.get,
          '/test',
          requestBody: IrRequestBody({
              'application/json': IrMediaType(
                IrList(IrPrimitive(PrimitiveKind.string)),
              ),
            },
            isRequired: false,
          ),
        ),
      ]);
      final source = emitRaw(
        Library((b) => b..body.addAll(ApiEmitter(api).emit())),
      );
      expect(source, contains('List<String>? body'));
      expect(source, contains('body: jsonEncode(body)'));
      expect(() => _formatOrFail(source), returnsNormally);
    });
  });

  // ─── escapeDocComment ──────────────────────────────────────────

  group('escapeDocComment', () {
    test('escapes single-word angle brackets', () {
      expect(escapeDocComment('use <ip> here'), 'use `<ip>` here');
    });

    test('escapes multi-word angle brackets', () {
      expect(
        escapeDocComment('interface <target portal>:<volume name>'),
        'interface `<target portal>`:`<volume name>`',
      );
    });

    test('does not double-escape already backticked content', () {
      expect(escapeDocComment('use `<ip>` here'), 'use `<ip>` here');
    });

    test('escapes angle brackets with special chars', () {
      expect(
        escapeDocComment('type <Foo.Bar> end'),
        'type `<Foo.Bar>` end',
      );
    });
  });

  group('ApiEmitter - dollar sign in parameter names', () {
    late String source;

    setUp(() {
      final api = IrApi('TestApi', [
        IrOperation(
          'listItems',
          'listItems',
          HttpMethod.get,
          '/items',
          parameters: [
            IrParameter(
              r'$filter',
              r'$filter',
              ParameterLocation.query,
              IrPrimitive(PrimitiveKind.string),
              isRequired: false,
            ),
            IrParameter(
              r'$top',
              r'$top',
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

    test('escapes dollar sign in query parameter key', () {
      expect(source, contains(r"queryParameters['\$filter']"));
    });

    test('escapes dollar sign in header parameter key', () {
      expect(source, contains(r"headers['\$top']"));
    });

    test('is valid Dart', () {
      expect(() => _formatOrFail(source), returnsNormally);
    });
  });

  group('escapeDartString', () {
    test('escapes backslash, quote, and dollar', () {
      expect(escapeDartString(r"a\b"), r"a\\b");
      expect(escapeDartString("a'b"), r"a\'b");
      expect(escapeDartString(r'a$b'), r'a\$b');
    });

    test('escapes newline', () {
      expect(escapeDartString('\n'), r'\n');
    });

    test('escapes carriage return', () {
      expect(escapeDartString('\r'), r'\r');
    });

    test('escapes tab', () {
      expect(escapeDartString('\t'), r'\t');
    });

    test('escapes mixed control characters', () {
      expect(escapeDartString('a\nb\tc\r'), r'a\nb\tc\r');
    });

    test('escapes bidi override characters', () {
      expect(escapeDartString('\u202E'), r'\u202E');
      expect(escapeDartString('\u202D'), r'\u202D');
    });

    test('escapes zero-width characters', () {
      expect(escapeDartString('\u200B'), r'\u200B');
      expect(escapeDartString('\uFEFF'), r'\uFEFF');
    });

    test('escapes bidi chars embedded in text', () {
      expect(escapeDartString('\u202Egnirts'), r'\u202Egnirts');
      expect(escapeDartString('a\u200Bb'), r'a\u200Bb');
    });
  });
}
