import 'dart:io';

import 'package:path/path.dart' as p;

import 'parser/openapi_document.dart';

import 'lowering/type_lowerer.dart';
import 'lowering/operation_lowerer.dart';
import 'emitter/file_emitter.dart';
import 'ir/ir_types.dart';

class GeneratorConfig {
  final String inputPath;
  final String outputDir;
  final String? packageName;
  final String client; // 'http', 'none'
  final bool includeDeprecated;
  final bool verbose;
  final bool dryRun;
  final bool clean;

  /// Path to the degenerate_runtime package as it should appear in the
  /// generated pubspec.yaml `dependencies` section.
  /// Example: `../../packages/degenerate_runtime`
  final String runtimePath;

  const GeneratorConfig({
    required this.inputPath,
    this.outputDir = 'lib/src/generated',
    this.packageName,
    this.client = 'http',
    this.includeDeprecated = false,
    this.verbose = false,
    this.dryRun = false,
    this.clean = false,
    this.runtimePath = 'packages/degenerate_runtime',
  });
}

class Generator {
  final GeneratorConfig config;

  Generator(this.config);

  /// Run the full pipeline: parse -> normalize -> lower -> emit -> write
  Future<void> generate() async {
    // 1. Read and parse spec
    final inputFile = File(config.inputPath);
    if (!inputFile.existsSync()) {
      throw GeneratorException('Input file not found: ${config.inputPath}');
    }

    final content = await inputFile.readAsString();
    final ext = p.extension(config.inputPath).toLowerCase();

    _log('Parsing ${p.basename(config.inputPath)}...');

    final OpenApiDocument doc;
    try {
      if (ext == '.json') {
        doc = OpenApiDocument.parseJson(content);
      } else {
        // Default to YAML for .yaml, .yml, or anything else
        doc = OpenApiDocument.parseYaml(content);
      }
    } catch (e) {
      throw GeneratorException('Failed to parse ${config.inputPath}: $e');
    }

    if (doc.version.isEmpty) {
      throw GeneratorException(
        'Missing or invalid "openapi" version field in spec.',
      );
    }

    _log('Spec: ${doc.title} (OpenAPI ${doc.version})');

    // 2. Note: $ref resolution and allOf flattening are handled inline
    // during type lowering (TypeLowerer handles $ref directly, and uses
    // AllOfFlattener for allOf compositions).

    // 4. Lower schemas to IR types
    _log('Lowering schemas to IR...');
    final typeLowerer = TypeLowerer();
    final irTypes = typeLowerer.lowerSchemas(doc.schemas);

    if (config.verbose) {
      _log('  ${irTypes.length} types lowered');
      for (final t in irTypes) {
        _log('    - ${_irTypeName(t)}');
      }
    }

    if (typeLowerer.warnings.isNotEmpty) {
      for (final w in typeLowerer.warnings) {
        _log('  Warning: $w');
      }
    }

    // 5. Lower operations to IR operations
    _log('Lowering operations to IR...');
    final opLowerer = OperationLowerer(typeLowerer, doc: doc);
    var irApis = opLowerer.lowerPaths(doc.paths);

    // Build a set of names already in irTypes for deduplication.
    final existingNames = irTypes
        .map(_irTypeNameOf)
        .whereType<String>()
        .toSet();

    // Add inline types generated during operation lowering (deduplicated).
    final inlineTypes = typeLowerer.inlineTypes;
    var inlineAdded = 0;
    for (final t in inlineTypes) {
      final name = _irTypeNameOf(t);
      if (name != null && !existingNames.add(name)) continue;
      irTypes.add(t);
      inlineAdded++;
    }
    if (config.verbose && inlineAdded > 0) {
      _log('  $inlineAdded inline types added');
    }

    // Add any registered types (e.g., inline enums from inline objects)
    // that aren't already in the results list.
    for (final entry in typeLowerer.typeRegistry.entries) {
      final regName = _irTypeNameOf(entry.value);
      if (regName != null && !existingNames.add(regName)) continue;
      irTypes.add(entry.value);
    }

    // Final pass: resolve all type refs across all types (including inline
    // and registry types that may not have been resolved by lowerSchemas).
    for (var i = 0; i < irTypes.length; i++) {
      irTypes[i] = typeLowerer.resolveTypeRefs(irTypes[i]);
    }

    // Also resolve type refs in API operations (parameters, request bodies,
    // responses) so that refs to non-emittable types (e.g., IrList aliases)
    // are replaced with the actual types.
    irApis = _resolveApiTypeRefs(typeLowerer, irApis);

    // Filter deprecated operations if not included
    if (!config.includeDeprecated) {
      final filtered = <IrApi>[];
      for (final api in irApis) {
        final ops = api.operations.where((op) => !op.isDeprecated).toList();
        if (ops.isNotEmpty) {
          filtered.add(IrApi(api.name, ops));
        }
      }
      irApis = filtered;
    }

    if (config.verbose) {
      _log('  ${irApis.length} API groups');
      for (final api in irApis) {
        _log('    - ${api.name}: ${api.operations.length} operations');
      }
    }

    // 6. Emit all files
    _log('Emitting Dart source files...');
    final packageName =
        config.packageName ?? _existingPackageName(config.outputDir) ?? _inferPackageName(doc.title);
    final specFileName = p.basename(config.inputPath);
    final specVersion = doc.version;

    final fileEmitter = FileEmitter();
    final files = fileEmitter.emitAll(
      types: irTypes,
      apis: irApis,
      packageName: packageName,
      specFileName: specFileName,
      specVersion: specVersion,
      runtimePath: config.runtimePath,
    );

    _log('Generated ${files.length} files');

    // 7. Clean output directory if requested
    if (config.clean) {
      final outputDir = Directory(config.outputDir);
      if (outputDir.existsSync()) {
        _log('Cleaning ${config.outputDir}...');
        outputDir.deleteSync(recursive: true);
      }
    }

    // 8. Write to disk (unless dry run)
    if (config.dryRun) {
      _log('Dry run — skipping file writes.');
      for (final filePath in files.keys.toList()..sort()) {
        _log('  Would write: ${p.join(config.outputDir, filePath)}');
      }
      return;
    }

    _log('Writing to ${config.outputDir}...');
    var written = 0;
    var skipped = 0;
    for (final entry in files.entries) {
      final filePath = p.join(config.outputDir, entry.key);
      final file = File(filePath);

      // Skip write if existing file already has identical content.
      if (file.existsSync()) {
        final existing = await file.readAsString();
        if (existing == entry.value) {
          skipped++;
          if (config.verbose) {
            _log('  Unchanged: $filePath');
          }
          continue;
        }
      }

      await file.parent.create(recursive: true);
      await file.writeAsString(entry.value);
      written++;
      if (config.verbose) {
        _log('  Wrote: $filePath');
      }
    }

    _log(
      'Done! Wrote $written files to ${config.outputDir}'
      '${skipped > 0 ? ' ($skipped unchanged)' : ''}',
    );
  }

