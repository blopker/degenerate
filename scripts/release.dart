#!/usr/bin/env dart

/// Release script for degenerate.
///
/// Validates the repo is ready for release, bumps version numbers across
/// all packages, and verifies the changelog has an entry.
///
/// Usage:
///   dart scripts/release.dart          # bump patch (default)
///   dart scripts/release.dart minor     # bump minor
///   dart scripts/release.dart major     # bump major
///   dart scripts/release.dart 0.3.0     # set explicit version
library;

import 'dart:io';

// All files that contain version strings to update.
final _pubspecs = [
  'pubspec.yaml',
  'packages/degenerate_runtime/pubspec.yaml',
  'packages/degenerate_http/pubspec.yaml',
  'packages/degenerate_dio/pubspec.yaml',
];

final _binFile = 'bin/degenerate.dart';
final _emitterFile = 'lib/src/emitter/file_emitter.dart';
final _changelog = 'CHANGELOG.md';

void main(List<String> args) {
  // 1. Check we're in the repo root.
  if (!File('pubspec.yaml').existsSync()) {
    _fail('Must be run from the repository root.');
  }

  // 2. Check git is clean.
  final status = _run('git', ['status', '--porcelain']);
  if (status.trim().isNotEmpty) {
    _fail(
      'Working directory is not clean. Commit or stash changes first.\n$status',
    );
  }

  // 3. Check we're on main and up to date.
  final branch = _run('git', ['branch', '--show-current']).trim();
  if (branch != 'main') {
    _fail('Must be on the main branch (currently on "$branch").');
  }

  // Fetch and check if we're behind.
  _run('git', ['fetch', 'origin', 'main']);
  final behind = _run('git', [
    'rev-list',
    '--count',
    'HEAD..origin/main',
  ]).trim();
  if (behind != '0') {
    _fail('Local main is $behind commit(s) behind origin/main. Pull first.');
  }

  // 4. Determine current version.
  final currentVersion = _readCurrentVersion();
  print('Current version: $currentVersion');

  // 5. Determine new version.
  final newVersion = _resolveNewVersion(currentVersion, args);
  print('New version:     $newVersion');

  // 6. Confirm.
  stdout.write('\nProceed? [y/N] ');
  final answer = stdin.readLineSync()?.trim().toLowerCase();
  if (answer != 'y' && answer != 'yes') {
    print('Aborted.');
    exit(0);
  }

  // 7. Check changelog has an entry for the new version.
  final changelogContent = File(_changelog).readAsStringSync();
  if (!changelogContent.contains('## $newVersion')) {
    _fail(
      'No changelog entry found for version $newVersion.\n'
      'Add a "## $newVersion" section to $_changelog before releasing.',
    );
  }

  // 8. Update all version strings.
  _updatePubspecs(newVersion);
  _updateBinVersion(newVersion);
  _updateEmitterConstraint(newVersion);

  print('\nAll versions updated to $newVersion.');
  print('');
  print('Next steps:');
  print('  1. Review changes: git diff');
  print('  2. Commit: git commit -am "Release v$newVersion"');
  print('  3. Tag: git tag v$newVersion');
  print('  4. Push: git push && git push --tags');
  print('  5. Publish in order:');
  print('     cd packages/degenerate_runtime && dart pub publish');
  print('     cd packages/degenerate_http && dart pub publish');
  print('     cd packages/degenerate_dio && dart pub publish');
  print('     dart pub publish');
}

// ---------------------------------------------------------------------------
// Version parsing & bumping
// ---------------------------------------------------------------------------

class Version {
  final int major;
  final int minor;
  final int patch;

  Version(this.major, this.minor, this.patch);

  factory Version.parse(String s) {
    final parts = s.split('.');
    if (parts.length != 3) {
      _fail('Invalid version format: "$s". Expected x.y.z');
    }
    return Version(
      int.parse(parts[0]),
      int.parse(parts[1]),
      int.parse(parts[2]),
    );
  }

  Version bumpMajor() => Version(major + 1, 0, 0);
  Version bumpMinor() => Version(major, minor + 1, 0);
  Version bumpPatch() => Version(major, minor, patch + 1);

  @override
  String toString() => '$major.$minor.$patch';
}

Version _readCurrentVersion() {
  final content = File('pubspec.yaml').readAsStringSync();
  final match = RegExp(
    r'^version:\s*(\S+)',
    multiLine: true,
  ).firstMatch(content);
  if (match == null) {
    _fail('Could not find version in pubspec.yaml');
  }
  return Version.parse(match.group(1)!);
}

Version _resolveNewVersion(Version current, List<String> args) {
  if (args.isEmpty || args.first == 'patch') {
    return current.bumpPatch();
  } else if (args.first == 'minor') {
    return current.bumpMinor();
  } else if (args.first == 'major') {
    return current.bumpMajor();
  } else {
    // Treat as explicit version string.
    return Version.parse(args.first);
  }
}

// ---------------------------------------------------------------------------
// File updaters
// ---------------------------------------------------------------------------

void _updatePubspecs(Version version) {
  final versionPattern = RegExp(r'^(version:\s*)(\S+)', multiLine: true);

  for (final path in _pubspecs) {
    final file = File(path);
    final content = file.readAsStringSync();
    final updated = content.replaceFirst(versionPattern, '${r'$1'}$version');
    if (updated == content) {
      _fail('Failed to update version in $path');
    }
    file.writeAsStringSync(updated);
    print('  Updated $path');
  }

  // Also update degenerate_runtime constraint in _http and _dio pubspecs.
  final constraintPattern = RegExp(r'(degenerate_runtime:\s*)\^[\d.]+');
  final newConstraint = '${r'$1'}^${version.major}.${version.minor}.0';

  for (final path in [
    'packages/degenerate_http/pubspec.yaml',
    'packages/degenerate_dio/pubspec.yaml',
  ]) {
    final file = File(path);
    final content = file.readAsStringSync();
    final updated = content.replaceFirst(constraintPattern, newConstraint);
    file.writeAsStringSync(updated);
  }
}

void _updateBinVersion(Version version) {
  final file = File(_binFile);
  final content = file.readAsStringSync();
  final updated = content.replaceFirst(
    RegExp(r"const String version = '[^']+';"),
    "const String version = '$version';",
  );
  if (updated == content) {
    _fail('Failed to update version in $_binFile');
  }
  file.writeAsStringSync(updated);
  print('  Updated $_binFile');
}

void _updateEmitterConstraint(Version version) {
  final file = File(_emitterFile);
  final content = file.readAsStringSync();
  final updated = content.replaceFirst(
    RegExp(r'degenerate_runtime: \^[\d.]+'),
    'degenerate_runtime: ^${version.major}.${version.minor}.0',
  );
  if (updated == content) {
    _fail('Failed to update runtime constraint in $_emitterFile');
  }
  file.writeAsStringSync(updated);
  print('  Updated $_emitterFile');
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

String _run(String command, List<String> args) {
  final result = Process.runSync(command, args);
  if (result.exitCode != 0) {
    _fail('Command failed: $command ${args.join(' ')}\n${result.stderr}');
  }
  return result.stdout as String;
}

Never _fail(String message) {
  stderr.writeln('Error: $message');
  exit(1);
}
