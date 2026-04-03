import 'dart:io';

import 'package:degenerate/src/parser/openapi_document.dart';
import 'package:test/test.dart';

void main() {
  late OpenApiDocument doc;

  setUp(() {
    final yamlContent =
        File('test/fixtures/public/petstore-v3.0-oai.yaml').readAsStringSync();
    doc = OpenApiDocument.parseYaml(yamlContent);
  });

  group('OpenApiDocument YAML parsing', () {
    test('parses version correctly', () {
      expect(doc.version, equals('3.0.0'));
    });

    test('parses title correctly', () {
      expect(doc.title, equals('Swagger Petstore'));
    });

    test('parses schemas', () {
      final schemas = doc.schemas;
      expect(schemas, contains('Pet'));
      expect(schemas, contains('Pets'));
      expect(schemas, contains('Error'));
    });

    test('parses paths', () {
      final paths = doc.paths;
      expect(paths, contains('/pets'));
      expect(paths, contains('/pets/{petId}'));
    });

    test('parses servers', () {
      final servers = doc.servers;
      expect(servers, hasLength(1));
      expect(servers.first['url'], equals('http://petstore.swagger.io/v1'));
    });

    test('schemas are plain Dart maps, not YamlMaps', () {
      final pet = doc.schemas['Pet'] as Map<String, dynamic>;
      expect(pet, isA<Map<String, dynamic>>());
      expect(pet['properties'], isA<Map<String, dynamic>>());
    });
  });

  group('resolveRef', () {
    test('resolves Pet schema ref', () {
      final pet = doc.resolveRef('#/components/schemas/Pet');
      expect(pet, isA<Map<String, dynamic>>());
      final petMap = pet as Map<String, dynamic>;
      expect(petMap['type'], equals('object'));
      expect(
        petMap['properties'] as Map<String, dynamic>,
        contains('name'),
      );
    });

    test('resolves Error schema ref', () {
      final error = doc.resolveRef('#/components/schemas/Error');
      expect(error, isA<Map<String, dynamic>>());
      final errorMap = error as Map<String, dynamic>;
      expect(
        errorMap['required'] as List,
        containsAll(['code', 'message']),
      );
    });

    test('returns null for missing ref', () {
      expect(doc.resolveRef('#/components/schemas/DoesNotExist'), isNull);
    });

    test('throws for invalid ref format', () {
      expect(
        () => doc.resolveRef('not-a-ref'),
        throwsA(isA<UnsupportedError>()),
      );
    });

    test('throws for external file ref', () {
      expect(
        () => doc.resolveRef('external.yaml#/components/schemas/Pet'),
        throwsA(isA<UnsupportedError>()),
      );
    });

    test('throws for URL-based external ref', () {
      expect(
        () => doc.resolveRef('https://example.com/spec.yaml#/components/schemas/Pet'),
        throwsA(isA<UnsupportedError>()),
      );
    });
  });

  group('JSON parsing', () {
    test('parses JSON string', () {
      const jsonStr = '''
      {
        "openapi": "3.1.0",
        "info": { "title": "Test API" },
        "paths": {},
        "components": { "schemas": {} }
      }
      ''';
      final jsonDoc = OpenApiDocument.parseJson(jsonStr);
      expect(jsonDoc.version, equals('3.1.0'));
      expect(jsonDoc.title, equals('Test API'));
    });
  });

  group('missing components', () {
    test('returns empty schemas when components is missing', () {
      final minimal = OpenApiDocument({'openapi': '3.0.0', 'info': <String, dynamic>{}});
      expect(minimal.schemas, isEmpty);
    });

    test('returns empty paths when paths is missing', () {
      final minimal = OpenApiDocument({'openapi': '3.0.0', 'info': <String, dynamic>{}});
      expect(minimal.paths, isEmpty);
    });

    test('returns empty servers when servers is missing', () {
      final minimal = OpenApiDocument({'openapi': '3.0.0', 'info': <String, dynamic>{}});
      expect(minimal.servers, isEmpty);
    });
  });
}
