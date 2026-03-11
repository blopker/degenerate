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
  final Map<String, IrType> typeRegistry;
  const ApiEmitter(this.api, {this.typeRegistry = const {}});

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

  List<String> collectWarnings() {
    final warnings = <String>[];
    for (final op in api.operations) {
      final isBodyAllowed =
          op.method != HttpMethod.get && op.method != HttpMethod.head;
      final requestBodyContent = op.requestBody != null && isBodyAllowed
          ? _preferredRequestBodyContent(op.requestBody!)
          : null;
      final successResponseContent = _successResponseContent(op);
      final errorResponseContent = _errorResponseContent(op);

      if (requestBodyContent != null &&
          !isJsonLikeMediaType(requestBodyContent.$1) &&
          !(isMultipartMediaType(requestBodyContent.$1) &&
              _resolveObjectFields(requestBodyContent.$2.schema) != null) &&
          !(isFormUrlencodedMediaType(requestBodyContent.$1) &&
              _resolveObjectFields(requestBodyContent.$2.schema) != null) &&
          !_supportsNonJsonEncode(requestBodyContent.$2.schema)) {
        warnings.add(
          'Operation ${op.operationId} uses unsupported non-JSON request body media type ${requestBodyContent.$1} with type ${irTypeName(requestBodyContent.$2.schema)}.',
        );
      }

      if (successResponseContent != null &&
          !isJsonLikeMediaType(successResponseContent.$1) &&
          !_supportsNonJsonDecode(successResponseContent.$2.schema)) {
        warnings.add(
          'Operation ${op.operationId} uses unsupported non-JSON success response media type ${successResponseContent.$1} with type ${irTypeName(successResponseContent.$2.schema)}.',
        );
      }

      if (errorResponseContent != null &&
          !isJsonLikeMediaType(errorResponseContent.$1) &&
          !_supportsNonJsonDecode(errorResponseContent.$2.schema)) {
        warnings.add(
          'Operation ${op.operationId} uses unsupported non-JSON error response media type ${errorResponseContent.$1} with type ${irTypeName(errorResponseContent.$2.schema)}.',
        );
      }
    }
    return warnings;
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
    final cookieParams = <IrParameter>[];
    for (final p in op.parameters) {
      switch (p.location) {
        case ParameterLocation.path:
          pathParams.add(p);
        case ParameterLocation.query:
          queryParams.add(p);
        case ParameterLocation.header:
          headerParams.add(p);
        case ParameterLocation.cookie:
          cookieParams.add(p);
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

    for (final p in cookieParams) {
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

    // Per-request options
    params.add(
      Parameter(
        (pb) => pb
          ..name = 'options'
          ..named = true
          ..type = refer('RequestOptions?'),
      ),
    );

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
      cookieParams: cookieParams,
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
    required List<IrParameter> cookieParams,
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

    if (queryParams.isNotEmpty) {
      buf.writeln(
        'final queryParameters = <String, String>{..._config.defaultQueryParameters};',
      );
      buf.writeln('final queryParametersList = <ApiQueryParameter>[];');
      for (final p in queryParams) {
        _writeQueryParameterSerialization(buf, p);
      }
      buf.writeln();
    }

    if (cookieParams.isNotEmpty) {
      buf.writeln(
        'final cookies = <String, String>{..._config.defaultCookies};',
      );
      for (final p in cookieParams) {
        final sanitizedName = _sanitizeParameterName(p.name);
        final cookieValue = _toStringExpr(p);
        if (p.isRequired) {
          buf.writeln("cookies['$sanitizedName'] = $cookieValue;");
        } else {
          buf.writeln(
            "if (${p.dartName} != null) cookies['$sanitizedName'] = $cookieValue;",
          );
        }
      }
      buf.writeln();
    }

    buf.writeln('final headers = <String, String>{..._config.defaultHeaders};');
    if (requestBodyContent case (final mediaType, _)
        when !isMultipartMediaType(mediaType)) {
      // Use application/json for wildcard content types since we serialize as JSON.
      final contentType =
          normalizeMediaType(mediaType) == '*/*' ? 'application/json' : mediaType;
      buf.writeln("headers['Content-Type'] = '$contentType';");
    }
    for (final p in headerParams) {
      final sanitizedName = p.name
          .replaceAll('\n', '')
          .replaceAll('\r', '')
          .trim();
      final headerValue = _toStringExpr(p);
      if (p.isRequired) {
        buf.writeln("headers['$sanitizedName'] = $headerValue;");
      } else {
        buf.writeln(
          "if (${p.dartName} != null) headers['$sanitizedName'] = $headerValue;",
        );
      }
    }
    buf.writeln();

    buf.writeln('final request = ApiRequest(');
    buf.writeln("  method: '$httpMethod',");
    buf.writeln("  path: '$path',");
    buf.writeln('  headers: headers,');

    if (queryParams.isNotEmpty) {
      buf.writeln('  queryParameters: queryParameters,');
      buf.writeln('  queryParametersList: queryParametersList,');
    }
    if (cookieParams.isNotEmpty) {
      buf.writeln('  cookies: cookies,');
    }

    final multipartFields = bodyType != null &&
            isMultipartMediaType(requestBodyContent!.$1)
        ? _resolveObjectFields(requestBodyContent.$2.schema)
        : null;

    final formUrlencodedFields = bodyType != null &&
            isFormUrlencodedMediaType(requestBodyContent!.$1)
        ? _resolveObjectFields(requestBodyContent.$2.schema)
        : null;

    if (multipartFields != null) {
      _writeMultipartBody(buf, multipartFields, op.requestBody!.isRequired);
      buf.writeln("  contentType: 'multipart/form-data',");
    } else if (formUrlencodedFields != null) {
      _writeFormUrlencodedBody(buf, formUrlencodedFields);
    } else if (bodyType != null) {
      final requestBody = requestBodyContent!;
      buf.writeln(
        '  body: ${_buildRequestBodyExpr(requestBody.$1, requestBody.$2.schema, op.requestBody!.isRequired)},',
      );
    }

    buf.writeln('  options: options,');
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
          PrimitiveKind.bytes =>
            'return ${buildFromJsonCode(returnType, 'jsonDecode(response.body)')};',
          _ => 'return jsonDecode(response.body);',
        },
        IrExtensionType() =>
          'return ${buildFromJsonCode(returnType, 'jsonDecode(response.body)')};',
        // All named types with .fromJson(Map)
        _ =>
          'return ${buildFromJsonCode(returnType, 'jsonDecode(response.body)')};',
      };
    }

    final unsupportedMessage =
        'Cannot decode $mediaType response into ${irTypeName(returnType)}';
    return switch (returnType) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.object || PrimitiveKind.string => 'return response.body;',
        PrimitiveKind.int => 'return int.parse(response.body);',
        PrimitiveKind.double => 'return double.parse(response.body);',
        PrimitiveKind.bool => "return response.body.toLowerCase() == 'true';",
        PrimitiveKind.bytes => 'return Uint8List.fromList(response.bodyBytes);',
        _ => "throw UnsupportedError('$unsupportedMessage');",
      },
      IrEnum(:final name) => 'return $name.fromJson(response.body);',
      IrExtensionType() =>
        'return ${buildFromJsonCode(returnType, 'response.body')};',
      _ =>
        "// TODO: Unsupported non-JSON response schema $unsupportedMessage\nthrow UnsupportedError('$unsupportedMessage');",
    };
  }

  /// Convert a parameter to its string representation for headers/query values.
  String _toStringExpr(IrParameter p) {
    final type = p.type;
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.object || PrimitiveKind.string => p.dartName,
        _ => '${p.dartName}.toString()',
      },
      IrEnum() => '${p.dartName}.toJson()',
      _ => '${p.dartName}.toString()',
    };
  }

  void _writeQueryParameterSerialization(StringBuffer buf, IrParameter p) {
    final style = _queryStyle(p);
    final explode = _queryExplode(p, style);

    if (_canUseSimpleQueryMap(p, style, explode)) {
      _writeSimpleQueryMapEntry(buf, p);
      return;
    }

    final guardStart = p.isRequired ? null : 'if (${p.dartName} != null) {';
    if (guardStart != null) buf.writeln(guardStart);
    final accessor = p.dartName;

    switch (p.type) {
      case IrList(:final items):
        _writeListQuerySerialization(buf, p, accessor, items, style, explode);
      case IrObject(:final fields):
        _writeObjectQuerySerialization(
          buf,
          p,
          accessor,
          fields,
          style,
          explode,
        );
      case IrMap(:final values):
        _writeMapQuerySerialization(buf, p, accessor, values, style, explode);
      default:
        _writeSimpleQueryListEntry(buf, p, _queryScalarExpr(p.type, accessor));
    }

    if (guardStart != null) buf.writeln('}');
  }

  void _writeSimpleQueryMapEntry(StringBuffer buf, IrParameter p) {
    final sanitizedName = _sanitizeParameterName(p.name);
    final queryValue = _toStringExpr(p);
    if (p.isRequired) {
      buf.writeln("queryParameters['$sanitizedName'] = $queryValue;");
    } else {
      buf.writeln(
        "if (${p.dartName} != null) queryParameters['$sanitizedName'] = $queryValue;",
      );
    }
  }

  void _writeSimpleQueryListEntry(
    StringBuffer buf,
    IrParameter p,
    String valueExpr,
  ) {
    final sanitizedName = _sanitizeParameterName(p.name);
    buf.writeln(
      "queryParametersList.add(ApiQueryParameter(name: '$sanitizedName', value: $valueExpr, allowReserved: ${p.allowReserved}));",
    );
  }

  void _writeListQuerySerialization(
    StringBuffer buf,
    IrParameter p,
    String accessor,
    IrType items,
    String style,
    bool explode,
  ) {
    final name = _sanitizeParameterName(p.name);
    final itemExpr = _queryScalarExpr(items, 'item');
    if (style == 'form' && explode) {
      buf.writeln('for (final item in $accessor) {');
      buf.writeln(
        "  queryParametersList.add(ApiQueryParameter(name: '$name', value: $itemExpr, allowReserved: ${p.allowReserved}));",
      );
      buf.writeln('}');
      return;
    }

    final delimiter = switch (style) {
      'pipeDelimited' => '|',
      'spaceDelimited' => ' ',
      _ => ',',
    };
    final escapedDelimiter = escapeDartString(delimiter);
    final joined = itemExpr == 'item'
        ? "$accessor.join('$escapedDelimiter')"
        : "$accessor.map((item) => $itemExpr).join('$escapedDelimiter')";
    if (p.allowReserved) {
      _writeSimpleQueryListEntry(buf, p, joined);
    } else {
      buf.writeln("queryParameters['$name'] = $joined;");
    }
  }

  void _writeObjectQuerySerialization(
    StringBuffer buf,
    IrParameter p,
    String accessor,
    List<IrField> fields,
    String style,
    bool explode,
  ) {
    final name = _sanitizeParameterName(p.name);
    if (style == 'deepObject') {
      for (final field in fields) {
        final valueExpr = _queryScalarExpr(
          field.type,
          '$accessor.${field.name}',
        );
        final key = '$name[${field.originalName}]';
        if (!field.isRequired) {
          buf.writeln(
            "if ($accessor.${field.name} != null) queryParameters['$key'] = $valueExpr;",
          );
        } else {
          buf.writeln("queryParameters['$key'] = $valueExpr;");
        }
      }
      return;
    }

    if (style == 'form' && explode) {
      for (final field in fields) {
        final valueExpr = _queryScalarExpr(
          field.type,
          '$accessor.${field.name}',
        );
        if (!field.isRequired) {
          buf.writeln(
            "if ($accessor.${field.name} != null) queryParametersList.add(ApiQueryParameter(name: '${field.originalName}', value: $valueExpr, allowReserved: ${p.allowReserved}));",
          );
        } else {
          buf.writeln(
            "queryParametersList.add(ApiQueryParameter(name: '${field.originalName}', value: $valueExpr, allowReserved: ${p.allowReserved}));",
          );
        }
      }
      return;
    }

    final parts = <String>[];
    for (final field in fields) {
      final valueExpr = _queryScalarExpr(field.type, '$accessor.${field.name}');
      parts.add("'${escapeDartString(field.originalName)}'");
      parts.add(valueExpr);
    }
    final joined = "[${parts.join(', ')}].join(',')";
    if (p.allowReserved) {
      _writeSimpleQueryListEntry(buf, p, joined);
    } else {
      buf.writeln("queryParameters['$name'] = $joined;");
    }
  }

  void _writeMapQuerySerialization(
    StringBuffer buf,
    IrParameter p,
    String accessor,
    IrType values,
    String style,
    bool explode,
  ) {
    final name = _sanitizeParameterName(p.name);
    final valueExpr = _queryScalarExpr(values, 'entry.value');
    if (style == 'deepObject') {
      buf.writeln('for (final entry in $accessor.entries) {');
      buf.writeln("  queryParameters['$name[\${entry.key}]'] = $valueExpr;");
      buf.writeln('}');
      return;
    }

    if (style == 'form' && explode) {
      buf.writeln('for (final entry in $accessor.entries) {');
      buf.writeln(
        "  queryParametersList.add(ApiQueryParameter(name: entry.key, value: $valueExpr, allowReserved: ${p.allowReserved}));",
      );
      buf.writeln('}');
      return;
    }

    buf.writeln('final ${p.dartName}Parts = <String>[];');
    buf.writeln('for (final entry in $accessor.entries) {');
    buf.writeln('  ${p.dartName}Parts.add(entry.key);');
    buf.writeln('  ${p.dartName}Parts.add($valueExpr);');
    buf.writeln('}');
    if (p.allowReserved) {
      _writeSimpleQueryListEntry(buf, p, "${p.dartName}Parts.join(',')");
    } else {
      buf.writeln("queryParameters['$name'] = ${p.dartName}Parts.join(',');");
    }
  }

  String _queryScalarExpr(IrType type, String accessor) {
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.object => '$accessor.toString()',
        PrimitiveKind.string => accessor,
        PrimitiveKind.bool => '$accessor.toString()',
        PrimitiveKind.dateTime ||
        PrimitiveKind.uri ||
        PrimitiveKind.bigInt ||
        PrimitiveKind.duration => buildToJsonCode(type, accessor),
        PrimitiveKind.bytes => 'base64Encode($accessor)',
        _ => '$accessor.toString()',
      },
      IrEnum() || IrExtensionType() => '$accessor.toJson()',
      _ => '$accessor.toString()',
    };
  }

  bool _canUseSimpleQueryMap(IrParameter p, String style, bool explode) {
    if (p.allowReserved) return false;
    return switch (p.type) {
      IrPrimitive() || IrEnum() || IrExtensionType() => true,
      IrList() || IrObject() || IrMap() => false,
      _ => false,
    };
  }

  String _queryStyle(IrParameter p) => p.style ?? 'form';

  bool _queryExplode(IrParameter p, String style) =>
      p.explode ?? (style == 'form');

  String _sanitizeParameterName(String value) =>
      value.replaceAll('\n', '').replaceAll('\r', '').trim();

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
  final userCancelToken = request.options?.cancelToken;
  if (userCancelToken?.isCancelled ?? false) throw const CancelledException();

  final effectiveTimeout = request.options?.timeout ?? _config.timeout;
  final extraHeaders = request.options?.extraHeaders;

  // Merge timeout and user cancel into a single adapter-level cancel token.
  final adapterToken = (effectiveTimeout != null || userCancelToken != null)
      ? CancelToken()
      : null;
  Timer? timeoutTimer;
  bool timedOut = false;

  if (adapterToken != null) {
    if (userCancelToken != null) {
      final token = adapterToken;
      userCancelToken.whenCancelled.then((_) {
        if (!token.isCancelled) token.cancel();
      });
    }
    if (effectiveTimeout != null) {
      final token = adapterToken;
      timeoutTimer = Timer(effectiveTimeout, () {
        timedOut = true;
        if (!token.isCancelled) token.cancel();
      });
    }
  }

  final effectiveRequest = request.copyWith(
    headers: extraHeaders != null
        ? {...request.headers, ...extraHeaders}
        : null,
    options: RequestOptions(cancelToken: adapterToken),
  );

  try {
    final chain = buildInterceptorChain(
      interceptors: _config.interceptors,
      terminal: (req) => _config.client.send(req),
    );

    final response = await chain(effectiveRequest);
    timeoutTimer?.cancel();

    try {
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
        rawError: response.body,
        headers: response.headers,
      );
    } catch (e, st) {
      return ApiParseException(e, st, response: response);
    }
  } on CancelledException {
    timeoutTimer?.cancel();
    if (timedOut) {
      throw TimeoutException('Request timed out', effectiveTimeout);
    }
    rethrow;
  }
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
          PrimitiveKind.string => 'return response.body;',
          PrimitiveKind.int => 'return int.parse(response.body);',
          PrimitiveKind.double => 'return double.parse(response.body);',
          PrimitiveKind.bool => 'return jsonDecode(response.body) as bool;',
          PrimitiveKind.bytes =>
            'return ${buildFromJsonCode(errorType, 'jsonDecode(response.body)')};',
          _ => 'return jsonDecode(response.body);',
        },
        IrEnum(:final name) =>
          'return $name.fromJson(jsonDecode(response.body) as String);',
        IrList(:final items) =>
          'final json = jsonDecode(response.body) as List<dynamic>;\n'
              '    return json.map((e) => ${buildFromJsonCode(items, 'e')}).toList();',
        IrMap(:final values) =>
          'return (jsonDecode(response.body) as Map<String, dynamic>).map((k, v) => MapEntry(k, ${buildFromJsonCode(values, 'v')}));',
        // All named types with .fromJson(Map)
        _ =>
          'return ${buildFromJsonCode(errorType, 'jsonDecode(response.body)')};',
      };
    }

    final unsupportedMessage =
        'Cannot decode $mediaType error into ${irTypeName(errorType)}';
    return switch (errorType) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.object || PrimitiveKind.string =>
          'return response.body;',
        PrimitiveKind.int => 'return int.parse(response.body);',
        PrimitiveKind.double => 'return double.parse(response.body);',
        PrimitiveKind.bool =>
          "return response.body.toLowerCase() == 'true';",
        PrimitiveKind.bytes =>
          'return Uint8List.fromList(response.bodyBytes);',
        _ => 'return null;',
      },
      IrEnum(:final name) => 'return $name.fromJson(response.body);',
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
        PrimitiveKind.object => 'body',
        PrimitiveKind.string => 'body',
        PrimitiveKind.bytes => 'body',
        _ => buildToJsonCode(bodyType, 'body'),
      },
      IrEnum() => 'body.toJson()',
      IrExtensionType() => 'body.toJson()',
      _ => "throw UnsupportedError('$unsupportedMessage');",
    };
  }

  bool _supportsNonJsonDecode(IrType type) {
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.object => true,
        PrimitiveKind.string ||
        PrimitiveKind.int ||
        PrimitiveKind.double ||
        PrimitiveKind.bool ||
        PrimitiveKind.bytes => true,
        _ => false,
      },
      IrEnum() || IrExtensionType() => true,
      _ => false,
    };
  }

  bool _supportsNonJsonEncode(IrType type) {
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.object => true,
        PrimitiveKind.string ||
        PrimitiveKind.int ||
        PrimitiveKind.double ||
        PrimitiveKind.num ||
        PrimitiveKind.bool ||
        PrimitiveKind.dateTime ||
        PrimitiveKind.uri ||
        PrimitiveKind.bigInt ||
        PrimitiveKind.duration ||
        PrimitiveKind.bytes => true,
      },
      IrEnum() || IrExtensionType() => true,
      _ => false,
    };
  }

  /// Resolve an IrType to its object fields, following type refs.
  List<IrField>? _resolveObjectFields(IrType type) {
    return switch (type) {
      IrObject(:final fields) => fields,
      IrTypeRef(:final name) => switch (typeRegistry[name]) {
        IrObject(:final fields) => fields,
        _ => null,
      },
      _ => null,
    };
  }

  /// Write multipart body construction code.
  ///
  /// Generates a `List<ApiMultipartField>` from object fields:
  /// - `PrimitiveKind.bytes` → `ApiMultipartField.file(name, value)`
  /// - Everything else → `ApiMultipartField.text(name, value.toString())`
  void _writeMultipartBody(
    StringBuffer buf,
    List<IrField> fields,
    bool isRequired,
  ) {
    buf.writeln('  body: [');
    for (final f in fields) {
      final fieldAccessor = 'body.${f.name}';
      final isBytes = f.type is IrPrimitive &&
          (f.type as IrPrimitive).kind == PrimitiveKind.bytes;
      // Emit null guard only when the Dart field type is actually nullable.
      // Fields with defaults are non-nullable even if not required.
      final isNullable =
          (!f.isRequired && f.defaultValue == null) || f.type.isNullable;

      if (isNullable) {
        // Use a case-pattern variable to enable type promotion on nullable public fields.
        final localVar = '${f.name}\$';
        buf.writeln('    if ($fieldAccessor case final $localVar?)');
        buf.write('  ');
        _writeMultipartFieldExpr(buf, f, localVar, isBytes);
      } else {
        _writeMultipartFieldExpr(buf, f, fieldAccessor, isBytes);
      }
    }
    buf.writeln('  ],');
  }

  /// Write form-urlencoded body construction code.
  ///
  /// Generates a `String` body from object fields encoded as
  /// `key=Uri.encodeQueryComponent(value)` pairs joined by `&`.
  void _writeFormUrlencodedBody(
    StringBuffer buf,
    List<IrField> fields,
  ) {
    buf.writeln('  body: [');
    for (final f in fields) {
      final fieldAccessor = 'body.${f.name}';
      final isNullable =
          (!f.isRequired && f.defaultValue == null) || f.type.isNullable;
      final valueExpr = _formFieldValueExpr(f.type, fieldAccessor);
      final encoded =
          "'${f.originalName}=\${Uri.encodeQueryComponent($valueExpr)}'";

      if (isNullable) {
        final localVar = '${f.name}\$';
        final localValueExpr = _formFieldValueExpr(f.type, localVar);
        final localEncoded =
            "'${f.originalName}=\${Uri.encodeQueryComponent($localValueExpr)}'";
        buf.writeln('    if ($fieldAccessor case final $localVar?)');
        buf.writeln('      $localEncoded,');
      } else {
        buf.writeln('    $encoded,');
      }
    }
    buf.writeln("  ].join('&'),");
  }

  /// Get the string expression for a form-urlencoded field value.
  String _formFieldValueExpr(IrType type, String accessor) {
    return _multipartFieldValueExpr(type, accessor);
  }

  void _writeMultipartFieldExpr(
    StringBuffer buf,
    IrField f,
    String accessor,
    bool isBytes,
  ) {
    if (isBytes) {
      buf.writeln("    ApiMultipartField.file('${f.originalName}', $accessor),");
    } else {
      final valueExpr = _multipartFieldValueExpr(f.type, accessor);
      buf.writeln("    ApiMultipartField.text('${f.originalName}', $valueExpr),");
    }
  }

  /// Get the string expression for a multipart text field value.
  String _multipartFieldValueExpr(IrType type, String accessor) {
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.object || PrimitiveKind.string => accessor,
        PrimitiveKind.bool ||
        PrimitiveKind.int ||
        PrimitiveKind.double ||
        PrimitiveKind.num => '$accessor.toString()',
        PrimitiveKind.dateTime => '$accessor.toIso8601String()',
        PrimitiveKind.uri || PrimitiveKind.bigInt => '$accessor.toString()',
        PrimitiveKind.duration => '$accessor.inMilliseconds.toString()',
        PrimitiveKind.bytes => accessor, // handled separately as file
      },
      IrEnum() => '$accessor.toJson()',
      IrExtensionType() => '$accessor.toJson()',
      _ => '$accessor.toString()',
    };
  }
}
