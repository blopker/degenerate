import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:degenerate/src/generator.dart';

ArgParser buildParser() {
  return ArgParser()
    ..addOption(
      'input',
      abbr: 'i',
      help: 'Path to OpenAPI spec, or "-" to read from stdin (required).',
      valueHelp: 'path',
    )
    ..addOption(
      'output',
      abbr: 'o',
      help:
          'Output directory.\n'
          '(default: lib/<name>, or packages/<name> with --workspace)',
      valueHelp: 'dir',
    )
    ..addOption(
      'name',
      abbr: 'n',
      help: 'Package name (default: api_client).',
      valueHelp: 'name',
    )
    ..addMultiOption(
      'tag',
      abbr: 't',
      help:
          'Only include API groups matching these tags (substring match).\n'
          'Can be specified multiple times.',
      valueHelp: 'pattern',
    )
    ..addMultiOption(
      'path',
      abbr: 'p',
      help:
          'Only include operations whose path starts with this prefix.\n'
          'Can be specified multiple times.',
      valueHelp: 'prefix',
    )
    ..addFlag(
      'include-deprecated',
      help: 'Include deprecated operations.',
      negatable: false,
    )
    ..addFlag(
      'clean',
      help: 'Remove output directory before generating.',
      negatable: false,
    )
    ..addFlag(
      'verbose',
      abbr: 'v',
      help: 'Print IR and diagnostics.',
      negatable: false,
    )
    ..addFlag(
      'dry-run',
      help: 'Parse and validate without writing files.',
      negatable: false,
    )
    ..addFlag(
      'workspace',
      help:
          'Generate a standalone package with pubspec.yaml\n'
          '(includes resolution: workspace for Dart workspaces).\n'
          'Default output: packages/<name>.',
      negatable: false,
    )
    ..addMultiOption(
      'unwrap-fields',
      help:
          'Unwrap response envelopes by extracting these fields.\n'
          'E.g., --unwrap-fields=result returns the result type directly\n'
          'instead of the full response envelope.',
      valueHelp: 'field',
    )
    ..addFlag('help', abbr: 'h', help: 'Show this help.', negatable: false)
    ..addFlag('version', help: 'Print the tool version.', negatable: false);
}

void printUsage(ArgParser argParser) {
  stderr
    ..writeln(
      'degenerate - Generate a Dart client'
      ' from an OpenAPI specification.',
    )
    ..writeln()
    ..writeln('Usage:')
    ..writeln('  degenerate [options]')
    ..writeln()
    ..writeln('Options:')
    ..writeln(argParser.usage);
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
      stderr.writeln('degenerate version: $packageVersion');
      return;
    }

    final input = results.option('input');
    if (input == null) {
      stderr
        ..writeln('Error: --input is required.')
        ..writeln();
      printUsage(argParser);
      exit(1);
    }

    // Read from stdin when "-" is passed as input.
    String? stdinContent;
    if (input == '-') {
      stdinContent = await utf8.decoder.bind(stdin).join();
      if (stdinContent.trim().isEmpty) {
        stderr.writeln('Error: no data received on stdin.');
        exit(1);
      }
    }

    final workspace = results.flag('workspace');

    final config = GeneratorConfig(
      inputPath: input,
      outputDir: results.option('output'),
      packageName: results.option('name'),
      includeDeprecated: results.flag('include-deprecated'),
      tags: results.multiOption('tag'),
      paths: results.multiOption('path'),
      clean: results.flag('clean'),
      verbose: results.flag('verbose'),
      dryRun: results.flag('dry-run'),
      workspace: workspace,
      stdinContent: stdinContent,
      unwrapFields: results.multiOption('unwrap-fields'),
    );

    final generator = Generator(config);
    await generator.generate();

    if (!results.flag('dry-run')) {
      final name = config.resolvedPackageName!;
      stderr.writeln();
      if (workspace) {
        stderr
          ..writeln('Add to your pubspec.yaml:')
          ..writeln()
          ..writeln('workspace:')
          ..writeln('  - ${config.resolvedOutputDir}')
          ..writeln()
          ..writeln('dependencies:')
          ..writeln('  $name:')
          ..writeln(
            '  degenerate_http:'
            ' ^$packageVersion  # or degenerate_dio',
          );
      } else {
        stderr
          ..writeln('Add to your pubspec.yaml:')
          ..writeln()
          ..writeln('dependencies:')
          ..writeln(
            '  degenerate_http:'
            ' ^$packageVersion  # or degenerate_dio',
          )
          ..writeln(
            '  degenerate_runtime: ^$packageVersion',
          );
      }
    }
  } on FormatException catch (e) {
    stderr
      ..writeln('Error: ${e.message}')
      ..writeln();
    printUsage(argParser);
    exit(1);
  } on GeneratorException catch (e) {
    stderr.writeln('Error: ${e.message}');
    exit(1);
  }
}
