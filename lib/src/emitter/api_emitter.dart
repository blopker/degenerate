import 'package:code_builder/code_builder.dart';

import '../ir/ir_types.dart';
import 'emit_utils.dart';

/// Emits an API client class from an [IrApi].
///
/// Each API tag becomes a `final class` with methods for each operation,
/// returning `Future<ApiResult<T>>`.
class ApiEmitter {
  final IrApi api;
  const ApiEmitter(this.api);

  List<Spec> emit() {
    return [
      Class(
        (b) => b
          ..name = api.name
          ..modifier = ClassModifier.final$
          ..docs.addAll(_buildDocs())
          ..fields.add(
            Field(
              (f) => f
                ..name = '_config'
                ..modifier = FieldModifier.final$
                ..type = refer('ApiConfig'),
            ),
          )
          ..constructors.add(
            Constructor(
              (c) => c
                ..constant = true
                ..requiredParameters.add(
                  Parameter(
                    (p) => p
                      ..name = '_config'
                      ..toThis = true,
                  ),
                ),
            ),
          )
          ..methods.addAll(api.operations.map(_buildOperation))
          ..methods.add(_buildExecute()),
      ),
    ];
  }

  List<String> _buildDocs() {
    return [
      '/// ${api.name} operations.',
      '///',
      '/// All operations return [ApiResult] — use pattern matching to handle',
      '/// success, error, and exception cases.',
    ];
  }

  Method _buildOperation(IrOperation op) {
    final params = <Parameter>[];

    // Pre-partition parameters by location (avoids repeated linear scans)
    final pathParams = <IrParameter>[];
    final queryParams = <IrParameter>[];
    final headerParams = <IrParameter>[];
    for (final p in op.parameters) {
      switch (p.location) {
        case ParameterLocation.path:
          pathParams.add(p);
        case ParameterLocation.query:
          queryParams.add(p);
        case ParameterLocation.header:
          headerParams.add(p);
        case ParameterLocation.cookie:
          break;
      }
    }

    // Path parameters (always required, never nullable — they're part of the URL)
    for (final p in pathParams) {
      params.add(
        Parameter(
          (pb) => pb
            ..name = p.dartName
            ..named = true
            ..required = true
            ..type = irTypeToReference(p.type, forceNonNullable: true),
        ),
      );
    }

    // Query parameters
    for (final p in queryParams) {
      params.add(
        Parameter(
          (pb) => pb
            ..name = p.dartName
            ..named = true
            ..required = p.isRequired
            ..type = irTypeToReference(p.type, forceNullable: !p.isRequired),
        ),
      );
    }

    // Header parameters
    for (final p in headerParams) {
      params.add(
        Parameter(
          (pb) => pb
            ..name = p.dartName
            ..named = true
            ..required = p.isRequired
            ..type = irTypeToReference(p.type, forceNullable: !p.isRequired),
        ),
      );
    }

    // Request body (skip for GET/HEAD — bodies are not standard for these methods)
    final isBodyAllowed =
        op.method != HttpMethod.get && op.method != HttpMethod.head;
    final bodyType = op.requestBody != null && isBodyAllowed
        ? _requestBodyType(op.requestBody!)
        : null;
    if (bodyType != null) {
      params.add(
        Parameter(
          (pb) => pb
            ..name = 'body'
            ..named = true
            ..required = op.requestBody!.isRequired
            ..type = irTypeToReference(
              bodyType,
              forceNullable: !op.requestBody!.isRequired,
            ),
        ),
      );
    }

    // Determine return type from success response
    final returnType = _successResponseType(op);
    final returnTypeStr = returnType != null ? irTypeName(returnType) : 'void';
    final futureType = 'Future<ApiResult<$returnTypeStr>>';

    // Build method body
    final bodyCode = _buildOperationBody(
      op,
      returnType,
      bodyType: bodyType,
      pathParams: pathParams,
      queryParams: queryParams,
    );

    final docs = <String>[];
    if (op.summary != null) {
      docs.addAll(formatDocComment(op.summary!));
    }
    if (op.description != null && op.description != op.summary) {
      docs.add('///');
      docs.addAll(formatDocComment(op.description!));
    }
    final httpMethod = op.method.name.toUpperCase();
    docs.add('///');
    docs.add('/// `$httpMethod ${op.path}`');

    return Method(
      (m) => m
        ..name = op.dartMethodName
        ..modifier = MethodModifier.async
        ..returns = refer(futureType)
        ..optionalParameters.addAll(params)
        ..docs.addAll(docs)
        ..annotations.addAll(
          op.isDeprecated
              ? [
                  refer('Deprecated').call([literalString('')]),
                ]
              : [],
        )
        ..body = Code(bodyCode),
    );
  }

