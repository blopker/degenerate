import 'package:code_builder/code_builder.dart';

import '../ir/ir_types.dart';
import 'api_emitter.dart';
import 'emit_utils.dart';
import 'enum_emitter.dart';
import 'model_emitter.dart';
import 'runtime_sources.dart';
import 'sealed_union_emitter.dart';

/// Orchestrates all emitters to produce the full generated file structure.
///
/// Returns a map of relative file path to Dart source content.
class FileEmitter {
  /// Emit all generated files from the complete IR.
  ///
  /// Returns a Map of relative file path -> Dart source content.
  Map<String, String> emitAll({
    required List<IrType> types,
    required List<IrApi> apis,
    required String packageName,
    required String specFileName,
    required String specVersion,
    bool includeHttpClient = true,
  }) {
    final files = <String, String>{};

    // Build a lookup from type name to file name for imports
    final typeToFile = <String, String>{};
    final typeRegistry = <String, IrType>{};
    for (final type in types) {
      final name = _typeName(type);
      if (name == null) continue;
      typeToFile[name] = toSnakeCase(name);
      typeRegistry[name] = type;
    }

    // Emit model files
    for (final type in types) {
      final name = _typeName(type);
      if (name == null) continue;
      final fileName = toSnakeCase(name);
      final header = _header(specFileName, specVersion);
      final specs = _emitType(type, typeRegistry);
      if (specs.isEmpty) continue;

      // Single-pass analysis: collect imports and detect special types
      final modelAnalysis = _analyzeModel(type);
      modelAnalysis.referencedNames.remove(name); // Don't import self

      final sortedRefs =
          modelAnalysis.referencedNames
              .where((n) => typeToFile.containsKey(n))
              .toList()
            ..sort();
      final modelImports = sortedRefs
          .map((n) => Directive.import('${typeToFile[n]}.dart'))
          .toList();

      final needsCollection = modelAnalysis.needsCollection;
      final needsTypedData = modelAnalysis.needsTypedData;
      final needsConvert = modelAnalysis.needsConvert;

      final library = Library((b) {
        b.comments.addAll(header);
        if (needsConvert) {
          b.directives.add(Directive.import('dart:convert'));
        }
        if (needsTypedData) {
          b.directives.add(Directive.import('dart:typed_data'));
        }
        if (needsCollection) {
          b.directives.add(
            Directive.import('package:collection/collection.dart'),
          );
        }
        b.directives.addAll(modelImports);
        b.body.addAll(specs);
      });

      files['lib/src/models/$fileName.dart'] = emitRaw(library);
    }

    // Emit API files
    for (final api in apis) {
      final fileName = toSnakeCase(api.name);
      final header = _header(specFileName, specVersion);
      final specs = ApiEmitter(api).emit();

      final analysis = _analyzeApi(api);

      // Derive imports directly from referenced types using pre-built lookup
      final sortedApiRefs = analysis.referencedTypes
          .where((n) => typeToFile.containsKey(n))
          .toList()
        ..sort();
      final modelImports = sortedApiRefs
          .map((n) => Directive.import('../models/${typeToFile[n]}.dart'))
          .toList();

      final needsConvert = analysis.needsConvert;
      final needsTypedData = analysis.needsTypedData;

      final library = Library(
        (b) => b
          ..comments.addAll(header)
          ..directives.addAll(
            needsConvert ? [Directive.import('dart:convert')] : [],
          )
          ..directives.addAll(
            needsTypedData ? [Directive.import('dart:typed_data')] : [],
          )
          ..directives.add(Directive.import('../client/api_client.dart'))
          ..directives.add(Directive.import('../client/api_config.dart'))
          ..directives.add(Directive.import('../client/api_result.dart'))
          ..directives.addAll(modelImports)
          ..body.addAll(specs),
      );

      files['lib/src/apis/$fileName.dart'] = emitRaw(library);
    }

    // Always emit runtime client files — API files import them regardless
    // of HTTP adapter choice.
    files.addAll(_emitRuntimeFiles(specFileName, specVersion));

    // Emit barrel file
    files['lib/$packageName.dart'] = _emitBarrelFile(
      types: types,
      apis: apis,
      packageName: packageName,
      specFileName: specFileName,
      specVersion: specVersion,
    );

    // Emit pubspec.yaml
    files['pubspec.yaml'] = _emitPubspec(
      packageName: packageName,
      includeHttpClient: includeHttpClient,
    );

    return files;
  }

