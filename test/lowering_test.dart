import 'dart:io';

import 'package:test/test.dart';

import 'package:degenerate/src/ir/ir_types.dart';
import 'package:degenerate/src/lowering/ir_mapper.dart';
import 'package:degenerate/src/lowering/operation_lowerer.dart';
import 'package:degenerate/src/normalizer/schema_normalizer.dart';
import 'package:degenerate/src/parser/openapi_document.dart';

/// Full pipeline helper: parse YAML → normalize → lower types → lower operations.
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

  final opLowerer = OperationLowerer(irMapper);
  final apis = opLowerer.lowerPaths(doc.paths);

  return (types: types, apis: apis, irMapper: irMapper);
}

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

  // ─── Type lowering ──────────────────────────────────────────

  group('IrMapper', () {
    test('registers all schemas in typeRegistry', () {
      expect(irMapper.typeRegistry, contains('Pet'));
      expect(irMapper.typeRegistry, contains('Pets'));
      expect(irMapper.typeRegistry, contains('ErrorModel'));
      expect(types, hasLength(3));
    });

    group('Pet schema', () {
      late IrObject pet;

      setUp(() {
        pet = irMapper.typeRegistry['Pet']! as IrObject;
      });

      test('is an IrObject named Pet', () {
        expect(pet.name, equals('Pet'));
      });

      test('has three fields', () {
        expect(pet.fields, hasLength(3));
      });

      test('id field is int and required', () {
        final id = pet.fields.firstWhere((f) => f.originalName == 'id');
        expect(id.name, equals('id'));
        expect(id.isRequired, isTrue);
        expect(id.type, isA<IrPrimitive>());
        expect((id.type as IrPrimitive).kind, equals(PrimitiveKind.int));
      });

      test('name field is String and required', () {
        final name = pet.fields.firstWhere((f) => f.originalName == 'name');
        expect(name.name, equals('name'));
        expect(name.isRequired, isTrue);
        expect(name.type, isA<IrPrimitive>());
        expect((name.type as IrPrimitive).kind, equals(PrimitiveKind.string));
      });

      test('tag field is String and optional', () {
        final tag = pet.fields.firstWhere((f) => f.originalName == 'tag');
        expect(tag.name, equals('tag'));
        expect(tag.isRequired, isFalse);
        expect(tag.type, isA<IrPrimitive>());
        expect((tag.type as IrPrimitive).kind, equals(PrimitiveKind.string));
      });

      test('requiredFields lists id and name', () {
        expect(pet.requiredFields, containsAll(['id', 'name']));
        expect(pet.requiredFields, isNot(contains('tag')));
      });
    });

    group('Error schema (renamed to ErrorModel)', () {
      late IrObject error;

      setUp(() {
        error = irMapper.typeRegistry['ErrorModel']! as IrObject;
      });

      test('is an IrObject named ErrorModel', () {
        expect(error.name, equals('ErrorModel'));
      });

      test('code field is int and required', () {
        final code = error.fields.firstWhere((f) => f.originalName == 'code');
        expect(code.isRequired, isTrue);
        expect(code.type, isA<IrPrimitive>());
        expect((code.type as IrPrimitive).kind, equals(PrimitiveKind.int));
      });

      test('message field is String and required', () {
        final message = error.fields.firstWhere(
          (f) => f.originalName == 'message',
        );
        expect(message.isRequired, isTrue);
        expect(message.type, isA<IrPrimitive>());
        expect(
          (message.type as IrPrimitive).kind,
          equals(PrimitiveKind.string),
        );
      });
    });

    group('Pets schema', () {
      test('is an IrList', () {
        final pets = irMapper.typeRegistry['Pets']!;
        expect(pets, isA<IrList>());
      });

      test('items is IrTypeRef pointing to Pet', () {
        final pets = irMapper.typeRegistry['Pets']! as IrList;
        expect(pets.items, isA<IrTypeRef>());
        expect((pets.items as IrTypeRef).name, equals('Pet'));
      });
    });

    group('primitive type mapping', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));

      test('string → PrimitiveKind.string', () {
        final t = lowerer.lowerInlineSchema({'type': 'string'});
        expect(t, isA<IrPrimitive>());
        expect((t as IrPrimitive).kind, equals(PrimitiveKind.string));
      });

      test('string+date-time → PrimitiveKind.dateTime', () {
        final t = lowerer.lowerInlineSchema({
          'type': 'string',
          'format': 'date-time',
        });
        expect((t as IrPrimitive).kind, equals(PrimitiveKind.dateTime));
      });

      test('string+uri → PrimitiveKind.uri', () {
        final t = lowerer.lowerInlineSchema({
          'type': 'string',
          'format': 'uri',
        });
        expect((t as IrPrimitive).kind, equals(PrimitiveKind.uri));
      });

      test('string+binary → PrimitiveKind.bytes', () {
        final t = lowerer.lowerInlineSchema({
          'type': 'string',
          'format': 'binary',
        });
        expect((t as IrPrimitive).kind, equals(PrimitiveKind.bytes));
      });

      test('integer → PrimitiveKind.int', () {
        final t = lowerer.lowerInlineSchema({'type': 'integer'});
        expect((t as IrPrimitive).kind, equals(PrimitiveKind.int));
      });

      test('number → PrimitiveKind.double', () {
        final t = lowerer.lowerInlineSchema({'type': 'number'});
        expect((t as IrPrimitive).kind, equals(PrimitiveKind.double));
      });

      test('boolean → PrimitiveKind.bool', () {
        final t = lowerer.lowerInlineSchema({'type': 'boolean'});
        expect((t as IrPrimitive).kind, equals(PrimitiveKind.bool));
      });
    });

    group('nullability', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));

      test('nullable: true sets isNullable on field type', () {
        final obj =
            lowerer.lowerSchema('Test', {
                  'type': 'object',
                  'required': ['name'],
                  'properties': {
                    'name': {'type': 'string', 'nullable': true},
                  },
                })
                as IrObject;
        final field = obj.fields.first;
        expect(field.isRequired, isTrue);
        expect(field.type.isNullable, isTrue);
      });

      test('optional non-nullable field', () {
        final obj =
            lowerer.lowerSchema('Test2', {
                  'type': 'object',
                  'properties': {
                    'value': {'type': 'integer'},
                  },
                })
                as IrObject;
        final field = obj.fields.first;
        expect(field.isRequired, isFalse);
        expect(field.type.isNullable, isFalse);
      });
    });

    group('special schema types', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));

      test('string enum → IrEnum', () {
        final t = lowerer.lowerSchema('Status', {
          'type': 'string',
          'enum': ['active', 'inactive'],
        });
        expect(t, isA<IrEnum>());
        final e = t as IrEnum;
        expect(e.name, equals('Status'));
        expect(e.values, equals(['active', 'inactive']));
      });

      test('object with only additionalProperties → IrMap', () {
        final t = lowerer.lowerInlineSchema({
          'type': 'object',
          'additionalProperties': {'type': 'integer'},
        });
        expect(t, isA<IrMap>());
        final m = t as IrMap;
        expect(m.values, isA<IrPrimitive>());
        expect((m.values as IrPrimitive).kind, equals(PrimitiveKind.int));
      });

      test('free-form object falls back to Map<String, Object?>', () {
        final t = lowerer.lowerInlineSchema({'type': 'object'});

        expect(t, isA<IrMap>());
        final m = t as IrMap;
        expect(m.values, isA<IrPrimitive>());
        expect((m.values as IrPrimitive).kind, equals(PrimitiveKind.dynamic_));
      });

      test('untyped schema falls back to Object?', () {
        final t = lowerer.lowerInlineSchema({});

        expect(t, isA<IrPrimitive>());
        expect((t as IrPrimitive).kind, equals(PrimitiveKind.dynamic_));
      });

      test('additionalProperties true falls back to Map<String, Object?>', () {
        final t = lowerer.lowerInlineSchema({
          'type': 'object',
          'additionalProperties': true,
        });

        expect(t, isA<IrMap>());
        final m = t as IrMap;
        expect((m.values as IrPrimitive).kind, equals(PrimitiveKind.dynamic_));
      });

      test('boolean schema property falls back to Object?', () {
        final t =
            lowerer.lowerSchema('BoolContainer', {
                  'type': 'object',
                  'properties': {'anything': true},
                })
                as IrObject;

        expect(t.fields.single.type, isA<IrPrimitive>());
        expect(
          (t.fields.single.type as IrPrimitive).kind,
          equals(PrimitiveKind.dynamic_),
        );
      });

      test('\$ref → IrTypeRef', () {
        final t = lowerer.lowerInlineSchema({
          r'$ref': '#/components/schemas/Pet',
        });
        expect(t, isA<IrTypeRef>());
        expect((t as IrTypeRef).name, equals('Pet'));
      });

      test('_cycleRef → IrTypeRef', () {
        final t = lowerer.lowerInlineSchema({'_cycleRef': 'Node'});
        expect(t, isA<IrTypeRef>());
        expect((t as IrTypeRef).name, equals('Node'));
      });
    });
  });

  // ─── Operation lowering ─────────────────────────────────────

  group('OperationLowerer', () {
    test('groups all operations under PetsApi', () {
      expect(apis, hasLength(1));
      expect(apis.first.name, equals('PetsApi'));
    });

    test('produces three operations', () {
      expect(apis.first.operations, hasLength(3));
    });

    group('listPets', () {
      late IrOperation op;

      setUp(() {
        op = apis.first.operations.firstWhere(
          (o) => o.operationId == 'listPets',
        );
      });

      test('method and path', () {
        expect(op.method, equals(HttpMethod.get));
        expect(op.path, equals('/pets'));
      });

      test('dartMethodName is listPets', () {
        expect(op.dartMethodName, equals('listPets'));
      });

      test('has limit query parameter', () {
        expect(op.parameters, hasLength(1));
        final limit = op.parameters.first;
        expect(limit.name, equals('limit'));
        expect(limit.location, equals(ParameterLocation.query));
        expect(limit.isRequired, isFalse);
        expect(limit.type, isA<IrPrimitive>());
        expect((limit.type as IrPrimitive).kind, equals(PrimitiveKind.int));
      });

      test('200 response has Pets schema resolved to IrList', () {
        final resp200 = op.responses[200]!;
        final jsonContent = resp200.content['application/json']!;
        // Pets is an array schema, so lowerInlineSchema resolves the
        // IrTypeRef to the actual IrList type (non-emittable types are
        // resolved inline).
        expect(jsonContent.schema, isA<IrList>());
        final listType = jsonContent.schema as IrList;
        expect(listType.items, isA<IrTypeRef>());
        expect((listType.items as IrTypeRef).name, equals('Pet'));
      });

      test('default response has Error schema', () {
        expect(op.defaultResponse, isNotNull);
        final jsonContent = op.defaultResponse!.content['application/json']!;
        expect(jsonContent.schema, isA<IrTypeRef>());
        expect((jsonContent.schema as IrTypeRef).name, equals('ErrorModel'));
      });

      test('200 response has x-next header', () {
        final resp200 = op.responses[200]!;
        expect(resp200.headers, hasLength(1));
        expect(resp200.headers.first.originalName, equals('x-next'));
        expect(resp200.headers.first.type, isA<IrPrimitive>());
      });

      test('boolean parameter schemas fall back to Object?', () {
        final doc = OpenApiDocument({
          'openapi': '3.1.1',
          'info': {'title': 'x', 'version': '1'},
          'paths': {
            '/pets': {
              'get': {
                'operationId': 'listPets',
                'parameters': [
                  {'name': 'filter', 'in': 'query', 'schema': true},
                ],
                'responses': {
                  '200': {'description': 'ok'},
                },
              },
            },
          },
        });
        final apis = OperationLowerer(
          IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        )),
          doc: doc,
        ).lowerPaths(doc.paths);

        final param = apis.single.operations.single.parameters.single;
        expect(param.type, isA<IrPrimitive>());
        expect((param.type as IrPrimitive).kind, equals(PrimitiveKind.dynamic_));
      });
    });

    group('createPets', () {
      late IrOperation op;

      setUp(() {
        op = apis.first.operations.firstWhere(
          (o) => o.operationId == 'createPets',
        );
      });

      test('method is POST', () {
        expect(op.method, equals(HttpMethod.post));
      });

      test('has required request body with Pet schema', () {
        expect(op.requestBody, isNotNull);
        expect(op.requestBody!.isRequired, isTrue);
        final jsonContent = op.requestBody!.content['application/json']!;
        expect(jsonContent.schema, isA<IrTypeRef>());
        expect((jsonContent.schema as IrTypeRef).name, equals('Pet'));
      });

      test('201 response exists', () {
        expect(op.responses, contains(201));
      });
    });

    group('showPetById', () {
      late IrOperation op;

      setUp(() {
        op = apis.first.operations.firstWhere(
          (o) => o.operationId == 'showPetById',
        );
      });

      test('method and path', () {
        expect(op.method, equals(HttpMethod.get));
        expect(op.path, equals('/pets/{petId}'));
      });

      test('has required petId path parameter', () {
        expect(op.parameters, hasLength(1));
        final petId = op.parameters.first;
        expect(petId.name, equals('petId'));
        expect(petId.location, equals(ParameterLocation.path));
        expect(petId.isRequired, isTrue);
        expect(petId.type, isA<IrPrimitive>());
        expect((petId.type as IrPrimitive).kind, equals(PrimitiveKind.string));
      });

      test('200 response has Pet schema', () {
        final resp200 = op.responses[200]!;
        final jsonContent = resp200.content['application/json']!;
        expect(jsonContent.schema, isA<IrTypeRef>());
        expect((jsonContent.schema as IrTypeRef).name, equals('Pet'));
      });
    });
  });

  group('OperationLowerer - content-based parameter schema', () {
    test('extracts schema from parameter content field', () {
      final doc = OpenApiDocument({
        'openapi': '3.1.0',
        'info': {'title': 'Test', 'version': '1'},
        'paths': {
          '/search': {
            'get': {
              'operationId': 'search',
              'parameters': [
                {
                  'name': 'filter',
                  'in': 'query',
                  'required': true,
                  'content': {
                    'application/json': {
                      'schema': {
                        'type': 'object',
                        'properties': {
                          'field': {'type': 'string'},
                          'value': {'type': 'string'},
                        },
                      },
                    },
                  },
                },
              ],
              'responses': {
                '200': {'description': 'ok'},
              },
            },
          },
        },
      });
      final ctx = SchemaNormalizer().normalize(doc.schemas);
      final mapper = IrMapper(ctx);
      mapper.lowerSchemas(doc.schemas);
      final opLowerer = OperationLowerer(mapper, doc: doc);
      final apis = opLowerer.lowerPaths(doc.paths);

      final op = apis.first.operations.first;
      final param = op.parameters.first;
      expect(param.name, 'filter');
      expect(param.isRequired, isTrue);
      // Should be an object type, not dynamic
      expect(param.type, isNot(isA<IrPrimitive>().having(
        (p) => p.kind, 'kind', PrimitiveKind.dynamic_,
      )));
    });
  });

  // ─── External ref handling ─────────────────────────────────────

  group('OperationLowerer - external refs', () {
    test('path-item with external \$ref throws UnsupportedError', () {
      final doc = OpenApiDocument({
        'openapi': '3.1.0',
        'info': {'title': 'Test'},
        'paths': {
          '/pets': {r'$ref': 'resources/pets.yml'},
        },
      });

      final tl = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final opLowerer = OperationLowerer(tl, doc: doc);

      expect(
        () => opLowerer.lowerPaths(doc.paths),
        throwsA(isA<UnsupportedError>()),
      );
    });

    test('operation with external \$ref throws UnsupportedError', () {
      final doc = OpenApiDocument({
        'openapi': '3.1.0',
        'info': {'title': 'Test'},
        'paths': {
          '/pets': {
            'get': {r'$ref': 'resources/pets_list.yml'},
          },
        },
      });

      final tl = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final opLowerer = OperationLowerer(tl, doc: doc);

      expect(
        () => opLowerer.lowerPaths(doc.paths),
        throwsA(isA<UnsupportedError>()),
      );
    });

    test('parameter with external \$ref throws UnsupportedError', () {
      final doc = OpenApiDocument({
        'openapi': '3.1.0',
        'info': {'title': 'Test'},
        'paths': {
          '/pets': {
            'get': {
              'operationId': 'listPets',
              'parameters': [
                {r'$ref': 'common/parameters.yml#/limit'},
              ],
              'responses': {
                '200': {'description': 'OK'},
              },
            },
          },
        },
      });

      final tl = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final opLowerer = OperationLowerer(tl, doc: doc);

      expect(
        () => opLowerer.lowerPaths(doc.paths),
        throwsA(isA<UnsupportedError>()),
      );
    });
  });

  group('primitive-only union collapse', () {
    test('oneOf of only primitives collapses to dynamic', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final t = lowerer.lowerInlineSchema({
        'oneOf': [
          {'type': 'string'},
          {'type': 'number'},
          {'type': 'boolean'},
        ],
      });
      expect(t, isA<IrPrimitive>());
      expect((t as IrPrimitive).kind, equals(PrimitiveKind.dynamic_));
    });

    test('anyOf of only primitives collapses to dynamic', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final t = lowerer.lowerInlineSchema({
        'anyOf': [
          {'type': 'string'},
          {'type': 'integer'},
        ],
      });
      expect(t, isA<IrPrimitive>());
      expect((t as IrPrimitive).kind, equals(PrimitiveKind.dynamic_));
    });

    test('collapsed oneOf includes variant types in description', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final t = lowerer.lowerInlineSchema({
        'oneOf': [
          {'type': 'string'},
          {'type': 'number'},
        ],
      });
      expect(t, isA<IrPrimitive>());
      expect(t.description, contains('String'));
      expect(t.description, contains('double'));
    });

    test('collapsed anyOf preserves original description with variant types', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final t = lowerer.lowerInlineSchema({
        'anyOf': [
          {'type': 'string'},
          {'type': 'integer'},
        ],
        'description': 'A flexible value.',
      });
      expect(t, isA<IrPrimitive>());
      expect(t.description, contains('A flexible value.'));
      expect(t.description, contains('String'));
      expect(t.description, contains('int'));
    });

    test('oneOf with objects does NOT collapse', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final t = lowerer.lowerSchema('MixedUnion', {
        'oneOf': [
          {'type': 'string'},
          {
            'type': 'object',
            'title': 'Foo',
            'properties': {
              'x': {'type': 'integer'},
            },
          },
        ],
      });
      expect(t, isA<IrUntaggedUnion>());
    });

    test('oneOf with refs does NOT collapse', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final t = lowerer.lowerSchema('RefUnion', {
        'oneOf': [
          {'type': 'string'},
          {r'$ref': '#/components/schemas/Pet'},
        ],
      });
      expect(t, isA<IrUntaggedUnion>());
    });

    test('field with primitive oneOf gets dynamic type', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final t = lowerer.lowerSchema('FilterObj', {
        'type': 'object',
        'properties': {
          'value': {
            'oneOf': [
              {'type': 'string'},
              {'type': 'number'},
              {'type': 'boolean'},
            ],
          },
        },
      }) as IrObject;
      final field = t.fields.firstWhere((f) => f.name == 'value');
      expect(field.type, isA<IrPrimitive>());
      expect((field.type as IrPrimitive).kind, equals(PrimitiveKind.dynamic_));
    });
  });

  group('inline schema naming', () {
    test('inline object with title uses title as name', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final t = lowerer.lowerInlineSchema({
        'type': 'object',
        'title': 'MyCustomWidget',
        'properties': {
          'color': {'type': 'string'},
        },
      });
      expect(t, isA<IrObject>());
      expect((t as IrObject).name, equals('MyCustomWidget'));
    });

    test('oneOf inline variants use title when available', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      lowerer.lowerSchema('EventUnion', {
        'oneOf': [
          {
            'type': 'object',
            'title': 'CreatedEvent',
            'properties': {
              'event': {
                'type': 'string',
                'enum': ['created'],
              },
              'data': {'type': 'string'},
            },
            'required': ['event', 'data'],
          },
          {
            'type': 'object',
            'title': 'DeletedEvent',
            'properties': {
              'event': {
                'type': 'string',
                'enum': ['deleted'],
              },
              'id': {'type': 'integer'},
            },
            'required': ['event', 'id'],
          },
        ],
      });
      // Variants should use their title, not InlineObject
      expect(lowerer.typeRegistry, contains('CreatedEvent'));
      expect(lowerer.typeRegistry, contains('DeletedEvent'));
      expect(
        lowerer.typeRegistry.keys.where((k) => k.startsWith('InlineObject')),
        isEmpty,
      );
    });

    test('oneOf inline variants use parent name as fallback', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      lowerer.lowerSchema('StreamEvent', {
        'oneOf': [
          {
            'type': 'object',
            'properties': {
              'event': {
                'type': 'string',
                'enum': ['started'],
              },
            },
            'required': ['event'],
          },
          {
            'type': 'object',
            'properties': {
              'event': {
                'type': 'string',
                'enum': ['stopped'],
              },
            },
            'required': ['event'],
          },
        ],
      });
      // Should use parent-derived names, not InlineObject
      expect(
        lowerer.typeRegistry.keys.where((k) => k.startsWith('InlineObject')),
        isEmpty,
      );
      // Should contain names derived from parent
      expect(
        lowerer.typeRegistry.keys.where(
          (k) => k.startsWith('StreamEvent'),
        ),
        hasLength(greaterThanOrEqualTo(3)), // StreamEvent + 2 variants
      );
    });

    test('anyOf inline variants use title when available', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      lowerer.lowerSchema('Shape', {
        'anyOf': [
          {
            'type': 'object',
            'title': 'Circle',
            'properties': {
              'radius': {'type': 'number'},
            },
          },
          {
            'type': 'object',
            'title': 'Square',
            'properties': {
              'side': {'type': 'number'},
            },
          },
        ],
      });
      expect(lowerer.typeRegistry, contains('Circle'));
      expect(lowerer.typeRegistry, contains('Square'));
      expect(
        lowerer.typeRegistry.keys.where((k) => k.startsWith('InlineObject')),
        isEmpty,
      );
    });

    test('anyOf inline variants use parent name as fallback', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      lowerer.lowerSchema('InputData', {
        'anyOf': [
          {
            'type': 'object',
            'properties': {
              'text': {'type': 'string'},
            },
          },
          {
            'type': 'object',
            'properties': {
              'url': {'type': 'string', 'format': 'uri'},
            },
          },
        ],
      });
      expect(
        lowerer.typeRegistry.keys.where((k) => k.startsWith('InlineObject')),
        isEmpty,
      );
      expect(
        lowerer.typeRegistry.keys.where((k) => k.startsWith('InputData')),
        hasLength(greaterThanOrEqualTo(3)), // InputData + 2 variants
      );
    });

    test('oneOf inline variants use single-value enum for naming', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      lowerer.lowerSchema('RunStreamEvent', {
        'oneOf': [
          {
            'type': 'object',
            'properties': {
              'event': {
                'type': 'string',
                'enum': ['thread.run.created'],
              },
              'data': {'type': 'string'},
            },
            'required': ['event', 'data'],
          },
          {
            'type': 'object',
            'properties': {
              'event': {
                'type': 'string',
                'enum': ['thread.run.completed'],
              },
              'data': {'type': 'string'},
            },
            'required': ['event', 'data'],
          },
        ],
      });
      expect(
        lowerer.typeRegistry,
        contains('RunStreamEventThreadRunCreated'),
      );
      expect(
        lowerer.typeRegistry,
        contains('RunStreamEventThreadRunCompleted'),
      );
      expect(
        lowerer.typeRegistry.keys.where((k) => k.contains('Variant')),
        isEmpty,
      );
    });

    test('discriminated union inline variants use title', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      lowerer.lowerSchema('Animal', {
        'oneOf': [
          {
            'type': 'object',
            'title': 'DogAnimal',
            'properties': {
              'type': {
                'type': 'string',
                'enum': ['dog'],
              },
              'bark': {'type': 'boolean'},
            },
            'required': ['type'],
          },
          {
            'type': 'object',
            'title': 'CatAnimal',
            'properties': {
              'type': {
                'type': 'string',
                'enum': ['cat'],
              },
              'purr': {'type': 'boolean'},
            },
            'required': ['type'],
          },
        ],
        'discriminator': {
          'propertyName': 'type',
        },
      });
      expect(lowerer.typeRegistry, contains('DogAnimal'));
      expect(lowerer.typeRegistry, contains('CatAnimal'));
      expect(
        lowerer.typeRegistry.keys.where((k) => k.startsWith('InlineObject')),
        isEmpty,
      );
    });

    test('inferred discriminator mapping uses original schema names, not Dart names', () {
      final ctx = SchemaNormalizer().normalize({
        'Animal': {
          'oneOf': [
            {r'$ref': '#/components/schemas/Cat'},
            {r'$ref': '#/components/schemas/__dog__'},
          ],
          'discriminator': {
            'propertyName': 'type',
          },
        },
        'Cat': {
          'type': 'object',
          'properties': {
            'type': {'type': 'string'},
            'purr': {'type': 'boolean'},
          },
        },
        '__dog__': {
          'type': 'object',
          'properties': {
            'type': {'type': 'string'},
            'bark': {'type': 'boolean'},
          },
        },
      });
      final lowerer = IrMapper(ctx);
      lowerer.lowerSchemas(ctx.nameMapping.map((k, v) => MapEntry(k, {
        'type': 'object',
        'properties': {
          'type': {'type': 'string'},
        },
      })));
      // Lower the union schema
      lowerer.lowerSchema('Animal', {
        'oneOf': [
          {r'$ref': '#/components/schemas/Cat'},
          {r'$ref': '#/components/schemas/__dog__'},
        ],
        'discriminator': {
          'propertyName': 'type',
        },
      });
      final union = lowerer.typeRegistry['Animal']! as IrDiscriminatedUnion;
      // Mapping keys should be the original schema names (what appears in JSON),
      // not the Dart type names.
      expect(union.mapping.keys, contains('Cat'));
      expect(union.mapping.keys, contains('__dog__'));
      expect(union.mapping.keys, isNot(contains('Dog')));
    });
  });

  group('Vendor extensions (x- fields)', () {
    test('x- fields at schema level are ignored', () {
      final tl = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final types = tl.lowerSchemas({
        'Pet': {
          'type': 'object',
          'x-custom-annotation': 'internal-only',
          'x-deprecated-since': '2024-01-01',
          'properties': {
            'name': {'type': 'string'},
            'status': {
              'type': 'string',
              'x-enum-descriptions': ['Available', 'Pending', 'Sold'],
              'enum': ['available', 'pending', 'sold'],
            },
          },
          'required': ['name'],
        },
      });

      expect(types, hasLength(2)); // Pet + PetStatus enum
      final pet = types.whereType<IrObject>().first;
      expect(pet.name, equals('Pet'));
      expect(pet.fields, hasLength(2)); // name, status - no x- fields
      expect(pet.fields.map((f) => f.name), containsAll(['name', 'status']));
    });

    test('x- fields at path and operation level are ignored', () {
      final doc = OpenApiDocument({
        'openapi': '3.1.0',
        'info': {'title': 'Test', 'version': '1.0.0'},
        'paths': {
          '/pets': {
            'x-rate-limit': 100,
            'x-internal': true,
            'get': {
              'operationId': 'listPets',
              'x-codegen-request-body-name': 'body',
              'x-throttling-tier': 'free',
              'tags': ['pets'],
              'parameters': [
                {
                  'name': 'limit',
                  'in': 'query',
                  'x-example': 10,
                  'schema': {'type': 'integer'},
                },
              ],
              'responses': {
                '200': {
                  'description': 'OK',
                  'x-response-name': 'PetList',
                },
              },
            },
          },
        },
        'components': {
          'schemas': {
            'Pet': {
              'type': 'object',
              'x-expandable': true,
              'properties': {
                'id': {'type': 'integer'},
              },
            },
          },
        },
      });

      final tl = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final types = tl.lowerSchemas(doc.schemas);
      final opLowerer = OperationLowerer(tl, doc: doc);
      final apis = opLowerer.lowerPaths(doc.paths);

      // Schema lowered correctly despite x- fields
      expect(types, hasLength(1));
      final pet = types.first as IrObject;
      expect(pet.fields, hasLength(1));
      expect(pet.fields.first.name, equals('id'));

      // Operation lowered correctly despite x- fields
      expect(apis, hasLength(1));
      final api = apis.first;
      expect(api.operations, hasLength(1));
      final op = api.operations.first;
      expect(op.operationId, equals('listPets'));
      expect(op.parameters, hasLength(1));
      expect(op.parameters.first.name, equals('limit'));
    });

    test('x- fields at top level and info are ignored', () {
      final doc = OpenApiDocument({
        'openapi': '3.1.0',
        'info': {
          'title': 'Test',
          'version': '1.0.0',
          'x-logo': {'url': 'https://example.com/logo.png'},
        },
        'x-tagGroups': [
          {'name': 'General', 'tags': ['pets']},
        ],
        'paths': {
          '/pets': {
            'get': {
              'operationId': 'listPets',
              'tags': ['pets'],
              'responses': {
                '200': {'description': 'OK'},
              },
            },
          },
        },
      });

      final tl = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final opLowerer = OperationLowerer(tl, doc: doc);
      final apis = opLowerer.lowerPaths(doc.paths);

      expect(apis, hasLength(1));
      expect(apis.first.operations.first.operationId, equals('listPets'));
    });
  });

  group('single-value enum anyOf collapse', () {
    test('anyOf of single-value string enums collapses to one enum', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final types = lowerer.lowerSchemas({
        'SameSite': {
          'anyOf': [
            {'type': 'string', 'enum': ['Strict']},
            {'type': 'string', 'enum': ['Lax']},
            {'type': 'string', 'enum': ['None']},
          ],
        },
      });

      expect(types, hasLength(1));
      final t = types.first;
      expect(t, isA<IrEnum>());
      final e = t as IrEnum;
      expect(e.name, equals('SameSite'));
      expect(e.values, equals(['Strict', 'Lax', 'None']));
    });

    test('oneOf of single-value string enums collapses to one enum', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final types = lowerer.lowerSchemas({
        'Priority': {
          'oneOf': [
            {'type': 'string', 'enum': ['High']},
            {'type': 'string', 'enum': ['Medium']},
            {'type': 'string', 'enum': ['Low']},
          ],
        },
      });

      expect(types, hasLength(1));
      final t = types.first;
      expect(t, isA<IrEnum>());
      final e = t as IrEnum;
      expect(e.name, equals('Priority'));
      expect(e.values, equals(['High', 'Medium', 'Low']));
    });

    test('inline anyOf of single-value enums collapses to enum', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final types = lowerer.lowerSchemas({
        'Cookie': {
          'type': 'object',
          'properties': {
            'sameSite': {
              'anyOf': [
                {'type': 'string', 'enum': ['Strict']},
                {'type': 'string', 'enum': ['Lax']},
                {'type': 'string', 'enum': ['None']},
              ],
            },
          },
        },
      });

      final cookie = types.whereType<IrObject>().first;
      final field = cookie.fields.firstWhere((f) => f.name == 'sameSite');
      expect(field.type, isA<IrEnum>());
      expect((field.type as IrEnum).values, equals(['Strict', 'Lax', 'None']));
    });

    test('mixed single-value enums and other types does NOT collapse', () {
      final lowerer = IrMapper(NormalizationContext(
          nameMapping: {},
          discriminatorProperties: {},
          usedNames: {},
        ));
      final types = lowerer.lowerSchemas({
        'Mixed': {
          'anyOf': [
            {'type': 'string', 'enum': ['Strict']},
            {'type': 'integer'},
          ],
        },
      });

      expect(types.first, isNot(isA<IrEnum>()));
    });
  });

  // ─── SchemaNormalizer ─────────────────────────────────────────

  group('SchemaNormalizer', () {
    test('computes name mappings for all schemas', () {
      final schemas = <String, dynamic>{
        'Pet': {'type': 'object', 'properties': {'name': {'type': 'string'}}},
        'pet-store': {
          'type': 'object',
          'properties': {'id': {'type': 'integer'}},
        },
      };
      final ctx = SchemaNormalizer().normalize(schemas);

      expect(ctx.nameMapping['Pet'], equals('Pet'));
      expect(ctx.nameMapping['pet-store'], equals('PetStore'));
      expect(ctx.usedNames, containsAll(['Pet', 'PetStore']));
    });

    test('detects discriminator properties from explicit mapping', () {
      final schemas = <String, dynamic>{
        'Shape': {
          'oneOf': [
            {r'$ref': '#/components/schemas/Circle'},
            {r'$ref': '#/components/schemas/Square'},
          ],
          'discriminator': {
            'propertyName': 'type',
            'mapping': {
              'circle': '#/components/schemas/Circle',
              'square': '#/components/schemas/Square',
            },
          },
        },
        'Circle': {
          'type': 'object',
          'properties': {
            'type': {'type': 'string'},
            'radius': {'type': 'number'},
          },
        },
        'Square': {
          'type': 'object',
          'properties': {
            'type': {'type': 'string'},
            'side': {'type': 'number'},
          },
        },
      };
      final ctx = SchemaNormalizer().normalize(schemas);

      expect(ctx.discriminatorProperties['Circle'], equals('type'));
      expect(ctx.discriminatorProperties['Square'], equals('type'));
    });

    test('detects discriminator properties from oneOf refs (no explicit mapping)', () {
      final schemas = <String, dynamic>{
        'Animal': {
          'oneOf': [
            {r'$ref': '#/components/schemas/Cat'},
            {r'$ref': '#/components/schemas/Dog'},
          ],
          'discriminator': {
            'propertyName': 'species',
          },
        },
        'Cat': {
          'type': 'object',
          'properties': {'species': {'type': 'string'}},
        },
        'Dog': {
          'type': 'object',
          'properties': {'species': {'type': 'string'}},
        },
      };
      final ctx = SchemaNormalizer().normalize(schemas);

      expect(ctx.discriminatorProperties['Cat'], equals('species'));
      expect(ctx.discriminatorProperties['Dog'], equals('species'));
    });

    test('deduplicates name collisions', () {
      final schemas = <String, dynamic>{
        'Status': {'type': 'string', 'enum': ['active']},
        'status': {'type': 'string', 'enum': ['pending']},
      };
      final ctx = SchemaNormalizer().normalize(schemas);

      // Both map to 'Status' in PascalCase, so one gets deduplicated
      final names = ctx.nameMapping.values.toSet();
      expect(names.length, equals(2));
      expect(names, contains('Status'));
    });

    test('avoids dart:core type name collisions', () {
      final schemas = <String, dynamic>{
        'Error': {'type': 'object', 'properties': {'msg': {'type': 'string'}}},
      };
      final ctx = SchemaNormalizer().normalize(schemas);

      expect(ctx.nameMapping['Error'], equals('ErrorModel'));
    });

    test('skips non-map schemas', () {
      final schemas = <String, dynamic>{
        'Valid': {'type': 'object', 'properties': {}},
        'Invalid': true,
      };
      final ctx = SchemaNormalizer().normalize(schemas);

      expect(ctx.nameMapping, contains('Valid'));
      expect(ctx.nameMapping, isNot(contains('Invalid')));
    });

    test('context is consumed correctly by IrMapper', () {
      final schemas = <String, dynamic>{
        'Pet': {
          'type': 'object',
          'properties': {
            'name': {'type': 'string'},
          },
        },
      };
      final ctx = SchemaNormalizer().normalize(schemas);
      final mapper = IrMapper(ctx);
      final types = mapper.lowerSchemas(schemas);

      expect(types, hasLength(1));
      expect(types.first, isA<IrObject>());
      expect((types.first as IrObject).name, equals('Pet'));
    });
  });
}