  static final _pathParamPattern = RegExp(r'\{([^}]+)\}');

  String _buildOperationBody(
    IrOperation op,
    IrType? returnType, {
    IrType? bodyType,
    required List<IrParameter> pathParams,
    required List<IrParameter> queryParams,
  }) {
    final buf = StringBuffer();
    final httpMethod = op.method.name.toUpperCase();

    // Build path with parameter interpolation (URL-encoded)
    final pathParamsByName = {for (final p in pathParams) p.name: p};
    final path = op.path.replaceAllMapped(_pathParamPattern, (m) {
      final p = pathParamsByName[m[1]];
      if (p == null) return m[0]!;
      final type = p.type;
      final isString = type is IrPrimitive && type.kind == PrimitiveKind.string;
      final encodeExpr = isString
          ? 'Uri.encodeComponent(${p.dartName})'
          : 'Uri.encodeComponent(${p.dartName}.toString())';
      return '\${$encodeExpr}';
    });

    buf.writeln('final request = ApiRequest(');
    buf.writeln("  method: '$httpMethod',");
    buf.writeln("  path: '$path',");
    buf.writeln('  headers: {..._config.defaultHeaders');
    if (bodyType != null) {
      buf.writeln("    , 'Content-Type': 'application/json'");
    }
    buf.writeln('  },');

    if (queryParams.isNotEmpty) {
      buf.writeln('  queryParameters: {');
      for (final p in queryParams) {
        final sanitizedName = p.name
            .replaceAll('\n', '')
            .replaceAll('\r', '')
            .trim();
        final queryValue = _toQueryString(p);
        if (p.isRequired) {
          buf.writeln("    '$sanitizedName': $queryValue,");
        } else if (queryValue == p.dartName) {
          // Use null-aware element syntax when value is the variable itself.
          buf.writeln("    '$sanitizedName': ?${p.dartName},");
        } else {
          buf.writeln(
            "    if (${p.dartName} != null) '$sanitizedName': $queryValue,",
          );
        }
      }
      buf.writeln('  },');
    }

    if (bodyType != null) {
      final isBodyOptional = !op.requestBody!.isRequired;
      final isBodyNullable = isBodyOptional || bodyType.isNullable;
      final nullAware = isBodyNullable ? '?' : '';
      final toJsonCall = _requestBodyNeedsToJson(op.requestBody!)
          ? '$nullAware.toJson()'
          : '';
      buf.writeln('  body: jsonEncode(body$toJsonCall),');
    }

    buf.writeln(');');
    buf.writeln();

    // Build onSuccess callback
    if (returnType != null) {
      final deserialize = _buildDeserializeExpr(returnType);
      buf.writeln('return _execute(');
      buf.writeln('  request,');
      buf.writeln('  onSuccess: (response) {');
      buf.writeln('    $deserialize');
      buf.writeln('  },');
      buf.writeln(');');
    } else {
      buf.writeln('return _execute(');
      buf.writeln('  request,');
      buf.writeln('  onSuccess: (_) {},');
      buf.writeln(');');
    }

    return buf.toString();
  }

