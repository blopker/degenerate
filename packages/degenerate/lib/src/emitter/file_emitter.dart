import 'package:code_builder/code_builder.dart';
import 'package:degenerate/src/emitter/api_emitter.dart';
import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/enum_emitter.dart';
import 'package:degenerate/src/emitter/extension_type_emitter.dart';
import 'package:degenerate/src/emitter/media_type_utils.dart';
import 'package:degenerate/src/emitter/model_emitter.dart';
import 'package:degenerate/src/emitter/sealed_union_emitter.dart';
import 'package:degenerate/src/ir/ir_types.dart';
import 'package:degenerate/src/naming.dart'
    show sanitizeDartName, sanitizeFieldName, toPascalCase;

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
    List<IrSecurityScheme> securitySchemes = const [],
    List<IrSecurityRequirement>? globalSecurity,
    bool workspace = false,
    String? defaultServerUrl,
    List<String>? warnings,
    List<String> unwrapFields = const [],
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
      // Don't resolve OneOf refs here - indirect references through typedefs
      // shouldn't prevent inlining. Resolution is done later for imports.
      final analysis = _analyzeModel(type);
      analysis.referencedNames.remove(parentName); // exclude self
      for (final refName in analysis.referencedNames) {
        (referencedBy[refName] ??= {}).add(parentName);
      }
    }
    // Also count API references - if an API directly uses a type, it stays
    // separate.
    // Don't resolve OneOf variant types here - variants can still be inlined
    // into their parent typedef file (the parent file provides the import).
    final apiReferencedTypes = <String>{};
    for (final api in apis) {
      final analysis = _analyzeApi(api); // no typeRegistry
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
      // Redirect imports: anyone importing this type should import the parent's
      // file
      typeToFile[name] = typeToFile[parent]!;
    }

    // Emit model files
    for (final type in types) {
      final name = _typeName(type);
      if (name == null) continue;
      if (inlinedInto.containsKey(name)) continue; // emitted with parent

      final fileName = toSnakeCase(name);
      const header = _header;

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

      final sortedFiles =
          modelAnalysis.referencedNames
              .where(typeToFile.containsKey)
              .map((n) => typeToFile[n]!)
              .toSet()
              .toList()
            ..sort();
      final modelImports = sortedFiles
          .map((f) => Directive.import('$f.dart'))
          .toList();

      final needsCollection = modelAnalysis.needsCollection;
      final needsTypedData = modelAnalysis.needsTypedData;
      final needsConvert = modelAnalysis.needsConvert;
      final needsOneOf = modelAnalysis.needsOneOf;

      // Determine if the runtime import is needed: for @immutable (classes with
      // == and hashCode), collection helpers, or OneOf types.
      final needsImmutable =
          _typeNeedsImmutable(type) ||
          (children?.any(_typeNeedsImmutable) ?? false);
      final needsRuntime = needsOneOf || needsCollection || needsImmutable;

      final library = Library((b) {
        b.comments.addAll(header);
        if (needsConvert) {
          b.directives.add(Directive.import('dart:convert'));
        }
        if (needsTypedData) {
          b.directives.add(Directive.import('dart:typed_data'));
        }
        if (needsRuntime) {
          b.directives.add(
            Directive.import(
              'package:degenerate_runtime/degenerate_runtime.dart',
            ),
          );
        }
        b.directives.addAll(modelImports);
        b.body.addAll(specs);
      });

      files['models/$fileName.dart'] = emitRaw(library);
    }

    // Emit API files
    for (final api in apis) {
      final fileName = toSnakeCase(api.name);
      const header = _header;
      final apiEmitter = ApiEmitter(
        api,
        typeRegistry: typeRegistry,
        unwrapFields: unwrapFields,
      );
      warnings?.addAll(apiEmitter.collectWarnings());
      final specs = apiEmitter.emit();

      final analysis = _analyzeApi(api, typeRegistry, unwrapFields);

      // Derive imports directly from referenced types using pre-built lookup
      final sortedApiFiles =
          analysis.referencedTypes
              .where(typeToFile.containsKey)
              .map((n) => typeToFile[n]!)
              .toSet()
              .toList()
            ..sort();
      final modelImports = sortedApiFiles
          .map((f) => Directive.import('../models/$f.dart'))
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

      files['apis/$fileName.dart'] = emitRaw(library);
    }

    // Emit root SDK facade
    if (apis.isNotEmpty) {
      final sdkFileName = '${packageName}_api';
      files['client/$sdkFileName.dart'] = _emitSdkFacade(
        apis: apis,
        securitySchemes: securitySchemes,
        packageName: packageName,
        defaultServerUrl: defaultServerUrl,
      );
    }

    if (securitySchemes.isNotEmpty || globalSecurity != null) {
      final securityFileName = '${packageName}_security';
      files['client/$securityFileName.dart'] = _emitSecurityFile(
        apis: apis,
        securitySchemes: securitySchemes,
        globalSecurity: globalSecurity,
        packageName: packageName,
      );
    }

    // Emit barrel file
    files['$packageName.dart'] = _emitBarrelFile(
      types: types,
      apis: apis,
      packageName: packageName,
      inlinedTypes: inlinedInto.keys.toSet(),
      hasSecurityFile: securitySchemes.isNotEmpty || globalSecurity != null,
    );

    // Emit pubspec.yaml only in workspace mode
    if (workspace) {
      files['pubspec.yaml'] = _emitPubspec(
        packageName: packageName,
        workspace: true,
      );
    }

    return files;
  }

  List<Spec> _emitType(IrType type, Map<String, IrType> typeRegistry) {
    return switch (type) {
      IrObject() => ModelEmitter(type, typeRegistry: typeRegistry).emit(),
      IrEnum() => EnumEmitter(type).emit(),
      IrExtensionType() => ExtensionTypeEmitter(type).emit(),
      IrDiscriminatedUnion() => DiscriminatedUnionEmitter(type).emit(),
      IrUntaggedUnion(:final variants)
          when isOneOfEligible(variants) &&
              !_isSelfReferencing(type.name, variants) =>
        _emitOneOfTypedef(type.name, variants, type.description, typeRegistry),
      IrUntaggedUnion() => UntaggedUnionEmitter(
        type,
        typeRegistry: typeRegistry,
      ).emit(),
      IrAnyOf(:final variants)
          when isOneOfEligible(variants) &&
              !_isSelfReferencing(type.name, variants) =>
        _emitOneOfTypedef(type.name, variants, type.description, typeRegistry),
      IrAnyOf() => AnyOfEmitter(type, typeRegistry: typeRegistry).emit(),
      // IrList, IrMap, IrPrimitive, IrTypeRef are not top-level emittable types
      _ => [],
    };
  }

  /// Emit a `typedef X = OneOfN<A, B, ...>;` for a union type.
  ///
  /// For self-referencing types (e.g.,
  /// `WorkersKvAny = OneOf6<..., List<WorkersKvAny>>`),
  /// also emits a top-level `parseTypeName` function for recursive
  /// deserialization.
  List<Spec> _emitOneOfTypedef(
    String name,
    List<IrType> variants,
    String? description,
    Map<String, IrType> typeRegistry,
  ) {
    final oneOfRef = oneOfTypeReference(variants);
    final specs = <Spec>[
      Code('typedef $name = ${oneOfRef.accept(_dartEmitter)};'),
    ];
    // Check if any variant references this type (direct self-reference).
    if (_isSelfReferencing(name, variants)) {
      final resolving = {name};
      final parseBody = buildOneOfParseCode(
        variants,
        'json',
        typeRegistry: typeRegistry,
        resolving: resolving,
      );
      specs.add(Code('$name parse$name(Object? json) => $parseBody;'));
    }
    return specs;
  }

  /// Check if any variant (recursively through List/Map) references [typeName].
  bool _isSelfReferencing(String typeName, List<IrType> variants) {
    bool check(IrType type) => switch (type) {
      IrTypeRef(:final name) => name == typeName,
      IrList(:final items) => check(items),
      IrMap(:final values) => check(values),
      _ => false,
    };
    return variants.any(check);
  }

  static final _dartEmitter = DartEmitter(useNullSafetySyntax: true);

  /// Whether a type emits classes that have == and hashCode (needing
  /// @immutable).
  static bool _typeNeedsImmutable(IrType type) => switch (type) {
    IrObject() => true,
    IrEnum() => true,
    IrDiscriminatedUnion() => true,
    IrUntaggedUnion() => true,
    IrAnyOf() => true,
    _ => false,
  };

  String? _typeName(IrType type) => type.emittableName;

  /// Collect top-level type names referenced by an API's operations.
  ///
  /// Only collects the immediate types that appear in the generated API code
  /// (parameters, request bodies, success responses). Does NOT recurse into
  /// object fields - those transitive dependencies are handled by the model
  /// files' own imports.
  /// Single-pass analysis of an API: collects referenced types, and determines
  /// whether dart:convert and dart:typed_data imports are needed.
  ({Set<String> referencedTypes, bool needsConvert, bool needsTypedData})
  _analyzeApi(
    IrApi api, [
    Map<String, IrType>? typeRegistry,
    List<String> unwrapFields = const [],
  ]) {
    final names = <String>{};
    var needsConvert = false;
    var needsTypedData = false;
    bool isBytesType(IrType t) => switch (t) {
      IrPrimitive(:final kind) => kind == PrimitiveKind.bytes,
      IrList(:final items) => isBytesType(items),
      IrMap(:final values) => isBytesType(values),
      _ => false,
    };

    // Unwrap a response type if it matches unwrapFields config.
    IrType maybeUnwrap(IrType type) {
      if (unwrapFields.isEmpty || typeRegistry == null) return type;
      IrObject? obj;
      if (type is IrObject) {
        obj = type;
      } else if (type is IrTypeRef) {
        final resolved = typeRegistry[type.name];
        if (resolved is IrObject) obj = resolved;
      }
      if (obj == null) return type;
      for (final fieldName in unwrapFields) {
        for (final f in obj.fields) {
          if (f.originalName == fieldName) return f.type;
        }
      }
      return type;
    }

    for (final op in api.operations) {
      for (final param in op.parameters) {
        _collectTopLevelTypeName(param.type, names);
        if (isBytesType(param.type)) needsTypedData = true;
      }
      // Match the type selection logic used by ApiEmitter:
      // prefer application/json, fallback to first content type.
      if (op.requestBody != null && op.requestBody!.content.isNotEmpty) {
        final bodyContent = preferredContent(op.requestBody!.content)!;
        if (isJsonLikeMediaType(bodyContent.$1)) needsConvert = true;
        final schema = bodyContent.$2.schema;
        // Request bodies use .toJson() only - don't resolve OneOf variants.
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
            final schema = maybeUnwrap(content.$2.schema);
            _collectTopLevelTypeName(schema, names, typeRegistry);
            if (isBytesType(schema)) needsTypedData = true;
            break;
          }
        }
      }
      // Collect types from streaming responses (SSE, JSONL)
      final streaming = streamingContent(op);
      if (streaming != null) {
        needsConvert = true;
        final eventType = streaming.$2.itemSchema ?? streaming.$2.schema;
        _collectTopLevelTypeName(eventType, names, typeRegistry);
      }
      // Collect error response type (matching ApiEmitter._errorResponseContent
      // logic: prefer default, then first 4xx+, only one error type per
      // operation).
      {
        (String, IrMediaType)? errorContent;
        if (op.defaultResponse != null) {
          errorContent = preferredContent(op.defaultResponse!.content);
        }
        if (errorContent == null) {
          for (final entry in op.responses.entries) {
            if (entry.key >= 400) {
              errorContent = preferredContent(entry.value.content);
              if (errorContent != null) break;
            }
          }
        }
        if (errorContent != null) {
          if (isJsonLikeMediaType(errorContent.$1)) needsConvert = true;
          _collectTopLevelTypeName(errorContent.$2.schema, names, typeRegistry);
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
  /// unions and collects their variant type names (needed for parse code
  /// imports).
  ///
  /// When [skipInlinedOneOfRefs] is true (used during variant resolution),
  /// refs that resolve to non-self-referencing OneOf typedefs are NOT added
  /// to [names] because they are fully inlined in the parse code.
  void _collectTopLevelTypeName(
    IrType type,
    Set<String> names, [
    Map<String, IrType>? typeRegistry,
    Set<String>? resolving,
    bool skipInlinedOneOfRefs = false,
  ]) {
    switch (type) {
      case IrObject(:final name):
        names.add(name);
      case IrEnum(:final name):
        names.add(name);
      case IrTypeRef(:final name):
        // Check if this ref points to a non-self-referencing OneOf typedef
        // that will be inlined in parse code (no explicit reference in output).
        final isInlinedOneOf =
            skipInlinedOneOfRefs &&
            typeRegistry != null &&
            switch (typeRegistry[name]) {
              IrUntaggedUnion(:final variants)
                  when isOneOfEligible(variants) &&
                      !_isSelfReferencing(name, variants) =>
                true,
              IrAnyOf(:final variants)
                  when isOneOfEligible(variants) &&
                      !_isSelfReferencing(name, variants) =>
                true,
              _ => false,
            };
        if (!isInlinedOneOf) {
          names.add(name);
        }
        // If the ref points to a OneOf-eligible union (typedef), the generated
        // parse code references the variant types directly - collect them too.
        // Use resolving set to avoid infinite recursion on circular refs.
        resolving ??= {};
        if (typeRegistry != null && resolving.add(name)) {
          final target = typeRegistry[name];
          if (target != null) {
            final variants = switch (target) {
              IrUntaggedUnion(:final variants) when isOneOfEligible(variants) =>
                variants,
              IrAnyOf(:final variants) when isOneOfEligible(variants) =>
                variants,
              _ => null,
            };
            if (variants != null) {
              for (final v in variants) {
                // Variant refs to other OneOf typedefs are also inlined
                _collectTopLevelTypeName(
                  v,
                  names,
                  typeRegistry,
                  resolving,
                  true,
                );
              }
            }
          }
        }
      case IrDiscriminatedUnion(:final name):
        names.add(name);
      case IrUntaggedUnion(:final name, :final variants):
        // Skip adding the name if this is a non-self-referencing OneOf typedef
        // that will be inlined in parse code.
        final skipUntagged =
            skipInlinedOneOfRefs &&
            isOneOfEligible(variants) &&
            !_isSelfReferencing(name, variants);
        if (!skipUntagged) {
          names.add(name);
        }
        // When resolving imports (typeRegistry provided), collect variant type
        // names
        // because OneOf.parse() code references them directly.
        if (typeRegistry != null && isOneOfEligible(variants)) {
          for (final v in variants) {
            _collectTopLevelTypeName(v, names, typeRegistry, resolving, true);
          }
        }
      case IrAnyOf(:final name, :final variants):
        final skipAnyOf =
            skipInlinedOneOfRefs &&
            isOneOfEligible(variants) &&
            !_isSelfReferencing(name, variants);
        if (!skipAnyOf) {
          names.add(name);
        }
        if (typeRegistry != null && isOneOfEligible(variants)) {
          for (final v in variants) {
            _collectTopLevelTypeName(v, names, typeRegistry, resolving, true);
          }
        }
      case IrExtensionType(:final name):
        names.add(name);
      case IrList(:final items):
        _collectTopLevelTypeName(
          items,
          names,
          typeRegistry,
          resolving,
          skipInlinedOneOfRefs,
        );
      case IrMap(:final values):
        _collectTopLevelTypeName(
          values,
          names,
          typeRegistry,
          resolving,
          skipInlinedOneOfRefs,
        );
      case IrPrimitive():
        break;
    }
  }

  /// Single-pass model analysis: collects referenced type names and detects
  /// whether dart:collection, dart:typed_data, dart:convert, and OneOf are
  /// needed.
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

    /// Direct bytes check (no union/ref traversal) - for needsTypedData.
    bool isDirectBytes(IrType t) => switch (t) {
      IrPrimitive(:final kind) => kind == PrimitiveKind.bytes,
      IrList(:final items) => isDirectBytes(items),
      IrMap(:final values) => isDirectBytes(values),
      _ => false,
    };

    /// Deep bytes check (traverses OneOf-eligible unions and refs) - for
    /// needsConvert.
    /// Only recurses into OneOf-eligible unions because their parse code is
    /// inlined
    /// in the current file. Non-OneOf-eligible unions (sealed classes) handle
    /// bytes
    /// in their own fromJson method.
    final bytesVisited = <String>{};
    bool hasBytesAnywhere(IrType t) => switch (t) {
      IrPrimitive(:final kind) => kind == PrimitiveKind.bytes,
      IrList(:final items) => hasBytesAnywhere(items),
      IrMap(:final values) => hasBytesAnywhere(values),
      IrUntaggedUnion(:final variants) when isOneOfEligible(variants) =>
        variants.any(hasBytesAnywhere),
      IrAnyOf(:final variants) when isOneOfEligible(variants) => variants.any(
        hasBytesAnywhere,
      ),
      IrTypeRef(:final name)
          when typeRegistry != null && bytesVisited.add(name) =>
        switch (typeRegistry[name]) {
          IrUntaggedUnion(:final variants) when isOneOfEligible(variants) =>
            variants.any(hasBytesAnywhere),
          IrAnyOf(:final variants) when isOneOfEligible(variants) =>
            variants.any(hasBytesAnywhere),
          _ => false,
        },
      _ => false,
    };

    bool isOneOfType(IrType t) => switch (t) {
      IrUntaggedUnion(:final name, :final variants)
          when isOneOfEligible(variants) &&
              !_isSelfReferencing(name, variants) =>
        true,
      IrAnyOf(:final name, :final variants)
          when isOneOfEligible(variants) &&
              !_isSelfReferencing(name, variants) =>
        true,
      IrTypeRef(:final name) when typeRegistry != null =>
        switch (typeRegistry[name]) {
          IrUntaggedUnion(:final variants)
              when isOneOfEligible(variants) &&
                  !_isSelfReferencing(name, variants) =>
            true,
          IrAnyOf(:final variants)
              when isOneOfEligible(variants) &&
                  !_isSelfReferencing(name, variants) =>
            true,
          _ => false,
        },
      IrList(:final items) => isOneOfType(items),
      IrMap(:final values) => isOneOfType(values),
      _ => false,
    };

    void checkField(IrType fieldType) {
      _collectTopLevelTypeName(fieldType, names, typeRegistry);
      if (isListType(fieldType)) needsCollection = true;
      if (isDirectBytes(fieldType)) {
        needsTypedData = true;
        needsConvert = true;
      } else if (hasBytesAnywhere(fieldType)) {
        needsConvert = true;
      }
      if (isOneOfType(fieldType)) needsOneOf = true;
    }

    switch (type) {
      case IrObject(:final name, :final fields, :final additionalProperties):
        names.add(name);
        for (final field in fields) {
          checkField(field.type);
        }
        if (additionalProperties != null) {
          checkField(additionalProperties);
          needsCollection = true; // mapEquals from runtime
        }
      case IrEnum(:final name):
        names.add(name);
      case IrTypeRef(:final name):
        names.add(name);
      case IrDiscriminatedUnion(:final name, :final mapping):
        names.add(name);
        for (final variant in mapping.values) {
          // Discriminated union files only reference variant types by name,
          // no transitive resolution needed.
          _collectTopLevelTypeName(variant, names);
          if (variant is IrObject) {
            for (final f in variant.fields) {
              if (isListType(f.type)) needsCollection = true;
            }
          }
          if (isDirectBytes(variant)) needsTypedData = true;
        }
      case IrUntaggedUnion(:final name, :final variants):
        names.add(name);
        if (isOneOfEligible(variants)) needsOneOf = true;
        for (final variant in variants) {
          // Typedef/sealed union files only reference direct variant types.
          _collectTopLevelTypeName(variant, names);
          if (isDirectBytes(variant)) needsTypedData = true;
        }
      case IrAnyOf(:final name, :final variants):
        names.add(name);
        if (isOneOfEligible(variants) && !_isSelfReferencing(name, variants)) {
          // OneOf typedef: only direct variant types needed.
          // Typedef files don't contain base64 code, so only needsTypedData.
          needsOneOf = true;
          for (final variant in variants) {
            _collectTopLevelTypeName(variant, names);
            if (isDirectBytes(variant)) needsTypedData = true;
          }
        } else {
          // AnyOf class: fromJson calls .fromJson()/.canParse() on variants,
          // or inlines OneOf.parse for OneOf-eligible union variants.
          for (final variant in variants) {
            _collectTopLevelTypeName(variant, names, typeRegistry);
            if (isOneOfType(variant)) needsOneOf = true;
            if (isDirectBytes(variant)) {
              needsTypedData = true;
              needsConvert = true;
            }
          }
        }
      case IrExtensionType(:final name, :final inner):
        names.add(name);
        if (isDirectBytes(inner)) {
          needsTypedData = true;
          needsConvert = true;
        }
      case IrList(:final items):
        _collectTopLevelTypeName(items, names, typeRegistry);
      case IrMap(:final values):
        _collectTopLevelTypeName(values, names, typeRegistry);
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

  /// Header comment for generated files.
  /// Note: code_builder prepends '// ' to each line.
  static const _header = ['GENERATED CODE - DO NOT MODIFY BY HAND'];

  /// Wrap raw Dart source in a Library with the standard header.
  String _emitWithHeader(String body) {
    final library = Library((b) {
      b.comments.addAll(_header);
      b.body.add(Code(body));
    });
    return emitRaw(library);
  }

  String _emitBarrelFile({
    required List<IrType> types,
    required List<IrApi> apis,
    required String packageName,
    Set<String> inlinedTypes = const {},
    bool hasSecurityFile = false,
  }) {
    // Collect all relative exports and sort them alphabetically.
    final relativeExports = <String>[
      if (apis.isNotEmpty) 'client/${packageName}_api.dart',
      if (hasSecurityFile) 'client/${packageName}_security.dart',
      for (final name
          in types
              .map(_typeName)
              .whereType<String>()
              .where((name) => !inlinedTypes.contains(name))
              .toSet()
              .toList()
            ..sort())
        'models/${toSnakeCase(name)}.dart',
      for (final name in apis.map((a) => a.name).toSet().toList()..sort())
        'apis/${toSnakeCase(name)}.dart',
    ]..sort();

    final exports = <Directive>[
      Directive.export('package:degenerate_runtime/degenerate_runtime.dart'),
      ...relativeExports.map(Directive.export),
    ];

    final library = Library((b) {
      b.comments.addAll(_header);
      b.directives.addAll(exports);
    });
    return emitRaw(library);
  }

  String _emitSdkFacade({
    required List<IrApi> apis,
    required List<IrSecurityScheme> securitySchemes,
    required String packageName,
    String? defaultServerUrl,
  }) {
    final className = '${sanitizeDartName(toPascalCase(packageName))}Api';
    final buf = StringBuffer();
    buf.writeln("import 'package:degenerate_runtime/degenerate_runtime.dart';");
    // Collect and sort relative imports alphabetically.
    final relativeImports = <String>[];
    if (securitySchemes.isNotEmpty) {
      relativeImports.add("'${packageName}_security.dart'");
    }
    final seenImports = <String>{};
    for (final api in apis) {
      final fileName = toSnakeCase(api.name);
      final importLine = "'../apis/$fileName.dart'";
      if (seenImports.add(importLine)) {
        relativeImports.add(importLine);
      }
    }
    relativeImports.sort();
    for (final imp in relativeImports) {
      buf.writeln('import $imp;');
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
    buf.writeln('  $className(this._config);');
    buf.writeln();
    if (defaultServerUrl != null) {
      final escaped = escapeDartString(defaultServerUrl);
      buf.writeln("  static const defaultBaseUrl = '$escaped';");
      buf.writeln();
    }
    buf.writeln('  final ApiConfig _config;');
    buf.writeln();

    // Lazy-initialized API accessors - deduplicate field names.
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
    return _emitWithHeader(buf.toString());
  }

  String _emitSecurityFile({
    required List<IrApi> apis,
    required List<IrSecurityScheme> securitySchemes,
    required List<IrSecurityRequirement>? globalSecurity,
    required String packageName,
  }) {
    final className = '${sanitizeDartName(toPascalCase(packageName))}Security';
    final buf = StringBuffer();
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
    return _emitWithHeader(buf.toString());
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
    // Only include optional parameters that differ from their defaults.
    final args = <String>[
      "name: '${escapeDartString(scheme.name)}'",
      'type: $type',
    ];
    if (scheme.scheme != null) {
      args.add('scheme: ${_stringOrNull(scheme.scheme)}');
    }
    if (scheme.bearerFormat != null) {
      args.add('bearerFormat: ${_stringOrNull(scheme.bearerFormat)}');
    }
    if (scheme.parameterName != null) {
      args.add('parameterName: ${_stringOrNull(scheme.parameterName)}');
    }
    if (scheme.location != null) {
      final location = switch (scheme.location) {
        'header' => 'ApiKeyLocation.header',
        'query' => 'ApiKeyLocation.query',
        'cookie' => 'ApiKeyLocation.cookie',
        _ => 'null',
      };
      if (location != 'null') args.add('location: $location');
    }
    if (scheme.openIdConnectUrl != null) {
      args.add(
        'openIdConnectUrl: ${_stringOrNull(scheme.openIdConnectUrl)}',
      );
    }
    if (scheme.flows.isNotEmpty) {
      final flowLiterals = scheme.flows.map(_oauthFlowLiteral).join(', ');
      args.add('flows: [$flowLiterals]');
    }
    return 'const ApiSecurityScheme(${args.join(', ')})';
  }

  String _oauthFlowLiteral(IrOAuthFlow flow) {
    final args = <String>['type: ${_oauthFlowType(flow.type)}'];
    if (flow.authorizationUrl != null) {
      args.add('authorizationUrl: ${_stringOrNull(flow.authorizationUrl)}');
    }
    if (flow.tokenUrl != null) {
      args.add('tokenUrl: ${_stringOrNull(flow.tokenUrl)}');
    }
    if (flow.refreshUrl != null) {
      args.add('refreshUrl: ${_stringOrNull(flow.refreshUrl)}');
    }
    if (flow.deviceAuthorizationUrl != null) {
      args.add(
        'deviceAuthorizationUrl: ${_stringOrNull(flow.deviceAuthorizationUrl)}',
      );
    }
    if (flow.scopes.isNotEmpty) {
      args.add('scopes: ${_stringMapLiteral(flow.scopes)}');
    }
    return 'ApiOAuthFlow(${args.join(', ')})';
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
          return 'const ApiSecurityRequirement({$entries})';
        })
        .join(', ');
    return '[$pieces]';
  }

  String _oauthFlowType(String type) => switch (type) {
    'implicit' => 'ApiOAuthFlowType.implicit',
    'password' => 'ApiOAuthFlowType.password',
    'clientCredentials' => 'ApiOAuthFlowType.clientCredentials',
    'authorizationCode' => 'ApiOAuthFlowType.authorizationCode',
    'deviceAuthorization' => 'ApiOAuthFlowType.deviceAuthorization',
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
          "  static ApiConfig $methodName(ApiConfig config, String token) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'Authorization': 'Bearer \$token'});",
        'basic' =>
          "  static ApiConfig $methodName(ApiConfig config, {required String username, required String password}) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'Authorization': 'Basic \${base64Encode(utf8.encode('\$username:\$password'))}'});",
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
    final securityClass =
        '${sanitizeDartName(toPascalCase(packageName))}Security';
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
            .split(RegExp('[^A-Za-z0-9]+'))
            .where((part) => part.isNotEmpty)
            .map((part) => part[0].toUpperCase() + part.substring(1))
            .join();

  /// Derive a clean field name from an API class name.
  ///
  /// Drops a trailing "Api" suffix to avoid redundancy (e.g. `PetsApi` →
  /// `pets`).
  String _facadeFieldName(String apiClassName) {
    final stripped = apiClassName.endsWith('Api') && apiClassName.length > 3
        ? apiClassName.substring(0, apiClassName.length - 3)
        : apiClassName;
    // Convert to camelCase (first char lowercase), sanitize reserved words
    final camel = stripped[0].toLowerCase() + stripped.substring(1);
    return sanitizeFieldName(camel);
  }

  String _emitPubspec({required String packageName, bool workspace = false}) {
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
    buf.writeln('  degenerate_runtime:');
    return buf.toString();
  }
}
