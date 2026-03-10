import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as p;

import 'package:degenerate/src/generator.dart';

const String version = '0.0.1';

ArgParser buildParser() {
  return ArgParser()
    ..addOption(
      'input',
      abbr: 'i',
      help: 'Path to OpenAPI spec (required).',
      valueHelp: 'path',
    )
    ..addOption(
      'output',
      abbr: 'o',
      help: 'Output directory.',
      valueHelp: 'dir',
      defaultsTo: 'lib/src/generated',
    )
    ..addOption(
      'name',
      abbr: 'n',
      help: 'Package name (default: inferred from spec title).',
      valueHelp: 'name',
    )
    ..addOption(
      'client',
      help: 'HTTP client adapter.',
      valueHelp: 'http|none',
      defaultsTo: 'http',
      allowed: ['http', 'none'],
    )
    ..addMultiOption(
      'tag',
      abbr: 't',
      help: 'Only include API groups matching these tags (substring match).\n'
          'Can be specified multiple times.',
      valueHelp: 'pattern',
    )
    ..addMultiOption(
      'path',
      abbr: 'p',
      help: 'Only include operations whose path starts with this prefix.\n'
          'Can be specified multiple times.',
      valueHelp: 'prefix',
    )
    ..addFlag(
      'include-deprecated',
      help: 'Include deprecated operations.',
      defaultsTo: false,
      negatable: false,
    )
    ..addFlag(
      'clean',
      help: 'Remove output directory before generating.',
      defaultsTo: false,
      negatable: false,
    )
    ..addFlag(
      'verbose',
      abbr: 'v',
      help: 'Print IR and diagnostics.',
      defaultsTo: false,
      negatable: false,
    )
    ..addFlag(
      'dry-run',
      help: 'Parse and validate without writing files.',
      defaultsTo: false,
      negatable: false,
    )
    ..addFlag(
      'workspace',
      help: 'Add resolution: workspace to the generated pubspec.yaml\n'
          'for use in a Dart workspace (monorepo).',
      defaultsTo: false,
      negatable: false,
    )
    ..addFlag(
      'help',
      abbr: 'h',
      help: 'Show this help.',
      negatable: false,
    )
    ..addFlag(
      'version',
      help: 'Print the tool version.',
      negatable: false,
    );
}

void printUsage(ArgParser argParser) {
  stderr.writeln(
      'degenerate — Generate a Dart client from an OpenAPI specification.');
  stderr.writeln();
  stderr.writeln('Usage:');
  stderr.writeln('  degenerate [options]');
  stderr.writeln();
  stderr.writeln('Options:');
  stderr.writeln(argParser.usage);
}

Future<void> main(List<String> arguments) async {
  final argParser = buildParser();

  try {
    final results = argParser.parse(arguments);

    if (results.flag('help')) {
      printUsage(argParser);
      return;
    }

    if (results.flag('version')) {
      print('degenerate version: $version');
      return;
    }

    final input = results.option('input');
    if (input == null) {
      stderr.writeln('Error: --input is required.');
      stderr.writeln();
      printUsage(argParser);
      exit(1);
    }

    // Compute relative path from output dir to the runtime package.
    final scriptDir = p.dirname(Platform.script.toFilePath());
    final generatorRoot = p.dirname(scriptDir);
    final runtimeDir = Directory(
      p.join(generatorRoot, 'packages', 'degenerate_runtime'),
    );

    final outputDir = results.option('output') ?? 'lib/src/generated';
    final runtimePath = _relativePath(
      from: p.absolute(outputDir),
      to: runtimeDir.path,
    );

    final config = GeneratorConfig(
      inputPath: input,
      outputDir: outputDir,
      packageName: results.option('name'),
      client: results.option('client') ?? 'http',
      includeDeprecated: results.flag('include-deprecated'),
      tags: results.multiOption('tag'),
      paths: results.multiOption('path'),
      clean: results.flag('clean'),
      verbose: results.flag('verbose'),
      dryRun: results.flag('dry-run'),
      runtimePath: runtimePath,
      workspace: results.flag('workspace'),
    );

    final generator = Generator(config);
    await generator.generate();
  } on FormatException catch (e) {
    stderr.writeln('Error: ${e.message}');
    stderr.writeln();
    printUsage(argParser);
    exit(1);
  } on GeneratorException catch (e) {
    stderr.writeln('Error: ${e.message}');
    exit(1);
  }
}

/// Compute a relative path, resolving symlinks so it works on macOS
/// where /var is a symlink to /private/var.
String _relativePath({required String from, required String to}) {
  try {
    final fromDir = Directory(from);
    if (!fromDir.existsSync()) fromDir.createSync(recursive: true);
    final resolvedFrom = fromDir.resolveSymbolicLinksSync();
    final resolvedTo = Directory(to).resolveSymbolicLinksSync();
    return p.relative(resolvedTo, from: resolvedFrom);
  } catch (_) {
    // Fallback to simple relative if symlink resolution fails
    return p.relative(p.absolute(to), from: p.absolute(from));
  }
}