  String _buildDeserializeExpr(IrType returnType) {
    return switch (returnType) {
      IrList(:final items) =>
        'final json = jsonDecode(response.body) as List<dynamic>;\n'
            '    return json.map((e) => ${buildFromJsonCode(items, 'e')}).toList();',
      IrMap(:final values) =>
        'return (jsonDecode(response.body) as Map<String, dynamic>).map((k, v) => MapEntry(k, ${buildFromJsonCode(values, 'v')}));',
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.string => 'return response.body;',
        PrimitiveKind.int => 'return int.parse(response.body);',
        PrimitiveKind.double => 'return double.parse(response.body);',
        PrimitiveKind.bool => 'return jsonDecode(response.body) as bool;',
        _ => 'return jsonDecode(response.body);',
      },
      IrTypeRef(:final name) =>
        'return $name.fromJson(jsonDecode(response.body) as Map<String, dynamic>);',
      IrObject(:final name) =>
        'return $name.fromJson(jsonDecode(response.body) as Map<String, dynamic>);',
      _ =>
        'return ${irTypeName(returnType)}.fromJson(jsonDecode(response.body) as Map<String, dynamic>);',
    };
  }

  String _toQueryString(IrParameter p) {
    final type = p.type;
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.string => p.dartName,
        _ => '${p.dartName}.toString()',
      },
      IrEnum() => '${p.dartName}.toJson()',
      _ => '${p.dartName}.toString()',
    };
  }

  Method _buildExecute() {
    return Method(
      (m) => m
        ..name = '_execute'
        ..types.add(refer('T'))
        ..modifier = MethodModifier.async
        ..returns = refer('Future<ApiResult<T>>')
        ..requiredParameters.add(
          Parameter(
            (p) => p
              ..name = 'request'
              ..type = refer('ApiRequest'),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (p) => p
              ..name = 'onSuccess'
              ..named = true
              ..required = true
              ..type = refer('T Function(ApiResponse)'),
          ),
        )
        ..docs.add(
          '/// Shared execution pipeline: interceptors -> send -> deserialize.',
        )
        ..body = const Code('''
var req = request;
try {
  for (final interceptor in _config.interceptors) {
    req = await interceptor.onRequest(req);
  }

  var response = _config.timeout != null
      ? await _config.client.send(req).timeout(_config.timeout!)
      : await _config.client.send(req);

  for (final interceptor in _config.interceptors) {
    response = await interceptor.onResponse(response);
  }

  if (response.isSuccessful) {
    return ApiSuccess(
      onSuccess(response),
      statusCode: response.statusCode,
      headers: response.headers,
    );
  }
  return ApiError(
    statusCode: response.statusCode,
    rawBody: response.body,
    headers: response.headers,
  );
} catch (e, st) {
  for (final interceptor in _config.interceptors) {
    try {
      final recovered = await interceptor.onError(e, st, req);
      if (recovered.isSuccessful) {
        return ApiSuccess(onSuccess(recovered), statusCode: recovered.statusCode, headers: recovered.headers);
      }
      return ApiError(statusCode: recovered.statusCode, rawBody: recovered.body, headers: recovered.headers);
    } catch (_) {
      // Interceptor couldn't handle it, continue to next or fall through
    }
  }
  return ApiException(e, st);
}
'''),
    );
  }

  IrType? _requestBodyType(IrRequestBody body) {
    final jsonContent = body.content['application/json'];
    if (jsonContent != null) return jsonContent.schema;
    // Try first available content type
    if (body.content.isNotEmpty) return body.content.values.first.schema;
    return null;
  }

  bool _requestBodyNeedsToJson(IrRequestBody body) {
    final type = _requestBodyType(body);
    if (type == null) return false;
    return switch (type) {
      IrObject() ||
      IrTypeRef() ||
      IrDiscriminatedUnion() ||
      IrUntaggedUnion() ||
      IrAnyOf() ||
      IrEnum() => true,
      _ => false,
    };
  }

  IrType? _successResponseType(IrOperation op) {
    // Find the first 2xx response with content
    for (final code in [200, 201, 202, 203, 204]) {
      final resp = op.responses[code];
      if (resp != null) {
        final jsonContent = resp.content['application/json'];
        if (jsonContent != null) return jsonContent.schema;
        // 201/204 with no content means void
        if (resp.content.isEmpty) return null;
      }
    }
    return null;
  }
}