  List<Spec> _emitType(IrType type, Map<String, IrType> typeRegistry) {
    return switch (type) {
      IrObject() => ModelEmitter(type).emit(),
      IrEnum() => EnumEmitter(type).emit(),
      IrDiscriminatedUnion() => DiscriminatedUnionEmitter(type).emit(),
      IrUntaggedUnion() => UntaggedUnionEmitter(
        type,
        typeRegistry: typeRegistry,
      ).emit(),
      IrAnyOf() => AnyOfEmitter(type, typeRegistry: typeRegistry).emit(),
      // IrList, IrMap, IrPrimitive, IrTypeRef are not top-level emittable types
      _ => [],
    };
  }

  String? _typeName(IrType type) => type.emittableName;

  /// Collect top-level type names referenced by an API's operations.
  ///
  /// Only collects the immediate types that appear in the generated API code
  /// (parameters, request bodies, success responses). Does NOT recurse into
  /// object fields — those transitive dependencies are handled by the model
  /// files' own imports.
  /// Single-pass analysis of an API: collects referenced types, and determines
  /// whether dart:convert and dart:typed_data imports are needed.
  ({Set<String> referencedTypes, bool needsConvert, bool needsTypedData})
  _analyzeApi(IrApi api) {
    final names = <String>{};
    var needsConvert = false;
    var needsTypedData = false;
    bool isBytesType(IrType t) =>
        t is IrPrimitive && t.kind == PrimitiveKind.bytes;

    for (final op in api.operations) {
      for (final param in op.parameters) {
        _collectTopLevelTypeName(param.type, names);
        if (isBytesType(param.type)) needsTypedData = true;
      }
      // Match the type selection logic used by ApiEmitter:
      // prefer application/json, fallback to first content type.
      // Skip GET/HEAD bodies (ApiEmitter ignores them).
      final isBodyAllowed =
          op.method != HttpMethod.get && op.method != HttpMethod.head;
      if (isBodyAllowed &&
          op.requestBody != null &&
          op.requestBody!.content.isNotEmpty) {
        needsConvert = true;
        final json = op.requestBody!.content['application/json'];
        final schema =
            json?.schema ?? op.requestBody!.content.values.first.schema;
        _collectTopLevelTypeName(schema, names);
        if (isBytesType(schema)) needsTypedData = true;
      }
      // Only collect types from success responses (2xx), matching ApiEmitter
      for (final code in [200, 201, 202, 203, 204]) {
        final resp = op.responses[code];
        if (resp != null) {
          if (resp.content.isNotEmpty) needsConvert = true;
          final json = resp.content['application/json'];
          if (json != null) {
            _collectTopLevelTypeName(json.schema, names);
            if (isBytesType(json.schema)) needsTypedData = true;
            break;
          }
        }
      }
    }
    return (
      referencedTypes: names,
      needsConvert: needsConvert,
      needsTypedData: needsTypedData,
    );
  }

  /// Collect only the top-level type name from a type, without recursing
  /// into fields. For lists/maps, collect the item/value types.
  void _collectTopLevelTypeName(IrType type, Set<String> names) {
    switch (type) {
      case IrObject(:final name):
        names.add(name);
      case IrEnum(:final name):
        names.add(name);
      case IrTypeRef(:final name):
        names.add(name);
      case IrDiscriminatedUnion(:final name):
        names.add(name);
      case IrUntaggedUnion(:final name):
        names.add(name);
      case IrAnyOf(:final name):
        names.add(name);
      case IrList(:final items):
        _collectTopLevelTypeName(items, names);
      case IrMap(:final values):
        _collectTopLevelTypeName(values, names);
      case IrPrimitive():
        break;
    }
  }

