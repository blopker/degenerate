import 'dart:io';

import 'package:args/args.dart';

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
    ..addFlag(
      'include-deprecated',
      help: 'Include deprecated operations.',
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

    final config = GeneratorConfig(
      inputPath: input,
      outputDir: results.option('output') ?? 'lib/src/generated',
      packageName: results.option('name'),
      client: results.option('client') ?? 'http',
      includeDeprecated: results.flag('include-deprecated'),
      verbose: results.flag('verbose'),
      dryRun: results.flag('dry-run'),
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