  void _log(String message) {
    // ignore: avoid_print
    print(message);
  }

  /// Resolve type refs in all API operations.
  ///
  /// Uses `identical` checks to avoid rebuilding objects when nothing changed.
  static List<IrApi> _resolveApiTypeRefs(
    TypeLowerer typeLowerer,
    List<IrApi> apis,
  ) {
    return apis.map((api) {
      var apiChanged = false;
      final ops = api.operations.map((op) {
        var opChanged = false;

        final params = op.parameters.map((p) {
          final resolved = typeLowerer.resolveTypeRefs(p.type);
          if (identical(resolved, p.type)) return p;
          opChanged = true;
          return IrParameter(
            p.name,
            p.dartName,
            p.location,
            resolved,
            isRequired: p.isRequired,
            defaultValue: p.defaultValue,
          );
        }).toList();

        IrRequestBody? reqBody;
        if (op.requestBody != null) {
          final rb = op.requestBody!;
          var rbChanged = false;
          final newContent = <String, IrMediaType>{};
          for (final entry in rb.content.entries) {
            final resolved = typeLowerer.resolveTypeRefs(entry.value.schema);
            if (!identical(resolved, entry.value.schema)) rbChanged = true;
            newContent[entry.key] = IrMediaType(resolved);
          }
          if (rbChanged) {
            opChanged = true;
            reqBody = IrRequestBody(newContent, isRequired: rb.isRequired);
          }
        }

        final responses = <int, IrResponse>{};
        var respChanged = false;
        for (final entry in op.responses.entries) {
          final resp = entry.value;
          var entryChanged = false;
          final newContent = <String, IrMediaType>{};
          for (final ce in resp.content.entries) {
            final resolved = typeLowerer.resolveTypeRefs(ce.value.schema);
            if (!identical(resolved, ce.value.schema)) entryChanged = true;
            newContent[ce.key] = IrMediaType(resolved);
          }
          if (entryChanged) {
            respChanged = true;
            responses[entry.key] = IrResponse(
              description: resp.description,
              content: newContent,
              headers: resp.headers,
            );
          } else {
            responses[entry.key] = resp;
          }
        }
        if (respChanged) opChanged = true;

        IrResponse? defaultResp;
        if (op.defaultResponse != null) {
          final resp = op.defaultResponse!;
          var drChanged = false;
          final newContent = <String, IrMediaType>{};
          for (final ce in resp.content.entries) {
            final resolved = typeLowerer.resolveTypeRefs(ce.value.schema);
            if (!identical(resolved, ce.value.schema)) drChanged = true;
            newContent[ce.key] = IrMediaType(resolved);
          }
          if (drChanged) {
            opChanged = true;
            defaultResp = IrResponse(
              description: resp.description,
              content: newContent,
              headers: resp.headers,
            );
          }
        }

        if (!opChanged) return op;
        apiChanged = true;
        return IrOperation(
          op.operationId,
          op.dartMethodName,
          op.method,
          op.path,
          summary: op.summary,
          description: op.description,
          parameters: params,
          requestBody: reqBody ?? op.requestBody,
          responses: responses,
          defaultResponse: defaultResp ?? op.defaultResponse,
          isDeprecated: op.isDeprecated,
        );
      }).toList();
      if (!apiChanged) return api;
      return IrApi(api.name, ops);
    }).toList();
  }

