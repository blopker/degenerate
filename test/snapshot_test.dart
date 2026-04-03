import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:degenerate/src/generator.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

/// Set to true (or pass --update-snapshots) to regenerate snapshot files.
final bool _updateSnapshots =
    Platform.environment['UPDATE_SNAPSHOTS'] == '1' ||
    Platform.environment['UPDATE_SNAPSHOTS'] == 'true';

final String _fixturesDir =
    p.join(Directory.current.path, 'test', 'fixtures');
final String _snapshotsDir = p.join(Directory.current.path, 'snapshots');

/// Convert a spec filename to a valid Dart package name.
/// e.g. '03-operations-parameters-request-body' → 'spec_03_operations_parameters_request_body'
String _packageNameFromSpec(String groupName, String specName) {
  final prefix = groupName == 'specs' ? 'spec' : 'pub';
  final sanitized = specName.replaceAll(RegExp('[^a-zA-Z0-9]'), '_').toLowerCase();
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
        final packageName = _packageNameFromSpec(groupName, specName);
        final snapshotDir = p.join(_snapshotsDir, groupName, specName);

        if (_updateSnapshots) {
          // Generate in-memory, then write directly to snapshot dir
          final config = GeneratorConfig(
            inputPath: specFile.path,
            outputDir: 'unused',
            packageName: packageName,
            unwrapFields: _unwrapFields[specName] ?? const [],
            workspace: workspace,
            dryRun: true,
            quiet: true,
          );

          var generated = await Generator(config).generate();

          // Format dart files for specs that opt in
          if (_formattedSpecs.contains(specName)) {
            generated = _formatDartFiles(generated);
          }

          // Write snapshot files
          final dir = Directory(snapshotDir);
          if (dir.existsSync()) {
            dir.deleteSync(recursive: true);
          }
          for (final entry in generated.entries) {
            if (!_isSnapshotFile(entry.key)) continue;
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
          // ignore: avoid_print -- useful progress output during snapshot updates
          print('  Updated ${generated.length} snapshot files for $specName');
        } else {
          // Generate in-memory only (dryRun avoids disk writes)
          final config = GeneratorConfig(
            inputPath: specFile.path,
            outputDir: 'unused',
            packageName: packageName,
            unwrapFields: _unwrapFields[specName] ?? const [],
            workspace: workspace,
            dryRun: true,
            quiet: true,
          );

          var generated = await Generator(config).generate();

          // Format dart files for specs that opt in
          if (_formattedSpecs.contains(specName)) {
            generated = _formatDartFiles(generated);
          }

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

          // Filter generated to only snapshot-relevant files
          final filteredGenerated = Map.fromEntries(
            generated.entries.where((e) => _isSnapshotFile(e.key)),
          );

          // Check that the same set of files was generated
          final generatedKeys = filteredGenerated.keys.toSet();
          final existingKeys = existing.keys.toSet();
          final missing = existingKeys.difference(generatedKeys);
          final extra = generatedKeys.difference(existingKeys);

          expect(missing, isEmpty,
              reason: 'Files in snapshot but not generated: $missing');
          expect(extra, isEmpty,
              reason: 'Files generated but not in snapshot: $extra');

          // Compare each file's content
          for (final path in generatedKeys) {
            expect(filteredGenerated[path], equals(existing[path]),
                reason:
                    'Snapshot mismatch for $specName/$path. '
                    'Run with UPDATE_SNAPSHOTS=1 to update.');
          }
        }
      });
    }
  });
}

/// Snapshots that are stored formatted (via dart_style) so we catch
/// formatting-related regressions.
const _formattedSpecs = {'unhinged', 'totem-mobile'};

/// Per-spec unwrapFields configuration.
const _unwrapFields = <String, List<String>>{
  'cloudflare': ['result'],
};

final _formatter = DartFormatter(
  languageVersion: DartFormatter.latestLanguageVersion,
);

/// Format all .dart file contents in [files] using dart_style.
Map<String, String> _formatDartFiles(Map<String, String> files) {
  return files.map((path, content) {
    if (path.endsWith('.dart')) {
      return MapEntry(path, _formatter.format(content));
    }
    return MapEntry(path, content);
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
    workspace: true,
  );

  group('public - external refs', () {
    for (final specName in _externalRefSpecs) {
      test('$specName fails with FileSystemException for missing refs', () async {
        final specFile = _specFiles(p.join(_fixturesDir, 'public'))
            .firstWhere((f) => p.basenameWithoutExtension(f.path) == specName);
        final config = GeneratorConfig(
          inputPath: specFile.path,
          outputDir: 'unused',
          packageName: 'test_api',

          dryRun: true,
          quiet: true,
        );
        await expectLater(
          Generator(config).generate(),
          throwsA(isA<FileSystemException>()),
        );
      });
    }
  });
}
