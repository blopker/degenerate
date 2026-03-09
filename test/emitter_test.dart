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
import 'package:degenerate/src/emitter/file_emitter.dart';

/// Full pipeline helper: parse YAML -> lower types -> lower operations.
({
  List<IrType> types,
  List<IrApi> apis,
  TypeLowerer typeLowerer,
}) _lowerPetstore() {
  final yamlContent = File('test/fixtures/public/petstore-v3.0-oai.yaml').readAsStringSync();
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

      test('emits final class ErrorModel (avoids shadowing dart:core Error)', () {
        expect(source, contains('final class ErrorModel'));
      });

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
      final union = IrDiscriminatedUnion(
        'Shape',
        'type',
        {
          'circle': IrObject('Circle', [
            IrField('type', 'type', IrPrimitive(PrimitiveKind.string),
                isRequired: true),
            IrField('radius', 'radius', IrPrimitive(PrimitiveKind.double),
                isRequired: true),
          ], requiredFields: ['type', 'radius']),
          'rectangle': IrObject('Rectangle', [
            IrField('type', 'type', IrPrimitive(PrimitiveKind.string),
                isRequired: true),
            IrField('width', 'width', IrPrimitive(PrimitiveKind.double),
                isRequired: true),
            IrField('height', 'height', IrPrimitive(PrimitiveKind.double),
                isRequired: true),
          ], requiredFields: ['type', 'width', 'height']),
        },
      );

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
        'dog': IrObject('Dog', [
          IrField('kind', 'kind', IrPrimitive(PrimitiveKind.string),
              isRequired: true),
          IrField('breed', 'breed', IrPrimitive(PrimitiveKind.string),
              isRequired: true),
        ], requiredFields: ['kind', 'breed']),
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
      final library = Library((b) => b
        ..directives.add(Directive.import('dart:convert'))
        ..body.addAll(specs)
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
      expect(barrel, contains("export 'package:degenerate_runtime/degenerate_runtime.dart'"));
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
      expect(sdkFile, isNotNull,
          reason: 'Should generate root SDK facade file');
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
      expect(apiSource, contains("import 'package:degenerate_runtime/degenerate_runtime.dart'"));
    });

    test('SDK facade imports degenerate_runtime', () {
      final sdkFile = files['lib/src/client/petstore_client_api.dart']!;
      expect(sdkFile, contains("import 'package:degenerate_runtime/degenerate_runtime.dart'"));
    });
  });
}
