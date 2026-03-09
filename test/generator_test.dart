import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'package:degenerate/src/generator.dart';

void main() {
  group('Generator end-to-end', () {
    late Directory tempDir;

    setUp(() {
      tempDir = Directory.systemTemp.createTempSync('degenerate_test_');
    });

    tearDown(() {
      tempDir.deleteSync(recursive: true);
    });

    test('generates valid Dart from petstore-v3.0-oai.yaml', () async {
      final specPath = p.join(
        Directory.current.path,
        'test',
        'fixtures',
        'public',
        'petstore-v3.0-oai.yaml',
      );

      // Verify fixture exists
      expect(File(specPath).existsSync(), isTrue,
          reason: 'petstore-v3.0-oai.yaml fixture must exist');

      final config = GeneratorConfig(
        inputPath: specPath,
        outputDir: tempDir.path,
        packageName: 'petstore_api',
        verbose: true,
      );

      final generator = Generator(config);
      await generator.generate();

      // Assert expected files exist
      final expectedFiles = [
        'lib/src/models/pet.dart',
        'lib/src/models/error_model.dart',
        'lib/src/apis/pets_api.dart',
        'lib/src/client/api_client.dart',
        'lib/src/client/api_config.dart',
        'lib/src/client/api_result.dart',
        'lib/petstore_api.dart',
        'pubspec.yaml',
      ];

      for (final relativePath in expectedFiles) {
        final file = File(p.join(tempDir.path, relativePath));
        expect(file.existsSync(), isTrue,
            reason: 'Expected file to exist: $relativePath');
      }

      // Assert generated code contains expected patterns
      final petModel =
          File(p.join(tempDir.path, 'lib/src/models/pet.dart'))
              .readAsStringSync();
      expect(petModel, contains('class Pet'));
      expect(petModel, contains('fromJson'));
      expect(petModel, contains('toJson'));

      final errorModel =
          File(p.join(tempDir.path, 'lib/src/models/error_model.dart'))
              .readAsStringSync();
      expect(errorModel, contains('class ErrorModel'));
      expect(errorModel, contains('fromJson'));
      expect(errorModel, contains('toJson'));

      final petsApi =
          File(p.join(tempDir.path, 'lib/src/apis/pets_api.dart'))
              .readAsStringSync();
      expect(petsApi, contains('class PetsApi'));
      expect(petsApi, contains('listPets'));
      expect(petsApi, contains('createPets'));
      expect(petsApi, contains('showPetById'));

      final barrel =
          File(p.join(tempDir.path, 'lib/petstore_api.dart'))
              .readAsStringSync();
      expect(barrel, contains("export 'src/models/pet.dart'"));
      expect(barrel, contains("export 'src/apis/pets_api.dart'"));

      // Run dart analyze on generated output
      // First, run dart pub get
      final pubGetResult = Process.runSync(
        'dart',
        ['pub', 'get'],
        workingDirectory: tempDir.path,
      );
      expect(pubGetResult.exitCode, equals(0),
          reason:
              'dart pub get failed:\nstdout: ${pubGetResult.stdout}\nstderr: ${pubGetResult.stderr}');

      // Then run dart analyze
      final analyzeResult = Process.runSync(
        'dart',
        ['analyze', '--fatal-infos'],
        workingDirectory: tempDir.path,
      );

      // Print output for debugging
      if (analyzeResult.exitCode != 0) {
        // ignore: avoid_print
        print('dart analyze stdout:\n${analyzeResult.stdout}');
        // ignore: avoid_print
        print('dart analyze stderr:\n${analyzeResult.stderr}');

        // Print all generated files for debugging
        _printGeneratedFiles(tempDir);
      }

      expect(analyzeResult.exitCode, equals(0),
          reason:
              'dart analyze failed with errors:\n${analyzeResult.stdout}\n${analyzeResult.stderr}');
    });

    test('dry run does not write files', () async {
      final specPath = p.join(
        Directory.current.path,
        'test',
        'fixtures',
        'public',
        'petstore-v3.0-oai.yaml',
      );

      final outputDir = p.join(tempDir.path, 'dry_run_output');

      final config = GeneratorConfig(
        inputPath: specPath,
        outputDir: outputDir,
        packageName: 'petstore_api',
        dryRun: true,
      );

      final generator = Generator(config);
      await generator.generate();

      // The output directory should not exist or be empty
      final dir = Directory(outputDir);
      expect(dir.existsSync(), isFalse,
          reason: 'Dry run should not create output directory');
    });

    test('throws on missing input file', () async {
      final config = GeneratorConfig(
        inputPath: '/nonexistent/file.yaml',
      );

      final generator = Generator(config);
      expect(
        () => generator.generate(),
        throwsA(isA<GeneratorException>()),
      );
    });

    test('clean removes existing output directory before generating', () async {
      final specPath = p.join(
        Directory.current.path,
        'test',
        'fixtures',
        'public',
        'petstore-v3.0-oai.yaml',
      );

      // Create a stale file in the output directory
      final staleFile = File(p.join(tempDir.path, 'lib/src/models/stale.dart'));
      staleFile.parent.createSync(recursive: true);
      staleFile.writeAsStringSync('// stale file');

      final config = GeneratorConfig(
        inputPath: specPath,
        outputDir: tempDir.path,
        packageName: 'petstore_api',
        clean: true,
      );

      final generator = Generator(config);
      await generator.generate();

      // The stale file should be gone
      expect(staleFile.existsSync(), isFalse,
          reason: 'Stale file should be removed when clean is true');

      // But generated files should exist
      final petModel = File(p.join(tempDir.path, 'lib/src/models/pet.dart'));
      expect(petModel.existsSync(), isTrue,
          reason: 'Generated files should still be created');
    });

    test('without clean preserves existing files', () async {
      final specPath = p.join(
        Directory.current.path,
        'test',
        'fixtures',
        'public',
        'petstore-v3.0-oai.yaml',
      );

      // Create a stale file in the output directory
      final staleFile = File(p.join(tempDir.path, 'lib/src/models/stale.dart'));
      staleFile.parent.createSync(recursive: true);
      staleFile.writeAsStringSync('// stale file');

      final config = GeneratorConfig(
        inputPath: specPath,
        outputDir: tempDir.path,
        packageName: 'petstore_api',
        // clean defaults to false
      );

      final generator = Generator(config);
      await generator.generate();

      // The stale file should still be there
      expect(staleFile.existsSync(), isTrue,
          reason: 'Stale file should be preserved when clean is false');
    });

    test('infers package name from spec title', () async {
      final specPath = p.join(
        Directory.current.path,
        'test',
        'fixtures',
        'public',
        'petstore-v3.0-oai.yaml',
      );

      // Generate without explicit package name
      final config = GeneratorConfig(
        inputPath: specPath,
        outputDir: tempDir.path,
      );

      final generator = Generator(config);
      await generator.generate();

      // The inferred name from "Swagger Petstore" should be "swagger_petstore"
      final barrelFile =
          File(p.join(tempDir.path, 'lib/swagger_petstore.dart'));
      expect(barrelFile.existsSync(), isTrue,
          reason: 'Barrel file should use inferred package name');
    });
  });
}

void _printGeneratedFiles(Directory dir) {
  for (final entity in dir.listSync(recursive: true)) {
    if (entity is File && entity.path.endsWith('.dart')) {
      // ignore: avoid_print
      print('\n=== ${p.relative(entity.path, from: dir.path)} ===');
      // ignore: avoid_print
      print(entity.readAsStringSync());
    }
  }
}
