import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'package:degenerate/src/generator.dart';

/// Set to true (or pass --update-snapshots) to regenerate snapshot files.
final _updateSnapshots =
    Platform.environment['UPDATE_SNAPSHOTS'] == '1' ||
    Platform.environment['UPDATE_SNAPSHOTS'] == 'true';

final _fixturesDir =
    p.join(Directory.current.path, 'test', 'fixtures');
final _snapshotsDir = p.join(Directory.current.path, 'snapshots');

/// Convert a spec filename to a valid Dart package name.
/// e.g. '03-operations-parameters-request-body' → 'spec_03_operations_parameters_request_body'
String _packageNameFromSpec(String groupName, String specName) {
  final prefix = groupName == 'specs' ? 'spec' : 'pub';
  final sanitized = specName.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '_').toLowerCase();
  return '${prefix}_$sanitized';
}

/// Whether a file path should be included in snapshot comparison.
/// Excludes dart pub artifacts and other non-generated files.
bool _isSnapshotFile(String relativePath) {
  if (relativePath.startsWith('.dart_tool')) return false;
  if (relativePath == 'pubspec.lock') return false;
  return true;
}

/// Collect spec files from a directory.
List<File> _specFiles(String dirPath) {
  final dir = Directory(dirPath);
  if (!dir.existsSync()) return [];
  return dir
      .listSync()
      .whereType<File>()
      .where((f) =>
          f.path.endsWith('.json') ||
          f.path.endsWith('.yaml') ||
          f.path.endsWith('.yml'))
      .toList()
    ..sort((a, b) => p.basename(a.path).compareTo(p.basename(b.path)));
}

void _snapshotTests(String groupName, List<File> specFiles, {bool workspace = false}) {
  group(groupName, () {
    for (final specFile in specFiles) {
      final specName = p.basenameWithoutExtension(specFile.path);

      test(specName, () async {
        final tempDir =
            Directory.systemTemp.createTempSync('degenerate_snap_');
        try {
          final packageName = _packageNameFromSpec(groupName, specName);
          final config = GeneratorConfig(
            inputPath: specFile.path,
            outputDir: tempDir.path,
            packageName: packageName,
            runtimePath: '../../../packages/degenerate_runtime',
            workspace: workspace,
          );

          final generator = Generator(config);
          await generator.generate();

          final snapshotDir = p.join(_snapshotsDir, groupName, specName);

          // Collect all generated files
          final generated = <String, String>{};
          for (final entity in tempDir.listSync(recursive: true)) {
            if (entity is File) {
              final relativePath =
                  p.relative(entity.path, from: tempDir.path);
              if (!_isSnapshotFile(relativePath)) continue;
              generated[relativePath] = entity.readAsStringSync();
            }
          }

          if (_updateSnapshots) {
            // Write snapshot files
            final dir = Directory(snapshotDir);
            if (dir.existsSync()) {
              dir.deleteSync(recursive: true);
            }
            for (final entry in generated.entries) {
              final outFile = File(p.join(snapshotDir, entry.key));
              outFile.parent.createSync(recursive: true);
              outFile.writeAsStringSync(entry.value);
            }
            // Run dart pub get so the snapshot is ready for testing
            final pubGet = await Process.run(
              'dart',
              ['pub', 'get'],
              workingDirectory: snapshotDir,
            );
            if (pubGet.exitCode != 0) {
              fail(
                'dart pub get failed for $specName:\n'
                'stdout: ${pubGet.stdout}\n'
                'stderr: ${pubGet.stderr}',
              );
            }
            // ignore: avoid_print
            print('  Updated ${generated.length} snapshot files for $specName');
          } else {
            // Compare against existing snapshots
            final snapshotDirObj = Directory(snapshotDir);
            expect(snapshotDirObj.existsSync(), isTrue,
                reason:
                    'Snapshot directory missing for $specName. '
                    'Run with UPDATE_SNAPSHOTS=1 to create.');

            // Collect existing snapshots
            final existing = <String, String>{};
            for (final entity
                in snapshotDirObj.listSync(recursive: true)) {
              if (entity is File) {
                final relativePath =
                    p.relative(entity.path, from: snapshotDir);
                if (!_isSnapshotFile(relativePath)) continue;
                existing[relativePath] = entity.readAsStringSync();
              }
            }

            // Check that the same set of files was generated
            final generatedKeys = generated.keys.toSet();
            final existingKeys = existing.keys.toSet();
            final missing = existingKeys.difference(generatedKeys);
            final extra = generatedKeys.difference(existingKeys);

            expect(missing, isEmpty,
                reason: 'Files in snapshot but not generated: $missing');
            expect(extra, isEmpty,
                reason: 'Files generated but not in snapshot: $extra');

            // Compare each file's content
            for (final path in generatedKeys) {
              expect(generated[path], equals(existing[path]),
                  reason:
                      'Snapshot mismatch for $specName/$path. '
                      'Run with UPDATE_SNAPSHOTS=1 to update.');
            }
          }
        } finally {
          tempDir.deleteSync(recursive: true);
        }
      });
    }
  });
}

/// Specs that use external $refs and are expected to fail generation.
const _externalRefSpecs = {'digitalocean-v2'};

void main() {
  _snapshotTests('specs', _specFiles(p.join(_fixturesDir, 'specs')), workspace: true);
  _snapshotTests(
    'public',
    _specFiles(p.join(_fixturesDir, 'public'))
        .where((f) => !_externalRefSpecs.contains(p.basenameWithoutExtension(f.path)))
        .toList(),
  );

  group('public - external refs', () {
    for (final specName in _externalRefSpecs) {
      test('$specName fails with FileSystemException for missing refs', () async {
        final specFile = _specFiles(p.join(_fixturesDir, 'public'))
            .firstWhere((f) => p.basenameWithoutExtension(f.path) == specName);
        final tempDir =
            Directory.systemTemp.createTempSync('degenerate_snap_');
        try {
          final config = GeneratorConfig(
            inputPath: specFile.path,
            outputDir: tempDir.path,
            packageName: 'test_api',
            runtimePath: '../../../packages/degenerate_runtime',
          );
          await expectLater(
            Generator(config).generate(),
            throwsA(isA<FileSystemException>()),
          );
        } finally {
          tempDir.deleteSync(recursive: true);
        }
      });
    }
  });
}
