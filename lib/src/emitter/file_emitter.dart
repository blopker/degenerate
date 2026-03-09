import 'package:code_builder/code_builder.dart';

import '../ir/ir_types.dart';
import 'api_emitter.dart';
import 'emit_utils.dart';
import 'enum_emitter.dart';
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

      // Collect referenced type names for imports
      final referencedNames = <String>{};
      _collectTypeNames(type, referencedNames);
      referencedNames.remove(name); // Don't import self

      final sortedRefs =
          referencedNames.where((n) => typeToFile.containsKey(n)).toList()
            ..sort();
      final modelImports = sortedRefs
          .map((n) => Directive.import('${toSnakeCase(n)}.dart'))
          .toList();

      // Check if any field uses List type (needs collection import for ListEquality)
      final needsCollection = _typeUsesListField(type);
      final needsTypedData = _typeUsesBytesField(type);
      // dart:convert is only needed when the model actually calls base64Encode/base64Decode
      // (IrObject with bytes fields). Union types just reference Uint8List without encoding.
      final needsConvert = _typeNeedsBase64(type);

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

      // Only import model files for types that are actually referenced
      final sortedApiRefs =
          types
              .where((t) => _typeName(t) != null)
              .where((t) => analysis.referencedTypes.contains(_typeName(t)))
              .map((t) => _typeName(t)!)
              .toSet()
              .toList()
            ..sort();
      final modelImports = sortedApiRefs
          .map((n) => Directive.import('../models/${toSnakeCase(n)}.dart'))
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

  String? _typeName(IrType type) {
    return switch (type) {
      IrObject(:final name) => name,
      IrEnum(:final name) => name,
      IrDiscriminatedUnion(:final name) => name,
      IrUntaggedUnion(:final name) => name,
      IrAnyOf(:final name) => name,
      _ => null,
    };
  }

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

  /// Collect the direct (shallow) type names referenced by a type.
  ///
  /// Only collects the immediate field types for objects, variant types for
  /// unions, and item/value types for lists/maps. Does NOT recurse into
  /// the fields of referenced types — those transitive imports are handled
  /// by each model file's own imports.
  void _collectTypeNames(IrType type, Set<String> names) {
    switch (type) {
      case IrObject(:final name):
        names.add(name);
        for (final field in type.fields) {
          _collectTopLevelTypeName(field.type, names);
        }
      case IrEnum(:final name):
        names.add(name);
      case IrTypeRef(:final name):
        names.add(name);
      case IrDiscriminatedUnion(:final name):
        names.add(name);
        for (final variant in type.mapping.values) {
          _collectTopLevelTypeName(variant, names);
        }
      case IrUntaggedUnion(:final name):
        names.add(name);
        for (final variant in type.variants) {
          _collectTopLevelTypeName(variant, names);
        }
      case IrAnyOf(:final name):
        names.add(name);
        for (final variant in type.variants) {
          _collectTopLevelTypeName(variant, names);
        }
      case IrList(:final items):
        _collectTopLevelTypeName(items, names);
      case IrMap(:final values):
        _collectTopLevelTypeName(values, names);
      case IrPrimitive():
        break;
    }
  }

  /// Check if a type has any List-typed fields (needs ListEquality import).
  bool _typeUsesListField(IrType type) {
    switch (type) {
      case IrObject(:final fields):
        return fields.any((f) => isListType(f.type));
      case IrDiscriminatedUnion(:final mapping):
        // Check if any variant (when inlined as object) has list fields
        for (final variant in mapping.values) {
          if (variant is IrObject &&
              variant.fields.any((f) => isListType(f.type))) {
            return true;
          }
        }
        return false;
      default:
        return false;
    }
  }

  /// Check if any operation in an API uses bytes types (needs dart:typed_data).
  /// Whether this type needs dart:convert (base64Encode/base64Decode).
  /// IrObject models with bytes fields call base64 in fromJson/toJson.
  /// AnyOf/UntaggedUnion with bytes variants call base64Decode in fromJson.
  bool _typeNeedsBase64(IrType type) {
    bool isBytesType(IrType t) => switch (t) {
      IrPrimitive(:final kind) => kind == PrimitiveKind.bytes,
      IrList(:final items) => isBytesType(items),
      IrMap(:final values) => isBytesType(values),
      _ => false,
    };
    return switch (type) {
      IrObject(:final fields) => fields.any((f) => isBytesType(f.type)),
      // AnyOf fromJson calls base64Decode for bytes variants.
      IrAnyOf(:final variants) => variants.any(isBytesType),
      // UntaggedUnion uses type switch for primitives (no base64 calls).
      _ => false,
    };
  }

  bool _typeUsesBytesField(IrType type) {
    bool hasBytesType(IrType t) => switch (t) {
      IrPrimitive(:final kind) => kind == PrimitiveKind.bytes,
      IrList(:final items) => hasBytesType(items),
      IrMap(:final values) => hasBytesType(values),
      _ => false,
    };
    switch (type) {
      case IrObject(:final fields):
        return fields.any((f) => hasBytesType(f.type));
      case IrUntaggedUnion(:final variants):
        return variants.any(hasBytesType);
      case IrAnyOf(:final variants):
        return variants.any(hasBytesType);
      case IrDiscriminatedUnion(:final mapping):
        return mapping.values.any(hasBytesType);
      default:
        return false;
    }
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

  Map<String, String> _emitRuntimeFiles(
    String specFileName,
    String specVersion,
  ) {
    final files = <String, String>{};

    // api_client.dart
    files['lib/src/client/api_client.dart'] =
        '''
// dart format off
// GENERATED CODE — DO NOT MODIFY BY HAND
//
// Generated by degenerate from $specFileName
// OpenAPI spec version: $specVersion

/// The contract any HTTP client must satisfy.
abstract interface class ApiClient {
  /// Send a request and return a typed response.
  Future<ApiResponse> send(ApiRequest request);

  /// Base URL for all requests. Must not have a trailing slash.
  Uri get baseUrl;

  /// Close/dispose underlying resources.
  Future<void> close();
}

/// An outgoing API request.
final class ApiRequest {
  final String method;
  final String path;
  final Map<String, String> headers;
  final Map<String, String> queryParameters;
  final Object? body;
  final String? contentType;

  const ApiRequest({
    required this.method,
    required this.path,
    this.headers = const {},
    this.queryParameters = const {},
    this.body,
    this.contentType,
  });

  /// Resolve this request against a base URL.
  Uri resolveUri(Uri baseUrl) {
    final resolved = baseUrl.resolve(path);
    return queryParameters.isEmpty
        ? resolved
        : resolved.replace(queryParameters: {
            ...resolved.queryParameters,
            ...queryParameters,
          });
  }
}

/// A raw API response before deserialization.
final class ApiResponse {
  final int statusCode;
  final Map<String, String> headers;
  final String body;

  const ApiResponse({
    required this.statusCode,
    this.headers = const {},
    required this.body,
  });

  /// True if status code is 2xx.
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
}
''';

    // api_config.dart
    files['lib/src/client/api_config.dart'] =
        '''
// dart format off
// GENERATED CODE — DO NOT MODIFY BY HAND
//
// Generated by degenerate from $specFileName
// OpenAPI spec version: $specVersion

import 'api_client.dart';

/// Configuration for the generated API classes.
final class ApiConfig {
  final ApiClient client;
  final List<Interceptor> interceptors;
  final Map<String, String> defaultHeaders;
  final Duration? timeout;

  const ApiConfig({
    required this.client,
    this.interceptors = const [],
    this.defaultHeaders = const {},
    this.timeout,
  });
}

/// Intercept requests/responses for auth, logging, retries, etc.
abstract interface class Interceptor {
  Future<ApiRequest> onRequest(ApiRequest request);
  Future<ApiResponse> onResponse(ApiResponse response);
  Future<ApiResponse> onError(Object error, StackTrace stack, ApiRequest request);
}
''';

    // api_result.dart
    files['lib/src/client/api_result.dart'] =
        '''
// dart format off
// GENERATED CODE — DO NOT MODIFY BY HAND
//
// Generated by degenerate from $specFileName
// OpenAPI spec version: $specVersion

/// The result of an API operation.
sealed class ApiResult<T> {
  const ApiResult();
}

final class ApiSuccess<T> extends ApiResult<T> {
  final T data;
  final int statusCode;
  final Map<String, String> headers;

  const ApiSuccess(this.data, {required this.statusCode, this.headers = const {}});
}

final class ApiError<T> extends ApiResult<T> {
  final int statusCode;
  final Object? error;
  final String? rawBody;
  final Map<String, String> headers;

  const ApiError({
    required this.statusCode,
    this.error,
    this.rawBody,
    this.headers = const {},
  });
}

/// Network-level failure (DNS, timeout, connection refused).
final class ApiException<T> extends ApiResult<T> {
  final Object exception;
  final StackTrace stackTrace;

  const ApiException(this.exception, this.stackTrace);
}
''';

    return files;
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
