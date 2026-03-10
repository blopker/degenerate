import 'package:code_builder/code_builder.dart';

import '../ir/ir_types.dart';
import 'emit_utils.dart';
import 'media_type_utils.dart';

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
    final requestBodyContent = op.requestBody != null && isBodyAllowed
        ? _preferredRequestBodyContent(op.requestBody!)
        : null;
    final bodyType = requestBodyContent?.$2.schema;
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
    final successResponseContent = _successResponseContent(op);
    final returnType = successResponseContent?.$2.schema;
    final errorResponseContent = _errorResponseContent(op);
    final errorType = errorResponseContent?.$2.schema;
    final returnTypeStr = returnType != null ? irTypeName(returnType) : 'void';
    final errorTypeStr = errorType != null ? irTypeName(errorType) : 'Never';
    final futureType = 'Future<ApiResult<$returnTypeStr, $errorTypeStr>>';

    // Build method body
    final bodyCode = _buildOperationBody(
      op,
      returnType,
      successResponseContent: successResponseContent,
      errorResponseContent: errorResponseContent,
      requestBodyContent: requestBodyContent,
      bodyType: bodyType,
      pathParams: pathParams,
      queryParams: queryParams,
      headerParams: headerParams,
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
    (String, IrMediaType)? successResponseContent,
    (String, IrMediaType)? errorResponseContent,
    (String, IrMediaType)? requestBodyContent,
    IrType? bodyType,
    required List<IrParameter> pathParams,
    required List<IrParameter> queryParams,
    required List<IrParameter> headerParams,
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
    if (requestBodyContent case (final mediaType, _)) {
      buf.writeln("    , 'Content-Type': '$mediaType'");
    }
    for (final p in headerParams) {
      final sanitizedName = p.name
          .replaceAll('\n', '')
          .replaceAll('\r', '')
          .trim();
      final headerValue = _toHeaderString(p);
      if (p.isRequired) {
        buf.writeln("    , '$sanitizedName': $headerValue");
      } else {
        buf.writeln(
          "    , if (${p.dartName} != null) '$sanitizedName': $headerValue",
        );
      }
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
      final requestBody = requestBodyContent!;
      buf.writeln(
        '  body: ${_buildRequestBodyExpr(requestBody.$1, requestBody.$2.schema, op.requestBody!.isRequired)},',
      );
    }

    buf.writeln(');');
    buf.writeln();

    // Build onSuccess callback
    if (returnType != null) {
      final deserialize = _buildDeserializeExpr(
        successResponseContent!.$1,
        returnType,
      );
      buf.writeln('return _execute(');
      buf.writeln('  request,');
      buf.writeln('  onSuccess: (response) {');
      buf.writeln('    $deserialize');
      buf.writeln('  },');
    } else {
      buf.writeln('return _execute(');
      buf.writeln('  request,');
      buf.writeln('  onSuccess: (_) {},');
    }
    if (errorResponseContent != null) {
      final errorDeserialize = _buildErrorDeserializeExpr(
        errorResponseContent.$1,
        errorResponseContent.$2.schema,
      );
      buf.writeln('  onError: (response) {');
      buf.writeln('    $errorDeserialize');
      buf.writeln('  },');
    }
    buf.writeln(');');

    return buf.toString();
  }

  String _buildDeserializeExpr(String mediaType, IrType returnType) {
    if (isJsonLikeMediaType(mediaType)) {
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
        IrExtensionType() =>
          'return ${buildFromJsonCode(returnType, 'jsonDecode(response.body)')};',
        IrTypeRef(:final name) =>
          'return $name.fromJson(jsonDecode(response.body) as Map<String, dynamic>);',
        IrObject(:final name) =>
          'return $name.fromJson(jsonDecode(response.body) as Map<String, dynamic>);',
        _ =>
          'return ${irTypeName(returnType)}.fromJson(jsonDecode(response.body) as Map<String, dynamic>);',
      };
    }

    final unsupportedMessage =
        'Cannot decode $mediaType response into ${irTypeName(returnType)}';
    return switch (returnType) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.string => 'return response.body;',
        PrimitiveKind.int => 'return int.parse(response.body);',
        PrimitiveKind.double => 'return double.parse(response.body);',
        PrimitiveKind.bool => "return response.body.toLowerCase() == 'true';",
        _ => "throw UnsupportedError('$unsupportedMessage');",
      },
      IrEnum(:final name) => 'return $name.fromJson(response.body);',
      IrExtensionType() =>
        'return ${buildFromJsonCode(returnType, 'response.body')};',
      _ =>
        "// TODO: Unsupported non-JSON response schema $unsupportedMessage\nthrow UnsupportedError('$unsupportedMessage');",
    };
  }

  String _toHeaderString(IrParameter p) {
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
        ..types.addAll([refer('T'), refer('E')])
        ..modifier = MethodModifier.async
        ..returns = refer('Future<ApiResult<T, E>>')
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
        ..optionalParameters.add(
          Parameter(
            (p) => p
              ..name = 'onError'
              ..named = true
              ..type = refer('E? Function(ApiResponse)?'),
          ),
        )
        ..docs.add(
          '/// Shared execution pipeline: interceptors -> send -> deserialize.',
        )
        ..body = const Code('''
try {
  final chain = buildInterceptorChain(
    interceptors: _config.interceptors,
    terminal: (req) async {
      return _config.timeout != null
          ? await _config.client.send(req).timeout(_config.timeout!)
          : await _config.client.send(req);
    },
  );

  final response = await chain(request);

  if (response.isSuccessful) {
    return ApiSuccess(
      onSuccess(response),
      statusCode: response.statusCode,
      headers: response.headers,
    );
  }
  return ApiError(
    statusCode: response.statusCode,
    error: onError != null ? onError(response) : null,
    rawBody: response.body,
    headers: response.headers,
  );
} catch (e, st) {
  return ApiException(e, st);
}
'''),
    );
  }

  (String, IrMediaType)? _preferredRequestBodyContent(IrRequestBody body) =>
      preferredContent(body.content);

  bool _typeNeedsToJson(IrType type) {
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

  (String, IrMediaType)? _errorResponseContent(IrOperation op) {
    // Check for a default error response first (most common pattern)
    if (op.defaultResponse != null) {
      final content = preferredContent(op.defaultResponse!.content);
      if (content != null) return content;
    }
    // Check for specific error status codes
    for (final entry in op.responses.entries) {
      if (entry.key >= 400) {
        final content = preferredContent(entry.value.content);
        if (content != null) return content;
      }
    }
    return null;
  }

  String _buildErrorDeserializeExpr(String mediaType, IrType errorType) {
    if (isJsonLikeMediaType(mediaType)) {
      return switch (errorType) {
        IrPrimitive(:final kind) => switch (kind) {
          PrimitiveKind.string =>
            'try { return response.body; } catch (_) { return null; }',
          PrimitiveKind.int =>
            'try { return int.parse(response.body); } catch (_) { return null; }',
          PrimitiveKind.double =>
            'try { return double.parse(response.body); } catch (_) { return null; }',
          PrimitiveKind.bool =>
            'try { return jsonDecode(response.body) as bool; } catch (_) { return null; }',
          _ =>
            'try { return jsonDecode(response.body); } catch (_) { return null; }',
        },
        IrEnum(:final name) =>
          'try { return $name.fromJson(jsonDecode(response.body) as String); } catch (_) { return null; }',
        IrList(:final items) =>
          'try { final json = jsonDecode(response.body) as List<dynamic>;\n'
              '    return json.map((e) => ${buildFromJsonCode(items, 'e')}).toList(); } catch (_) { return null; }',
        IrMap(:final values) =>
          'try { return (jsonDecode(response.body) as Map<String, dynamic>).map((k, v) => MapEntry(k, ${buildFromJsonCode(values, 'v')})); } catch (_) { return null; }',
        IrObject(:final name) =>
          'try { return $name.fromJson(jsonDecode(response.body) as Map<String, dynamic>); } catch (_) { return null; }',
        IrTypeRef(:final name) =>
          'try { return $name.fromJson(jsonDecode(response.body) as Map<String, dynamic>); } catch (_) { return null; }',
        _ =>
          'try { return ${irTypeName(errorType)}.fromJson(jsonDecode(response.body) as Map<String, dynamic>); } catch (_) { return null; }',
      };
    }

    final unsupportedMessage =
        'Cannot decode $mediaType error into ${irTypeName(errorType)}';
    return switch (errorType) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.string =>
          'try { return response.body; } catch (_) { return null; }',
        PrimitiveKind.int =>
          'try { return int.parse(response.body); } catch (_) { return null; }',
        PrimitiveKind.double =>
          'try { return double.parse(response.body); } catch (_) { return null; }',
        PrimitiveKind.bool =>
          "try { return response.body.toLowerCase() == 'true'; } catch (_) { return null; }",
        _ => 'return null;',
      },
      IrEnum(:final name) =>
        'try { return $name.fromJson(response.body); } catch (_) { return null; }',
      _ =>
        '// TODO: Unsupported non-JSON error schema $unsupportedMessage\nreturn null;',
    };
  }

  (String, IrMediaType)? _successResponseContent(IrOperation op) {
    // Find the first 2xx response with content.
    // Check common codes first, then any other 2xx code.
    final priorityCodes = [200, 201, 202, 203, 204];
    for (final code in priorityCodes) {
      final resp = op.responses[code];
      if (resp != null) {
        final content = preferredContent(resp.content);
        if (content != null) return content;
        // 201/204 with no content means void
        if (resp.content.isEmpty) return null;
      }
    }
    // Check remaining 2xx codes (206, 207, etc.)
    for (final entry in op.responses.entries) {
      if (entry.key >= 200 &&
          entry.key < 300 &&
          !priorityCodes.contains(entry.key)) {
        final content = preferredContent(entry.value.content);
        if (content != null) return content;
        if (entry.value.content.isEmpty) return null;
      }
    }
    return null;
  }

  String _buildRequestBodyExpr(
    String mediaType,
    IrType bodyType,
    bool isRequired,
  ) {
    if (isJsonLikeMediaType(mediaType)) {
      final nullAware = (!isRequired || bodyType.isNullable) ? '?' : '';
      final toJsonCall = _typeNeedsToJson(bodyType)
          ? '$nullAware.toJson()'
          : '';
      return 'jsonEncode(body$toJsonCall)';
    }

    final unsupportedMessage =
        'Cannot encode non-JSON $mediaType request body from ${irTypeName(bodyType)}';
    return switch (bodyType) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.string => 'body',
        PrimitiveKind.bytes => 'body',
        _ => buildToJsonCode(bodyType, 'body'),
      },
      IrEnum() => 'body.toJson()',
      IrExtensionType() => 'body.toJson()',
      _ => "throw UnsupportedError('$unsupportedMessage');",
    };
  }
}