  /// Single-pass model analysis: collects referenced type names and detects
  /// whether dart:collection, dart:typed_data, and dart:convert are needed.
  ({
    Set<String> referencedNames,
    bool needsCollection,
    bool needsTypedData,
    bool needsConvert,
  })
  _analyzeModel(IrType type) {
    final names = <String>{};
    var needsCollection = false;
    var needsTypedData = false;
    var needsConvert = false;

    bool isBytesType(IrType t) => switch (t) {
      IrPrimitive(:final kind) => kind == PrimitiveKind.bytes,
      IrList(:final items) => isBytesType(items),
      IrMap(:final values) => isBytesType(values),
      _ => false,
    };

    void checkField(IrType fieldType) {
      _collectTopLevelTypeName(fieldType, names);
      if (isListType(fieldType)) needsCollection = true;
      if (isBytesType(fieldType)) needsTypedData = true;
    }

    switch (type) {
      case IrObject(:final name, :final fields):
        names.add(name);
        for (final field in fields) {
          checkField(field.type);
          if (isBytesType(field.type)) needsConvert = true;
        }
      case IrEnum(:final name):
        names.add(name);
      case IrTypeRef(:final name):
        names.add(name);
      case IrDiscriminatedUnion(:final name, :final mapping):
        names.add(name);
        for (final variant in mapping.values) {
          _collectTopLevelTypeName(variant, names);
          if (variant is IrObject) {
            for (final f in variant.fields) {
              if (isListType(f.type)) needsCollection = true;
            }
          }
          if (isBytesType(variant)) needsTypedData = true;
        }
      case IrUntaggedUnion(:final name, :final variants):
        names.add(name);
        for (final variant in variants) {
          _collectTopLevelTypeName(variant, names);
          if (isBytesType(variant)) needsTypedData = true;
        }
      case IrAnyOf(:final name, :final variants):
        names.add(name);
        for (final variant in variants) {
          _collectTopLevelTypeName(variant, names);
          if (isBytesType(variant)) {
            needsTypedData = true;
            needsConvert = true;
          }
        }
      case IrList(:final items):
        _collectTopLevelTypeName(items, names);
      case IrMap(:final values):
        _collectTopLevelTypeName(values, names);
      case IrPrimitive():
        break;
    }

    return (
      referencedNames: names,
      needsCollection: needsCollection,
      needsTypedData: needsTypedData,
      needsConvert: needsConvert,
    );
  }

  List<String> _header(String specFileName, String specVersion) {
    return [
      ' dart format off',
      ' GENERATED CODE — DO NOT MODIFY BY HAND',
      '',
      ' Generated by degenerate from $specFileName',
      ' OpenAPI spec version: $specVersion',
    ];
  }

  String _runtimeHeader(String specFileName, String specVersion) {
    return '// dart format off\n'
        '// GENERATED CODE \u2014 DO NOT MODIFY BY HAND\n'
        '//\n'
        '// Generated by degenerate from $specFileName\n'
        '// OpenAPI spec version: $specVersion\n';
  }

  Map<String, String> _emitRuntimeFiles(
    String specFileName,
    String specVersion,
  ) {
    final header = _runtimeHeader(specFileName, specVersion);
    return {
      'lib/src/client/api_client.dart': '$header\n$apiClientSource',
      'lib/src/client/api_config.dart': '$header\n$apiConfigSource',
      'lib/src/client/api_result.dart': '$header\n$apiResultSource',
    };
  }

  String _emitBarrelFile({
    required List<IrType> types,
    required List<IrApi> apis,
    required String packageName,
    required String specFileName,
    required String specVersion,
  }) {
    final buf = StringBuffer();
    buf.writeln('// dart format off');
    buf.writeln('// GENERATED CODE \u2014 DO NOT MODIFY BY HAND');
    buf.writeln('//');
    buf.writeln('// Generated by degenerate from $specFileName');
    buf.writeln('// OpenAPI spec version: $specVersion');
    buf.writeln();

    // Export client files
    buf.writeln("export 'src/client/api_client.dart';");
    buf.writeln("export 'src/client/api_config.dart';");
    buf.writeln("export 'src/client/api_result.dart';");
    buf.writeln();

    // Export model files (sorted for stable diffs, deduplicated)
    final modelNames = types.map(_typeName).whereType<String>().toSet().toList()
      ..sort();
    for (final name in modelNames) {
      final fileName = toSnakeCase(name);
      buf.writeln("export 'src/models/$fileName.dart';");
    }
    buf.writeln();

    // Export API files (sorted for stable diffs, deduplicated)
    final apiNames = apis.map((a) => a.name).toSet().toList()..sort();
    for (final name in apiNames) {
      final fileName = toSnakeCase(name);
      buf.writeln("export 'src/apis/$fileName.dart';");
    }

    return buf.toString();
  }

  String _emitPubspec({
    required String packageName,
    bool includeHttpClient = true,
  }) {
    final buf = StringBuffer();
    buf.writeln('name: $packageName');
    buf.writeln('description: Generated API client.');
    buf.writeln('version: 1.0.0');
    buf.writeln('publish_to: none');
    buf.writeln();
    buf.writeln('environment:');
    buf.writeln('  sdk: ^3.8.0');
    buf.writeln();
    buf.writeln('dependencies:');
    buf.writeln('  collection: ^1.18.0');
    if (includeHttpClient) {
      buf.writeln('  http: ^1.2.0');
    }
    return buf.toString();
  }
}
