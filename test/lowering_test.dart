import 'dart:io';

import 'package:test/test.dart';

import 'package:degenerate/src/ir/ir_types.dart';
import 'package:degenerate/src/lowering/type_lowerer.dart';
import 'package:degenerate/src/lowering/operation_lowerer.dart';
import 'package:degenerate/src/parser/openapi_document.dart';

/// Full pipeline helper: parse YAML → lower types → lower operations.
({List<IrType> types, List<IrApi> apis, TypeLowerer typeLowerer})
_lowerPetstore() {
  final yamlContent = File(
    'test/fixtures/public/petstore-v3.0-oai.yaml',
  ).readAsStringSync();
  final doc = OpenApiDocument.parseYaml(yamlContent);

  final typeLowerer = TypeLowerer();
  final types = typeLowerer.lowerSchemas(doc.schemas);

  final opLowerer = OperationLowerer(typeLowerer);
  final apis = opLowerer.lowerPaths(doc.paths);

  return (types: types, apis: apis, typeLowerer: typeLowerer);
}

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

  // ─── Type lowering ──────────────────────────────────────────

  group('TypeLowerer', () {
    test('registers all schemas in typeRegistry', () {
      expect(typeLowerer.typeRegistry, contains('Pet'));
      expect(typeLowerer.typeRegistry, contains('Pets'));
      expect(typeLowerer.typeRegistry, contains('ErrorModel'));
      expect(types, hasLength(3));
    });

    group('Pet schema', () {
      late IrObject pet;

      setUp(() {
        pet = typeLowerer.typeRegistry['Pet']! as IrObject;
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
        error = typeLowerer.typeRegistry['ErrorModel']! as IrObject;
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
        final pets = typeLowerer.typeRegistry['Pets']!;
        expect(pets, isA<IrList>());
      });

      test('items is IrTypeRef pointing to Pet', () {
        final pets = typeLowerer.typeRegistry['Pets']! as IrList;
        expect(pets.items, isA<IrTypeRef>());
        expect((pets.items as IrTypeRef).name, equals('Pet'));
      });
    });

    group('primitive type mapping', () {
      final lowerer = TypeLowerer();

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
      final lowerer = TypeLowerer();

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
      final lowerer = TypeLowerer();

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
        expect((m.values as IrPrimitive).kind, equals(PrimitiveKind.object));
      });

      test('untyped schema falls back to Object?', () {
        final t = lowerer.lowerInlineSchema({});

        expect(t, isA<IrPrimitive>());
        expect((t as IrPrimitive).kind, equals(PrimitiveKind.object));
      });

      test('additionalProperties true falls back to Map<String, Object?>', () {
        final t = lowerer.lowerInlineSchema({
          'type': 'object',
          'additionalProperties': true,
        });

        expect(t, isA<IrMap>());
        final m = t as IrMap;
        expect((m.values as IrPrimitive).kind, equals(PrimitiveKind.object));
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
          equals(PrimitiveKind.object),
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
          TypeLowerer(),
          doc: doc,
        ).lowerPaths(doc.paths);

        final param = apis.single.operations.single.parameters.single;
        expect(param.type, isA<IrPrimitive>());
        expect((param.type as IrPrimitive).kind, equals(PrimitiveKind.object));
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

      final tl = TypeLowerer();
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

      final tl = TypeLowerer();
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

      final tl = TypeLowerer();
      final opLowerer = OperationLowerer(tl, doc: doc);

      expect(
        () => opLowerer.lowerPaths(doc.paths),
        throwsA(isA<UnsupportedError>()),
      );
    });
  });
}