  /// Extract the emittable type name (if any) for deduplication.
  static String? _irTypeNameOf(IrType type) => type.emittableName;

  String _irTypeName(IrType type) {
    return switch (type) {
      IrObject(:final name) => 'Object($name)',
      IrEnum(:final name) => 'Enum($name)',
      IrDiscriminatedUnion(:final name) => 'DiscriminatedUnion($name)',
      IrUntaggedUnion(:final name) => 'UntaggedUnion($name)',
      IrAnyOf(:final name) => 'AnyOf($name)',
      IrExtensionType(:final name) => 'ExtensionType($name)',
      IrPrimitive(:final kind) => 'Primitive($kind)',
      IrList(:final items) => 'List<${_irTypeName(items)}>',
      IrMap(:final values) => 'Map<String, ${_irTypeName(values)}>',
      IrTypeRef(:final name) => 'Ref($name)',
    };
  }

  /// Read the package name from an existing pubspec.yaml in the output directory.
  static String? _existingPackageName(String outputDir) {
    final pubspec = File(p.join(outputDir, 'pubspec.yaml'));
    if (!pubspec.existsSync()) return null;
    final match = RegExp(r'^name:\s*(\S+)').firstMatch(pubspec.readAsStringSync());
    return match?.group(1);
  }

  /// Infer a valid Dart package name from the spec title.
  static String _inferPackageName(String title) {
    if (title.isEmpty) return 'api_client';

    // Convert to snake_case and sanitize
    var name = title
        .replaceAll(RegExp(r'[^a-zA-Z0-9\s_]'), '')
        .trim()
        .replaceAll(RegExp(r'\s+'), '_')
        .toLowerCase();

    // Remove leading digits
    name = name.replaceAll(RegExp(r'^[0-9]+'), '');

    if (name.isEmpty) return 'api_client';

    return name;
  }
}

class GeneratorException implements Exception {
  final String message;
  const GeneratorException(this.message);

  @override
  String toString() => 'GeneratorException: $message';
}
