import 'dart:convert';
import 'dart:io';

import 'package:degenerate/src/generator.dart';
import 'package:test/test.dart';

/// Runs freshly generated clients with the workspace dependencies.
Future<dynamic> runGeneratedClient(
  Map<String, dynamic> schemas,
  String program, {
  OmittableMode mode = OmittableMode.nullableOnly,
  Map<String, dynamic> paths = const {},
  List<String> unwrapFields = const [],
  bool analyze = false,
}) async {
  final root = Directory('outputs/generated_tests')
    ..createSync(recursive: true);
  final dir = root.createTempSync('client_');
  addTearDown(() => dir.deleteSync(recursive: true));
  final files = await Generator(
    GeneratorConfig(
      inputPath: '-',
      stdinContent: jsonEncode({
        'openapi': '3.1.0',
        'info': {'title': 'Regression', 'version': '1.0'},
        'paths': paths,
        'components': {'schemas': schemas},
      }),
      packageName: 'generated',
      dryRun: true,
      quiet: true,
      omittable: mode,
      unwrapFields: unwrapFields,
    ),
  ).generate();
  for (final entry in files.entries.where((e) => e.key.endsWith('.dart'))) {
    final file = File('${dir.path}/${entry.key}');
    file.parent.createSync(recursive: true);
    file.writeAsStringSync(entry.value);
  }
  if (analyze) {
    File('${dir.path}/pubspec.yaml').writeAsStringSync(
      'name: generated\nenvironment:\n  sdk: ^3.11.1\ndependencies:\n  degenerate_runtime: any\n',
    );
    final configFile = File('.dart_tool/package_config.json').absolute;
    final config =
        jsonDecode(configFile.readAsStringSync()) as Map<String, dynamic>;
    for (final package in config['packages'] as List) {
      final entry = package as Map<String, dynamic>;
      entry['rootUri'] = configFile.uri
          .resolve(entry['rootUri'] as String)
          .toString();
    }
    final target = File('${dir.path}/.dart_tool/package_config.json');
    target.parent.createSync();
    target.writeAsStringSync(jsonEncode(config));
    final result = await Process.run(Platform.resolvedExecutable, [
      'analyze',
      '--fatal-infos',
      dir.path,
    ]);
    expect(result.exitCode, 0, reason: '${result.stdout}\n${result.stderr}');
  }
  final runner = File('${dir.path}/probe.dart')
    ..writeAsStringSync('''
import 'dart:convert';
import 'generated.dart';
import 'package:degenerate_runtime/testing.dart';

Future<void> main() async {
$program
}
''');
  final result = await Process.run(Platform.resolvedExecutable, [
    '--packages=${File('.dart_tool/package_config.json').absolute.path}',
    runner.path,
  ]);
  expect(result.exitCode, 0, reason: '${result.stdout}\n${result.stderr}');
  return jsonDecode(result.stdout as String);
}
