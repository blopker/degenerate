import 'package:code_builder/code_builder.dart';

import '../ir/ir_types.dart';
import '../naming.dart' show sanitizeFieldName, toPascalCase;
import 'api_emitter.dart';
import 'emit_utils.dart';
import 'enum_emitter.dart';
import 'extension_type_emitter.dart';
import 'media_type_utils.dart';
import 'model_emitter.dart';
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
    List<IrSecurityScheme> securitySchemes = const [],
    List<IrSecurityRequirement>? globalSecurity,
    required String packageName,
    required String specFileName,
    required String specVersion,
    String runtimePath = 'degenerate_runtime',
    bool workspace = false,
    String? defaultServerUrl,
    List<String>? warnings,
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

    // ── Determine which small types can be inlined into their parent's file ──
    // Build a map of type name → set of parent type names that reference it.
    final referencedBy = <String, Set<String>>{};
    for (final type in types) {
      final parentName = _typeName(type);
      if (parentName == null) continue;
      // Don't resolve OneOf refs here — indirect references through typedefs
      // shouldn't prevent inlining. Resolution is done later for imports.
      final analysis = _analyzeModel(type);
      analysis.referencedNames.remove(parentName); // exclude self
      for (final refName in analysis.referencedNames) {
        (referencedBy[refName] ??= {}).add(parentName);
      }
    }
    // Also count API references — if an API directly uses a type, it stays separate.
    // Don't resolve OneOf variant types here — variants can still be inlined
    // into their parent typedef file (the parent file provides the import).
    final apiReferencedTypes = <String>{};
    for (final api in apis) {
      final analysis = _analyzeApi(api);  // no typeRegistry
      apiReferencedTypes.addAll(analysis.referencedTypes);
    }

    // A type is inlineable if it's a small type (enum/extension type),
    // referenced by exactly one parent, and not directly used by any API.
    final inlinedInto = <String, String>{}; // child → parent
    final inlinedChildren = <String, List<IrType>>{}; // parent → children
    for (final type in types) {
      final name = _typeName(type);
      if (name == null) continue;
      if (type is! IrEnum && type is! IrExtensionType) continue;
      final parents = referencedBy[name];
      if (parents == null || parents.length != 1) continue;
      if (apiReferencedTypes.contains(name)) continue;
      final parent = parents.first;
      inlinedInto[name] = parent;
      (inlinedChildren[parent] ??= []).add(type);
      // Redirect imports: anyone importing this type should import the parent's file
      typeToFile[name] = typeToFile[parent]!;
    }

    // Emit model files
    for (final type in types) {
      final name = _typeName(type);
      if (name == null) continue;
      if (inlinedInto.containsKey(name)) continue; // emitted with parent

      final fileName = toSnakeCase(name);
      final header = _header(specFileName, specVersion);

      // Prepend inlined children before the parent type
      final specs = <Spec>[];
      final children = inlinedChildren[name];
      if (children != null) {
        for (final child in children) {
          specs.addAll(_emitType(child, typeRegistry));
        }
      }
      specs.addAll(_emitType(type, typeRegistry));
      if (specs.isEmpty) continue;

      // Single-pass analysis: collect imports and detect special types
      final modelAnalysis = _analyzeModel(type, typeRegistry);
      modelAnalysis.referencedNames.remove(name); // Don't import self
      // Remove inlined children from imports (they're in the same file)
      if (children != null) {
        for (final child in children) {
          modelAnalysis.referencedNames.remove(_typeName(child));
        }
      }

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
      final needsOneOf = modelAnalysis.needsOneOf;

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
        if (needsOneOf) {
          b.directives.add(
            Directive.import('package:degenerate_runtime/degenerate_runtime.dart'),
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
      final apiEmitter = ApiEmitter(api, typeRegistry: typeRegistry);
      warnings?.addAll(apiEmitter.collectWarnings());
      final specs = apiEmitter.emit();

      final analysis = _analyzeApi(api, typeRegistry);

      // Derive imports directly from referenced types using pre-built lookup
      final sortedApiRefs =
          analysis.referencedTypes
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
          ..directives.add(Directive.import('dart:async'))
          ..directives.addAll(
            needsConvert ? [Directive.import('dart:convert')] : [],
          )
          ..directives.addAll(
            needsTypedData ? [Directive.import('dart:typed_data')] : [],
          )
          ..directives.add(
            Directive.import(
              'package:degenerate_runtime/degenerate_runtime.dart',
            ),
          )
          ..directives.addAll(modelImports)
          ..body.addAll(specs),
      );

      files['lib/src/apis/$fileName.dart'] = emitRaw(library);
    }

    // Emit root SDK facade
    if (apis.isNotEmpty) {
      final sdkFileName = '${packageName}_api';
      files['lib/src/client/$sdkFileName.dart'] = _emitSdkFacade(
        apis: apis,
        securitySchemes: securitySchemes,
        packageName: packageName,
        specFileName: specFileName,
        specVersion: specVersion,
        defaultServerUrl: defaultServerUrl,
      );
    }

    if (securitySchemes.isNotEmpty || globalSecurity != null) {
      final securityFileName = '${packageName}_security';
      files['lib/src/client/$securityFileName.dart'] = _emitSecurityFile(
        apis: apis,
        securitySchemes: securitySchemes,
        globalSecurity: globalSecurity,
        packageName: packageName,
        specFileName: specFileName,
        specVersion: specVersion,
      );
    }

    // Emit barrel file
    files['lib/$packageName.dart'] = _emitBarrelFile(
      types: types,
      apis: apis,
      packageName: packageName,
      specFileName: specFileName,
      specVersion: specVersion,
      inlinedTypes: inlinedInto.keys.toSet(),
      hasSecurityFile: securitySchemes.isNotEmpty || globalSecurity != null,
    );

    // Emit pubspec.yaml
    files['pubspec.yaml'] = _emitPubspec(
      packageName: packageName,
      runtimePath: runtimePath,
      workspace: workspace,
    );

    return files;
  }

  List<Spec> _emitType(IrType type, Map<String, IrType> typeRegistry) {
    return switch (type) {
      IrObject() => ModelEmitter(type).emit(),
      IrEnum() => EnumEmitter(type).emit(),
      IrExtensionType() => ExtensionTypeEmitter(type).emit(),
      IrDiscriminatedUnion() => DiscriminatedUnionEmitter(type).emit(),
      IrUntaggedUnion(:final variants) when isOneOfEligible(variants) =>
        _emitOneOfTypedef(type.name, variants, type.description),
      IrUntaggedUnion() => UntaggedUnionEmitter(
        type,
        typeRegistry: typeRegistry,
      ).emit(),
      IrAnyOf(:final variants) when isOneOfEligible(variants) =>
        _emitOneOfTypedef(type.name, variants, type.description),
      IrAnyOf() => AnyOfEmitter(type, typeRegistry: typeRegistry).emit(),
      // IrList, IrMap, IrPrimitive, IrTypeRef are not top-level emittable types
      _ => [],
    };
  }

  /// Emit a `typedef X = OneOfN<A, B, ...>;` for a union type.
  List<Spec> _emitOneOfTypedef(
    String name,
    List<IrType> variants,
    String? description,
  ) {
    final oneOfRef = oneOfTypeReference(variants);
    final code = Code('typedef $name = ${oneOfRef.accept(_dartEmitter)};');
    return [code];
  }

  static final _dartEmitter = DartEmitter(useNullSafetySyntax: true);

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
  _analyzeApi(IrApi api, [Map<String, IrType>? typeRegistry]) {
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
        final bodyContent = preferredContent(op.requestBody!.content)!;
        if (isJsonLikeMediaType(bodyContent.$1)) needsConvert = true;
        final schema = bodyContent.$2.schema;
        // Request bodies use .toJson() only — don't resolve OneOf variants.
        _collectTopLevelTypeName(schema, names);
        if (isBytesType(schema)) needsTypedData = true;
      }
      // Collect types from success responses (2xx)
      // Response deserialization generates parse code that references variant
      // types directly, so resolve OneOf refs via typeRegistry.
      for (final code in [200, 201, 202, 203, 204]) {
        final resp = op.responses[code];
        if (resp != null) {
          final content = preferredContent(resp.content);
          if (content != null) {
            if (isJsonLikeMediaType(content.$1)) needsConvert = true;
            _collectTopLevelTypeName(content.$2.schema, names, typeRegistry);
            if (isBytesType(content.$2.schema)) needsTypedData = true;
            break;
          }
        }
      }
      // Collect types from SSE (text/event-stream) responses
      final sseContent = eventStreamContent(op);
      if (sseContent != null) {
        needsConvert = true;
        _collectTopLevelTypeName(sseContent.$2.schema, names, typeRegistry);
      }
      // Collect types from error responses (default and 4xx/5xx)
      if (op.defaultResponse != null) {
        final content = preferredContent(op.defaultResponse!.content);
        if (content != null) {
          if (isJsonLikeMediaType(content.$1)) needsConvert = true;
          _collectTopLevelTypeName(content.$2.schema, names, typeRegistry);
        }
      }
      for (final entry in op.responses.entries) {
        if (entry.key >= 400) {
          final content = preferredContent(entry.value.content);
          if (content != null) {
            if (isJsonLikeMediaType(content.$1)) needsConvert = true;
            _collectTopLevelTypeName(content.$2.schema, names, typeRegistry);
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
  /// When [typeRegistry] is provided, resolves IrTypeRef to OneOf-eligible
  /// unions and collects their variant type names (needed for parse code imports).
  void _collectTopLevelTypeName(IrType type, Set<String> names, [Map<String, IrType>? typeRegistry, Set<String>? resolving]) {
    switch (type) {
      case IrObject(:final name):
        names.add(name);
      case IrEnum(:final name):
        names.add(name);
      case IrTypeRef(:final name):
        names.add(name);
        // If the ref points to a OneOf-eligible union (typedef), the generated
        // parse code references the variant types directly — collect them too.
        // Use resolving set to avoid infinite recursion on circular refs.
        resolving ??= {};
        if (typeRegistry != null && resolving.add(name)) {
          final target = typeRegistry[name];
          if (target != null) {
            final variants = switch (target) {
              IrUntaggedUnion(:final variants) when isOneOfEligible(variants) => variants,
              IrAnyOf(:final variants) when isOneOfEligible(variants) => variants,
              _ => null,
            };
            if (variants != null) {
              for (final v in variants) {
                _collectTopLevelTypeName(v, names, typeRegistry, resolving);
              }
            }
          }
        }
      case IrDiscriminatedUnion(:final name):
        names.add(name);
      case IrUntaggedUnion(:final name):
        names.add(name);
      case IrAnyOf(:final name):
        names.add(name);
      case IrExtensionType(:final name):
        names.add(name);
      case IrList(:final items):
        _collectTopLevelTypeName(items, names, typeRegistry, resolving);
      case IrMap(:final values):
        _collectTopLevelTypeName(values, names, typeRegistry, resolving);
      case IrPrimitive():
        break;
    }
  }

  /// Single-pass model analysis: collects referenced type names and detects
  /// whether dart:collection, dart:typed_data, dart:convert, and OneOf are needed.
  ({
    Set<String> referencedNames,
    bool needsCollection,
    bool needsTypedData,
    bool needsConvert,
    bool needsOneOf,
  })
  _analyzeModel(IrType type, [Map<String, IrType>? typeRegistry]) {
    final names = <String>{};
    var needsCollection = false;
    var needsTypedData = false;
    var needsConvert = false;
    var needsOneOf = false;

    bool isBytesType(IrType t) => switch (t) {
      IrPrimitive(:final kind) => kind == PrimitiveKind.bytes,
      IrList(:final items) => isBytesType(items),
      IrMap(:final values) => isBytesType(values),
      _ => false,
    };

    bool isOneOfType(IrType t) => switch (t) {
      IrUntaggedUnion(:final variants) => isOneOfEligible(variants),
      IrAnyOf(:final variants) => isOneOfEligible(variants),
      IrList(:final items) => isOneOfType(items),
      IrMap(:final values) => isOneOfType(values),
      _ => false,
    };

    void checkField(IrType fieldType) {
      _collectTopLevelTypeName(fieldType, names, typeRegistry);
      if (isListType(fieldType)) needsCollection = true;
      if (isBytesType(fieldType)) needsTypedData = true;
      if (isOneOfType(fieldType)) needsOneOf = true;
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
        if (isOneOfEligible(variants)) needsOneOf = true;
        for (final variant in variants) {
          _collectTopLevelTypeName(variant, names);
          if (isBytesType(variant)) needsTypedData = true;
        }
      case IrAnyOf(:final name, :final variants):
        names.add(name);
        if (isOneOfEligible(variants)) needsOneOf = true;
        for (final variant in variants) {
          _collectTopLevelTypeName(variant, names);
          if (isBytesType(variant)) {
            needsTypedData = true;
            needsConvert = true;
          }
        }
      case IrExtensionType(:final name, :final inner):
        names.add(name);
        if (isBytesType(inner)) {
          needsTypedData = true;
          needsConvert = true;
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
      needsOneOf: needsOneOf,
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

  String _emitBarrelFile({
    required List<IrType> types,
    required List<IrApi> apis,
    required String packageName,
    required String specFileName,
    required String specVersion,
    Set<String> inlinedTypes = const {},
    bool hasSecurityFile = false,
  }) {
    final buf = StringBuffer();
    buf.writeln('// dart format off');
    buf.writeln('// GENERATED CODE \u2014 DO NOT MODIFY BY HAND');
    buf.writeln('//');
    buf.writeln('// Generated by degenerate from $specFileName');
    buf.writeln('// OpenAPI spec version: $specVersion');
    buf.writeln();

    // Re-export runtime types so consumers get everything from one import
    buf.writeln("export 'package:degenerate_runtime/degenerate_runtime.dart';");
    if (apis.isNotEmpty) {
      final sdkFileName = '${packageName}_api';
      buf.writeln("export 'src/client/$sdkFileName.dart';");
    }
    if (hasSecurityFile) {
      final securityFileName = '${packageName}_security';
      buf.writeln("export 'src/client/$securityFileName.dart';");
    }
    buf.writeln();

    // Export model files (sorted for stable diffs, deduplicated, excluding inlined)
    final modelNames =
        types
            .map(_typeName)
            .whereType<String>()
            .where((name) => !inlinedTypes.contains(name))
            .toSet()
            .toList()
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

  String _emitSdkFacade({
    required List<IrApi> apis,
    required List<IrSecurityScheme> securitySchemes,
    required String packageName,
    required String specFileName,
    required String specVersion,
    String? defaultServerUrl,
  }) {
    final className = '${toPascalCase(packageName)}Api';
    final buf = StringBuffer();
    buf.writeln('// dart format off');
    buf.writeln('// GENERATED CODE \u2014 DO NOT MODIFY BY HAND');
    buf.writeln('//');
    buf.writeln('// Generated by degenerate from $specFileName');
    buf.writeln('// OpenAPI spec version: $specVersion');
    buf.writeln();
    buf.writeln("import 'package:degenerate_runtime/degenerate_runtime.dart';");
    if (securitySchemes.isNotEmpty) {
      buf.writeln("import '${packageName}_security.dart';");
    }
    // Deduplicate imports — multiple tags can resolve to the same API class name.
    final seenImports = <String>{};
    for (final api in apis) {
      final fileName = toSnakeCase(api.name);
      final importLine = "'../apis/$fileName.dart'";
      if (seenImports.add(importLine)) {
        buf.writeln("import $importLine;");
      }
    }
    buf.writeln();
    buf.writeln('/// Root SDK client providing access to all API groups.');
    buf.writeln('///');
    buf.writeln('/// ```dart');
    buf.writeln('/// final sdk = $className(ApiConfig(client: myClient));');
    for (final api in apis) {
      final fieldName = _facadeFieldName(api.name);
      final exampleMethod = api.operations.isNotEmpty
          ? api.operations.first.dartMethodName
          : 'list';
      buf.writeln('/// sdk.$fieldName.$exampleMethod();');
      break; // just one example
    }
    buf.writeln('/// ```');
    buf.writeln('final class $className {');
    if (defaultServerUrl != null) {
      final escaped = escapeDartString(defaultServerUrl);
      buf.writeln("  static const defaultBaseUrl = '$escaped';");
      buf.writeln();
    }
    buf.writeln('  final ApiConfig _config;');
    buf.writeln();
    buf.writeln('  $className(this._config);');
    buf.writeln();

    // Lazy-initialized API accessors — deduplicate field names.
    final seenFields = <String>{};
    for (final api in apis) {
      final fieldName = _facadeFieldName(api.name);
      if (!seenFields.add(fieldName)) continue;
      buf.writeln(
        '  late final ${api.name} $fieldName = ${api.name}(_config);',
      );
    }

    if (securitySchemes.isNotEmpty) {
      buf.writeln();
      for (final scheme in securitySchemes) {
        final helper = _securityHelperMethod(className, packageName, scheme);
        if (helper != null) buf.writeln(helper);
      }
    }

    buf.writeln('}');
    return buf.toString();
  }

  String _emitSecurityFile({
    required List<IrApi> apis,
    required List<IrSecurityScheme> securitySchemes,
    required List<IrSecurityRequirement>? globalSecurity,
    required String packageName,
    required String specFileName,
    required String specVersion,
  }) {
    final className = '${toPascalCase(packageName)}Security';
    final buf = StringBuffer();
    buf.writeln('// dart format off');
    buf.writeln('// GENERATED CODE — DO NOT MODIFY BY HAND');
    buf.writeln('//');
    buf.writeln('// Generated by degenerate from $specFileName');
    buf.writeln('// OpenAPI spec version: $specVersion');
    buf.writeln();
    if (securitySchemes.any(
      (scheme) => scheme.type == 'http' && scheme.scheme == 'basic',
    )) {
      buf.writeln("import 'dart:convert';");
    }
    buf.writeln("import 'package:degenerate_runtime/degenerate_runtime.dart';");
    buf.writeln();
    buf.writeln('final class $className {');
    buf.writeln('  const $className._();');
    buf.writeln();
    buf.writeln(
      '  static final securitySchemes = <String, ApiSecurityScheme>{',
    );
    for (final scheme in securitySchemes) {
      buf.writeln("    '${scheme.name}': ${_securitySchemeLiteral(scheme)},");
    }
    buf.writeln('  };');
    buf.writeln();
    if (globalSecurity != null) {
      buf.writeln(
        '  static final globalRequirements = ${_securityRequirementsLiteral(globalSecurity)};',
      );
      buf.writeln();
    }
    for (final api in apis) {
      for (final op in api.operations) {
        if (op.securityRequirements == null) continue;
        buf.writeln(
          '  static final ${op.dartMethodName}Requirements = ${_securityRequirementsLiteral(op.securityRequirements!)};',
        );
      }
    }
    if (apis.any(
      (a) => a.operations.any((o) => o.securityRequirements != null),
    )) {
      buf.writeln();
    }
    for (final scheme in securitySchemes) {
      final helper = _securityApplyMethod(scheme);
      if (helper != null) {
        buf.writeln(helper);
        buf.writeln();
      }
    }
    buf.writeln('}');
    return buf.toString();
  }

  String _securitySchemeLiteral(IrSecurityScheme scheme) {
    final type = switch (scheme.type) {
      'apiKey' => 'ApiSecuritySchemeType.apiKey',
      'http' => 'ApiSecuritySchemeType.http',
      'mutualTLS' => 'ApiSecuritySchemeType.mutualTls',
      'oauth2' => 'ApiSecuritySchemeType.oauth2',
      'openIdConnect' => 'ApiSecuritySchemeType.openIdConnect',
      _ => 'ApiSecuritySchemeType.http',
    };
    final location = switch (scheme.location) {
      'header' => 'ApiKeyLocation.header',
      'query' => 'ApiKeyLocation.query',
      'cookie' => 'ApiKeyLocation.cookie',
      _ => 'null',
    };
    final flowLiterals = scheme.flows
        .map(
          (flow) =>
              'ApiOAuthFlow(type: ${_oauthFlowType(flow.type)}, authorizationUrl: ${_stringOrNull(flow.authorizationUrl)}, tokenUrl: ${_stringOrNull(flow.tokenUrl)}, refreshUrl: ${_stringOrNull(flow.refreshUrl)}, scopes: ${_stringMapLiteral(flow.scopes)})',
        )
        .join(', ');
    return 'ApiSecurityScheme(name: ${_stringOrNull(scheme.name)}, type: $type, scheme: ${_stringOrNull(scheme.scheme)}, bearerFormat: ${_stringOrNull(scheme.bearerFormat)}, parameterName: ${_stringOrNull(scheme.parameterName)}, location: $location, openIdConnectUrl: ${_stringOrNull(scheme.openIdConnectUrl)}, flows: [$flowLiterals])';
  }

  String _securityRequirementsLiteral(
    List<IrSecurityRequirement> requirements,
  ) {
    final pieces = requirements
        .map((requirement) {
          final entries = requirement.schemes.entries
              .map(
                (entry) =>
                    "'${entry.key}': [${entry.value.map((scope) => "'${escapeDartString(scope)}'").join(', ')}]",
              )
              .join(', ');
          return 'ApiSecurityRequirement({$entries})';
        })
        .join(', ');
    return '[$pieces]';
  }

  String _oauthFlowType(String type) => switch (type) {
    'implicit' => 'ApiOAuthFlowType.implicit',
    'password' => 'ApiOAuthFlowType.password',
    'clientCredentials' => 'ApiOAuthFlowType.clientCredentials',
    'authorizationCode' => 'ApiOAuthFlowType.authorizationCode',
    _ => 'ApiOAuthFlowType.authorizationCode',
  };

  String _stringOrNull(String? value) =>
      value == null ? 'null' : "'${escapeDartString(value)}'";

  String _stringMapLiteral(Map<String, String> value) {
    final entries = value.entries
        .map(
          (entry) =>
              "'${escapeDartString(entry.key)}': '${escapeDartString(entry.value)}'",
        )
        .join(', ');
    return '{$entries}';
  }

  String? _securityApplyMethod(IrSecurityScheme scheme) {
    final methodName = 'apply${_securityMethodSuffix(scheme.name)}';
    return switch (scheme.type) {
      'apiKey' => switch (scheme.location) {
        'header' =>
          '  static ApiConfig $methodName(ApiConfig config, String value) => config.copyWith(defaultHeaders: {...config.defaultHeaders, ${_stringOrNull(scheme.parameterName)}: value});',
        'query' =>
          '  static ApiConfig $methodName(ApiConfig config, String value) => config.copyWith(defaultQueryParameters: {...config.defaultQueryParameters, ${_stringOrNull(scheme.parameterName)}: value});',
        'cookie' =>
          '  static ApiConfig $methodName(ApiConfig config, String value) => config.copyWith(defaultCookies: {...config.defaultCookies, ${_stringOrNull(scheme.parameterName)}: value});',
        _ => null,
      },
      'http' => switch (scheme.scheme) {
        'bearer' =>
          '  static ApiConfig $methodName(ApiConfig config, String token) => config.copyWith(defaultHeaders: {...config.defaultHeaders, \'Authorization\': \'Bearer \$token\'});',
        'basic' =>
          '  static ApiConfig $methodName(ApiConfig config, {required String username, required String password}) => config.copyWith(defaultHeaders: {...config.defaultHeaders, \'Authorization\': \'Basic \${base64Encode(utf8.encode(\'\$username:\$password\'))}\'});',
        _ => null,
      },
      _ => null,
    };
  }

  String? _securityHelperMethod(
    String sdkClassName,
    String packageName,
    IrSecurityScheme scheme,
  ) {
    final securityClass = '${toPascalCase(packageName)}Security';
    final suffix = _securityMethodSuffix(scheme.name);
    final helperName = 'with$suffix';
    final applyName = 'apply$suffix';
    return switch (scheme.type) {
      'apiKey' =>
        '  $sdkClassName $helperName(String value) => $sdkClassName($securityClass.$applyName(_config, value));',
      'http' => switch (scheme.scheme) {
        'bearer' =>
          '  $sdkClassName $helperName(String token) => $sdkClassName($securityClass.$applyName(_config, token));',
        'basic' =>
          '  $sdkClassName $helperName({required String username, required String password}) => $sdkClassName($securityClass.$applyName(_config, username: username, password: password));',
        _ => null,
      },
      _ => null,
    };
  }

  String _securityMethodSuffix(String name) => name.isEmpty
      ? 'Security'
      : name
            .split(RegExp(r'[^A-Za-z0-9]+'))
            .where((part) => part.isNotEmpty)
            .map((part) => part[0].toUpperCase() + part.substring(1))
            .join();

  /// Derive a clean field name from an API class name.
  ///
  /// Drops a trailing "Api" suffix to avoid redundancy (e.g. `PetsApi` → `pets`).
  String _facadeFieldName(String apiClassName) {
    final stripped = apiClassName.endsWith('Api') && apiClassName.length > 3
        ? apiClassName.substring(0, apiClassName.length - 3)
        : apiClassName;
    // Convert to camelCase (first char lowercase), sanitize reserved words
    final camel = stripped[0].toLowerCase() + stripped.substring(1);
    return sanitizeFieldName(camel);
  }

  String _emitPubspec({
    required String packageName,
    required String runtimePath,
    bool workspace = false,
  }) {
    final buf = StringBuffer();
    buf.writeln('name: $packageName');
    buf.writeln('description: Generated API client.');
    buf.writeln('version: 1.0.0');
    buf.writeln('publish_to: none');
    if (workspace) {
      buf.writeln('resolution: workspace');
    }
    buf.writeln();
    buf.writeln('environment:');
    buf.writeln('  sdk: ^3.8.0');
    buf.writeln();
    buf.writeln('dependencies:');
    buf.writeln('  collection: ^1.18.0');
    buf.writeln('  degenerate_runtime:');
    buf.writeln('    path: $runtimePath');
    return buf.toString();
  }
}
