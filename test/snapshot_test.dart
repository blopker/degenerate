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
final _snapshotsDir =
    p.join(Directory.current.path, 'test', 'snapshots');

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

void _snapshotTests(String groupName, List<File> specFiles) {
  group(groupName, () {
    for (final specFile in specFiles) {
      final specName = p.basenameWithoutExtension(specFile.path);

      test(specName, () async {
        final tempDir =
            Directory.systemTemp.createTempSync('degenerate_snap_');
        try {
          final config = GeneratorConfig(
            inputPath: specFile.path,
            outputDir: tempDir.path,
            packageName: 'test_api',
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

void main() {
  _snapshotTests('specs', _specFiles(p.join(_fixturesDir, 'specs')));
  _snapshotTests('public', _specFiles(p.join(_fixturesDir, 'public')));
}
