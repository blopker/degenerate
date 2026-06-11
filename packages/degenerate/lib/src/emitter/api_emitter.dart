import 'package:code_builder/code_builder.dart';
import 'package:degenerate/src/emitter/emit_utils.dart';
import 'package:degenerate/src/emitter/media_type_utils.dart';
import 'package:degenerate/src/ir/ir_types.dart';

/// Emits an API client class from an [IrApi].
///
/// Each API tag becomes a `final class` with methods for each operation,
/// returning `Future<ApiResult<T>>`.
class ApiEmitter {
  /// Creates an emitter for the given [api] group.
  const ApiEmitter(
    this.api, {
    this.typeRegistry = const {},
    this.unwrapFields = const [],
  });

  /// The API group to emit.
  final IrApi api;

  /// Registry of all known IR types for resolution.
  final Map<String, IrType> typeRegistry;

  /// Fields to unwrap from response envelopes.
  final List<String> unwrapFields;

  /// Wrapper around [buildFromJsonCode] that passes the type registry.
  String _fromJson(
    IrType type,
    String accessor, {
    bool isOptional = false,
    bool paramIsMap = false,
  }) => buildFromJsonCode(
    type,
    accessor,
    isOptional: isOptional,
    paramIsMap: paramIsMap,
    typeRegistry: typeRegistry,
  );

  /// Emit the API client class as code_builder specs.
  List<Spec> emit() {
    return [
      Class(
        (b) => b
          ..name = api.name
          ..modifier = ClassModifier.final$
          ..mixins.add(refer('ApiExecutor'))
          ..docs.addAll(_buildDocs())
          ..constructors.add(
            Constructor(
              (c) => c
                ..constant = true
                ..requiredParameters.add(
                  Parameter(
                    (p) => p
                      ..name = 'apiConfig'
                      ..toThis = true,
                  ),
                ),
            ),
          )
          ..fields.add(
            Field(
              (f) => f
                ..name = 'apiConfig'
                ..modifier = FieldModifier.final$
                ..annotations.add(refer('override'))
                ..type = refer('ApiConfig'),
            ),
          )
          ..methods.addAll(api.operations.map(_buildOperation))
          ..methods.addAll(
            api.operations
                .where((op) => streamingContent(op) != null)
                .map(_buildStreamingOperation),
          ),
      ),
    ];
  }

  /// Collect warnings about unsupported media types.
  List<String> collectWarnings() {
    final warnings = <String>[];
    for (final op in api.operations) {
      final requestBodyContent = op.requestBody != null
          ? _preferredRequestBodyContent(op.requestBody!)
          : null;
      final successResponseContent = _successResponseContent(op);
      final errorResponseContent = _errorResponseContent(op);

      if (requestBodyContent != null &&
          !requestBodyContent.$1.test(isJsonLikeMediaType) &&
          !(requestBodyContent.$1.test(isMultipartMediaType) &&
              _resolveObjectFields(requestBodyContent.$2.schema) != null) &&
          !(requestBodyContent.$1.test(isFormUrlencodedMediaType) &&
              _resolveObjectFields(requestBodyContent.$2.schema) != null) &&
          !_supportsNonJsonEncode(requestBodyContent.$2.schema)) {
        warnings.add(
          'Operation ${op.operationId} uses unsupported non-JSON request body media type ${requestBodyContent.$1.forDiagnostics} with type ${irTypeName(requestBodyContent.$2.schema)}.',
        );
      }

      if (successResponseContent != null &&
          !successResponseContent.$1.test(isJsonLikeMediaType) &&
          !_supportsNonJsonDecode(successResponseContent.$2.schema)) {
        warnings.add(
          'Operation ${op.operationId} uses unsupported non-JSON success response media type ${successResponseContent.$1.forDiagnostics} with type ${irTypeName(successResponseContent.$2.schema)}.',
        );
      }

      if (errorResponseContent != null &&
          !errorResponseContent.$1.test(isJsonLikeMediaType) &&
          !_supportsNonJsonDecode(errorResponseContent.$2.schema)) {
        warnings.add(
          'Operation ${op.operationId} uses unsupported non-JSON error response media type ${errorResponseContent.$1.forDiagnostics} with type ${irTypeName(errorResponseContent.$2.schema)}.',
        );
      }
    }
    return warnings;
  }

  List<String> _buildDocs() {
    return [
      '/// ${api.name} operations.',
      '///',
      '/// All operations return [ApiResult] - use pattern matching to handle',
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

    // Path parameters (always required, never nullable - they're part of the
    // URL)
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

    // Request body (skip for GET/HEAD - bodies are not standard for these
    // methods)
    final requestBodyContent = op.requestBody != null
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

    // Sort required named parameters before optional ones.
    params.sort((a, b) {
      final aReq = a.required ? 0 : 1;
      final bReq = b.required ? 0 : 1;
      return aReq.compareTo(bReq);
    });

    // Per-request options (always last, always optional)
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
    var returnType = successResponseContent?.$2.schema;
    // Unwrap response envelope if configured.
    final unwrapResult = _maybeUnwrapResponseType(returnType);
    returnType = unwrapResult.type;
    final unwrappedFieldIsOptional = unwrapResult.fieldIsOptional;
    final errorResponseContent = _errorResponseContent(op);
    final errorType = errorResponseContent?.$2.schema;
    final needsNullableSuffix =
        unwrapResult.unwrappedField != null &&
        returnType != null &&
        returnType.isNullable &&
        !(returnType is IrPrimitive &&
            returnType.kind == PrimitiveKind.dynamic_);
    final returnTypeStr = returnType != null
        ? '${irTypeName(returnType)}${needsNullableSuffix ? '?' : ''}'
        : 'void';
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
      unwrappedField: unwrapResult.unwrappedField,
      unwrappedFieldIsOptional: unwrappedFieldIsOptional,
    );

    final docs = <String>[];
    if (op.summary != null) {
      docs.addAll(op.summary!.docComment);
    }
    if (op.description != null && op.description != op.summary) {
      docs
        ..add('///')
        ..addAll(op.description!.docComment);
    }
    final httpMethod = _httpMethodString(op);
    docs
      ..add('///')
      ..add('/// `${httpMethod.commentText} ${op.path.commentText}`');

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

  /// Build the Dart string literal for [path] with `{param}` placeholders
  /// replaced by URL-encoding interpolation expressions.
  ///
  /// [SpecString.interpolatedLiteral] escapes the literal path segments while
  /// passing the generated `${...}` expressions through verbatim, so the
  /// quotes/`$`/`\` that can appear in a spec path can't break out of the
  /// literal or be mistaken for interpolation.
  ///
  /// Enum wrappers expose the wire value via `value`; their `toString()` is a
  /// debug form (`ClassName(value)`) that must never reach the URL. Arrays,
  /// objects, and maps serialize per the `simple` style (the only one
  /// supported here): comma-joined items / `k,v` pairs (explode=false) or
  /// `k=v` pairs (explode=true) — never the Dart debug `toString()`.
  ///
  /// Per RFC 6570 only the values are percent-encoded; the `,`/`=` style
  /// delimiters stay literal so servers that split before decoding parse
  /// correctly. Null items, map values, and object fields are omitted (RFC
  /// 6570 drops undefined values) — required-but-nullable fields would
  /// otherwise not even compile.
  String _interpolatePath(SpecString path, List<IrParameter> pathParams) {
    return path.interpolatedLiteral(_pathParamPattern, (m) {
      final p = pathParams
          .where((p) => p.name.test((s) => s == m[1]))
          .firstOrNull;
      if (p == null) return escapeDartString(m[0]!);
      final explode = p.explode ?? false;
      // Resolve refs: a $ref to an object/array schema must serialize per
      // the simple style, not stringify via the scalar default.
      final encodedExpr = switch (_resolveType(p.type)) {
        IrPrimitive(kind: PrimitiveKind.string) =>
          'Uri.encodeComponent(${p.dartName})',
        // DateTime.toString() is not RFC 3339 ('2024-01-02 03:04:05.000Z');
        // Uint8List.toString() is a debug list dump; Duration.toString() is
        // 'Duration: ...'.
        IrPrimitive(kind: PrimitiveKind.dateTime) =>
          'Uri.encodeComponent(${p.dartName}.toIso8601String())',
        IrPrimitive(kind: PrimitiveKind.bytes) =>
          'Uri.encodeComponent(base64Encode(${p.dartName}))',
        IrPrimitive(kind: PrimitiveKind.duration) =>
          'Uri.encodeComponent(${p.dartName}.inMilliseconds.toString())',
        IrEnum(valueKind: PrimitiveKind.string) =>
          'Uri.encodeComponent(${p.dartName}.value)',
        IrEnum() => 'Uri.encodeComponent(${p.dartName}.value.toString())',
        IrList(:final items) => () {
          final source = items.isNullable
              ? '${p.dartName}.nonNulls'
              : p.dartName;
          final item = _queryScalarExpr(items, 'item');
          return "$source.map((item) => Uri.encodeComponent($item)).join(',')";
        }(),
        IrObject(:final fields) => () {
          final parts = <String>[];
          for (final f in fields) {
            final nullable = !f.isRequired || f.type.isNullable;
            final accessor = '${p.dartName}.${f.name}${nullable ? '!' : ''}';
            final value =
                'Uri.encodeComponent(${_queryScalarExpr(f.type, accessor)})';
            final guard = nullable
                ? 'if (${p.dartName}.${f.name} != null) '
                : '';
            if (explode) {
              parts.add("$guard'${f.originalName.escaped}=\${$value}'");
            } else if (nullable) {
              parts.add("$guard...['${f.originalName.escaped}', $value]");
            } else {
              parts
                ..add("'${f.originalName.escaped}'")
                ..add(value);
            }
          }
          return "<String>[${parts.join(', ')}].join(',')";
        }(),
        IrMap(:final values) => () {
          final source = values.isNullable
              ? '${p.dartName}.entries.where((entry) => entry.value != null)'
              : '${p.dartName}.entries';
          final accessor = values.isNullable ? 'entry.value!' : 'entry.value';
          final value =
              'Uri.encodeComponent(${_queryScalarExpr(values, accessor)})';
          return explode
              ? "$source.map((entry) => '\${Uri.encodeComponent(entry.key)}=\${$value}').join(',')"
              : "$source.expand((entry) => [Uri.encodeComponent(entry.key), $value]).join(',')";
        }(),
        _ => 'Uri.encodeComponent(${p.dartName}.toString())',
      };
      return '\${$encodedExpr}';
    });
  }

  /// Resolve a type ref through the registry (identity for everything else).
  IrType _resolveType(IrType type) =>
      type is IrTypeRef ? (typeRegistry[type.name] ?? type) : type;

  /// The explode=false pair/item join delimiter for a query style.
  String _joinDelimiter(String style) => switch (style) {
    'pipeDelimited' => '|',
    'spaceDelimited' => ' ',
    _ => ',',
  };

  String _buildOperationBody(
    IrOperation op,
    IrType? returnType, {
    required List<IrParameter> pathParams,
    required List<IrParameter> queryParams,
    required List<IrParameter> headerParams,
    required List<IrParameter> cookieParams,
    (SpecString, IrMediaType)? successResponseContent,
    (SpecString, IrMediaType)? errorResponseContent,
    (SpecString, IrMediaType)? requestBodyContent,
    IrType? bodyType,
    String? unwrappedField,
    bool unwrappedFieldIsOptional = false,
  }) {
    final buf = StringBuffer();
    final httpMethod = _httpMethodString(op);

    // Build path with parameter interpolation (URL-encoded)
    final path = _interpolatePath(op.path, pathParams);

    // Pre-compute multipart/form/unsupported body before emitting variables,
    // so we can return early for unsupported bodies without unused locals.
    final multipartFields =
        bodyType != null && requestBodyContent!.$1.test(isMultipartMediaType)
        ? _resolveObjectFields(requestBodyContent.$2.schema)
        : null;

    final formUrlencodedFields =
        bodyType != null && requestBodyContent!.$1.test(isFormUrlencodedMediaType)
        ? _resolveObjectFields(requestBodyContent.$2.schema)
        : null;

    // Check for unsupported body before building any variables to avoid dead
    // code.
    if (bodyType != null &&
        multipartFields == null &&
        formUrlencodedFields == null) {
      final bodyExpr = _buildRequestBodyExpr(
        requestBodyContent!.$1,
        requestBodyContent.$2.schema,
        op.requestBody!.isRequired,
      );
      if (bodyExpr.startsWith('throw ')) {
        buf.writeln('$bodyExpr;');
        return buf.toString();
      }
    }

    if (queryParams.isNotEmpty) {
      buf.writeln(
        'final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};',
      );
      buf.writeln('final queryParametersList = <ApiQueryParameter>[];');
      for (final p in queryParams) {
        _writeQueryParameterSerialization(buf, p);
      }
      buf.writeln();
    }

    if (cookieParams.isNotEmpty) {
      buf.writeln(
        'final cookies = <String, String>{...apiConfig.defaultCookies};',
      );
      for (final p in cookieParams) {
        final sanitizedName = _paramNameLiteral(p.name);
        final cookieValue = _toStringExpr(p);
        if (p.isRequired && !p.type.isNullable) {
          buf.writeln('cookies[$sanitizedName] = $cookieValue;');
        } else {
          buf.writeln('if (${p.dartName} != null) {');
          buf.writeln('  cookies[$sanitizedName] = $cookieValue;');
          buf.writeln('}');
        }
      }
      buf.writeln();
    }

    buf.writeln(
      'final headers = <String, String>{...apiConfig.defaultHeaders};',
    );
    if (requestBodyContent case (
      final mediaType,
      _,
    ) when !mediaType.test(isMultipartMediaType)) {
      // Use application/json for wildcard content types since we serialize as
      // JSON.
      final contentType = mediaType.test((s) => normalizeMediaType(s) == '*/*')
          ? const SpecString('application/json')
          : mediaType;
      buf.writeln("headers['Content-Type'] = ${contentType.literal};");
    }
    for (final p in headerParams) {
      final sanitizedName = _paramNameLiteral(p.name);
      final headerValue = _toStringExpr(p);
      if (p.isRequired && !p.type.isNullable) {
        buf.writeln('headers[$sanitizedName] = $headerValue;');
      } else {
        buf.writeln('if (${p.dartName} != null) {');
        buf.writeln('  headers[$sanitizedName] = $headerValue;');
        buf.writeln('}');
      }
    }
    buf.writeln();

    buf.writeln('final request = ApiRequest(');
    buf.writeln('  method: ${httpMethod.literal},');
    buf.writeln('  path: $path,');
    buf.writeln('  headers: headers,');

    if (queryParams.isNotEmpty) {
      buf.writeln('  queryParameters: queryParameters,');
      buf.writeln('  queryParametersList: queryParametersList,');
    }
    if (cookieParams.isNotEmpty) {
      buf.writeln('  cookies: cookies,');
    }

    if (multipartFields != null) {
      _writeMultipartBody(buf, multipartFields, op.requestBody!.isRequired);
      buf.writeln("  contentType: 'multipart/form-data',");
    } else if (formUrlencodedFields != null) {
      _writeFormUrlencodedBody(
        buf,
        formUrlencodedFields,
        op.requestBody!.isRequired,
      );
    } else if (bodyType != null) {
      final requestBody = requestBodyContent!;
      final bodyExpr = _buildRequestBodyExpr(
        requestBody.$1,
        requestBody.$2.schema,
        op.requestBody!.isRequired,
      );
      buf.writeln('  body: $bodyExpr,');
    }

    buf.writeln('  options: options,');
    buf.writeln(');');
    buf.writeln();

    // Build onSuccess callback
    if (returnType != null) {
      buf.writeln('return execute(');
      buf.writeln('  request,');
      buf.writeln('  onSuccess: (response) {');
      if (unwrappedField != null) {
        // Unwrap: parse full JSON, extract the field, deserialize it.
        final escaped = escapeDartString(unwrappedField);
        buf.writeln(
          '    final json = jsonDecode(response.body) as Map<String, dynamic>;',
        );
        buf.writeln(
          "    return ${_fromJson(returnType, "json['$escaped']", isOptional: unwrappedFieldIsOptional)};",
        );
      } else {
        final deserialize = _buildDeserializeExpr(
          successResponseContent!.$1,
          returnType,
        );
        buf.writeln('    $deserialize');
      }
      buf.writeln('  },');
    } else {
      buf.writeln('return execute(');
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

  String _buildDeserializeExpr(SpecString mediaType, IrType returnType) {
    if (mediaType.test(isJsonLikeMediaType)) {
      return switch (returnType) {
        IrList(:final items) =>
          'final json = jsonDecode(response.body) as List<dynamic>;\n'
              '    return json.map((e) => ${_fromJson(items, 'e')}).toList();',
        IrMap(:final values) => () {
          final valueExpr = _fromJson(values, 'v');
          if (valueExpr == 'v') {
            return 'return jsonDecode(response.body) as Map<String, dynamic>;';
          }
          return 'return (jsonDecode(response.body) as Map<String, dynamic>).map((k, v) => MapEntry(k, $valueExpr));';
        }(),
        IrPrimitive(:final kind) => switch (kind) {
          PrimitiveKind.string => 'return response.body;',
          PrimitiveKind.int => 'return int.parse(response.body);',
          PrimitiveKind.double => 'return double.parse(response.body);',
          PrimitiveKind.bool => 'return jsonDecode(response.body) as bool;',
          PrimitiveKind.bytes =>
            'return ${_fromJson(returnType, 'jsonDecode(response.body)')};',
          _ => 'return jsonDecode(response.body);',
        },
        IrExtensionType() =>
          'return ${_fromJson(returnType, 'jsonDecode(response.body)')};',
        // All named types with .fromJson(Map)
        _ => 'return ${_fromJson(returnType, 'jsonDecode(response.body)')};',
      };
    }

    final unsupportedMessage = mediaType.rebuild(
      (m) => 'Cannot decode $m response into ${irTypeName(returnType)}',
    );
    return switch (returnType) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.dynamic_ ||
        PrimitiveKind.string => 'return response.body;',
        PrimitiveKind.int => 'return int.parse(response.body);',
        PrimitiveKind.double => 'return double.parse(response.body);',
        PrimitiveKind.bool => "return response.body.toLowerCase() == 'true';",
        PrimitiveKind.bytes => 'return Uint8List.fromList(response.bodyBytes);',
        _ => 'throw UnsupportedError(${unsupportedMessage.literal});',
      },
      IrEnum(:final name) => 'return $name.fromJson(response.body);',
      IrExtensionType() => 'return ${_fromJson(returnType, 'response.body')};',
      _ =>
        '// TODO: Unsupported non-JSON response schema ${unsupportedMessage.commentText}\n'
            'throw UnsupportedError(${unsupportedMessage.literal});',
    };
  }

  /// Convert a parameter to its string representation for headers/query values.
  String _toStringExpr(IrParameter p) {
    final type = p.type;
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.string => p.dartName,
        // DateTime.toString() is not RFC 3339 ('2024-01-02 03:04:05.000Z');
        // Uint8List.toString() is a debug list dump; Duration.toString() is
        // 'Duration: ...'.
        PrimitiveKind.dateTime => '${p.dartName}.toIso8601String()',
        PrimitiveKind.bytes => 'base64Encode(${p.dartName})',
        PrimitiveKind.duration => '${p.dartName}.inMilliseconds.toString()',
        _ => '${p.dartName}.toString()',
      },
      IrEnum(valueKind: PrimitiveKind.string) => '${p.dartName}.toJson()',
      IrEnum() => '${p.dartName}.value.toString()',
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

    // Required-but-nullable params (nullable: true in the spec) still carry
    // null at runtime — guard whenever the declared type is nullable.
    final needsGuard = !p.isRequired || p.type.isNullable;
    if (needsGuard) buf.writeln('if (${p.dartName} != null) {');
    final accessor = p.dartName;

    // Resolve refs: a $ref to an object/array schema must take the styled
    // serialization paths, not stringify via the scalar default.
    switch (_resolveType(p.type)) {
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

    if (needsGuard) buf.writeln('}');
  }

  void _writeSimpleQueryMapEntry(StringBuffer buf, IrParameter p) {
    final sanitizedName = _paramNameLiteral(p.name);
    final queryValue = _toStringExpr(p);
    if (p.isRequired && !p.type.isNullable) {
      buf.writeln('queryParameters[$sanitizedName] = $queryValue;');
    } else {
      buf.writeln('if (${p.dartName} != null) {');
      buf.writeln('  queryParameters[$sanitizedName] = $queryValue;');
      buf.writeln('}');
    }
  }

  void _writeSimpleQueryListEntry(
    StringBuffer buf,
    IrParameter p,
    String valueExpr,
  ) {
    final sanitizedName = _paramNameLiteral(p.name);
    buf.writeln(
      "queryParametersList.add(ApiQueryParameter(name: $sanitizedName, value: $valueExpr${p.allowReserved ? ', allowReserved: true' : ''}));",
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
    final nameLiteral = _paramNameLiteral(p.name);
    final itemExpr = _queryScalarExpr(items, 'item');
    // explode=true means one query entry per item for EVERY style — the
    // pipe/space delimiters only apply to the explode=false joined form.
    if (explode) {
      buf.writeln('for (final item in $accessor) {');
      if (items.isNullable) {
        buf.writeln('  if (item == null) continue;');
      }
      buf.writeln(
        "  queryParametersList.add(ApiQueryParameter(name: $nameLiteral, value: $itemExpr${p.allowReserved ? ', allowReserved: true' : ''}));",
      );
      buf.writeln('}');
      return;
    }

    final escapedDelimiter = escapeDartString(_joinDelimiter(style));
    // Null items are omitted (matching the explode loop above); the typed
    // conversions below would not compile on a nullable item.
    final source = items.isNullable ? '$accessor.nonNulls' : accessor;
    final joined = itemExpr == 'item'
        ? "$source.join('$escapedDelimiter')"
        : "$source.map((item) => $itemExpr).join('$escapedDelimiter')";
    if (p.allowReserved) {
      _writeSimpleQueryListEntry(buf, p, joined);
    } else {
      buf.writeln('queryParameters[$nameLiteral] = $joined;');
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
    // A field is nullable in the generated model when it's optional OR its
    // type is nullable (required-but-nullable) — mirror that here or the
    // typed conversions dereference a nullable and don't compile.
    bool fieldNullable(IrField f) => !f.isRequired || f.type.isNullable;
    if (style == 'deepObject') {
      for (final field in fields) {
        final key = '$name[${field.originalName.escaped}]';
        if (fieldNullable(field)) {
          final localVar = '${field.name}\$';
          final valueExpr = _queryScalarExpr(field.type, localVar);
          buf.writeln(
            "if ($accessor.${field.name} case final $localVar?) { queryParameters['$key'] = $valueExpr; }",
          );
        } else {
          final valueExpr = _queryScalarExpr(
            field.type,
            '$accessor.${field.name}',
          );
          buf.writeln("queryParameters['$key'] = $valueExpr;");
        }
      }
      return;
    }

    if (style == 'form' && explode) {
      for (final field in fields) {
        final fieldNameLiteral = field.originalName.literal;
        if (fieldNullable(field)) {
          final localVar = '${field.name}\$';
          final valueExpr = _queryScalarExpr(field.type, localVar);
          buf.writeln(
            "if ($accessor.${field.name} case final $localVar?) { queryParametersList.add(ApiQueryParameter(name: $fieldNameLiteral, value: $valueExpr${p.allowReserved ? ', allowReserved: true' : ''})); }",
          );
        } else {
          final valueExpr = _queryScalarExpr(
            field.type,
            '$accessor.${field.name}',
          );
          buf.writeln(
            "queryParametersList.add(ApiQueryParameter(name: $fieldNameLiteral, value: $valueExpr${p.allowReserved ? ', allowReserved: true' : ''}));",
          );
        }
      }
      return;
    }

    final parts = <String>[];
    for (final field in fields) {
      final nullable = fieldNullable(field);
      final fieldAccessor = '$accessor.${field.name}${nullable ? '!' : ''}';
      final valueExpr = _queryScalarExpr(field.type, fieldAccessor);
      if (nullable) {
        parts.add(
          'if ($accessor.${field.name} != null) '
          "...['${field.originalName.escaped}', $valueExpr]",
        );
      } else {
        parts
          ..add("'${field.originalName.escaped}'")
          ..add(valueExpr);
      }
    }
    final delimiter = _joinDelimiter(style);
    final joined = "[${parts.join(', ')}].join('$delimiter')";
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
    final nameLiteral = _paramNameLiteral(p.name);
    // Null values are omitted; the typed conversions would not compile on a
    // nullable receiver.
    final skipNull = values.isNullable ? '  if (entry.value == null) continue;\n' : '';
    final valueExpr = _queryScalarExpr(
      values,
      values.isNullable ? 'entry.value!' : 'entry.value',
    );
    if (style == 'deepObject') {
      buf.writeln('for (final entry in $accessor.entries) {');
      buf.write(skipNull);
      buf.writeln("  queryParameters['$name[\${entry.key}]'] = $valueExpr;");
      buf.writeln('}');
      return;
    }

    if (style == 'form' && explode) {
      buf.writeln('for (final entry in $accessor.entries) {');
      buf.write(skipNull);
      buf.writeln(
        '  queryParametersList.add(ApiQueryParameter(name: entry.key, value: $valueExpr${p.allowReserved ? ', allowReserved: true' : ''}));',
      );
      buf.writeln('}');
      return;
    }

    final delimiter = _joinDelimiter(style);
    buf.writeln('final ${p.dartName}Parts = <String>[];');
    buf.writeln('for (final entry in $accessor.entries) {');
    buf.write(skipNull);
    buf.writeln('  ${p.dartName}Parts.add(entry.key);');
    buf.writeln('  ${p.dartName}Parts.add($valueExpr);');
    buf.writeln('}');
    if (p.allowReserved) {
      _writeSimpleQueryListEntry(buf, p, "${p.dartName}Parts.join('$delimiter')");
    } else {
      buf.writeln(
        "queryParameters[$nameLiteral] = ${p.dartName}Parts.join('$delimiter');",
      );
    }
  }

  String _queryScalarExpr(IrType type, String accessor) {
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.string => accessor,
        PrimitiveKind.dateTime ||
        PrimitiveKind.uri ||
        PrimitiveKind.bigInt => buildToJsonCode(type, accessor),
        // toJson form is an int (milliseconds); callers need a String.
        PrimitiveKind.duration =>
          '${buildToJsonCode(type, accessor)}.toString()',
        PrimitiveKind.bytes => 'base64Encode($accessor)',
        _ => '$accessor.toString()',
      },
      IrEnum(valueKind: PrimitiveKind.string) => '$accessor.toJson()',
      IrEnum() => '$accessor.value.toString()',
      IrExtensionType(:final inner) =>
        inner.kind == PrimitiveKind.string
            ? '$accessor.toJson()'
            : '$accessor.toJson().toString()',
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

  /// Normalize a parameter name (strip newlines/whitespace) for embedding.
  SpecString _normalizeParamName(SpecString name) =>
      name.rebuild((s) => s.replaceAll('\n', '').replaceAll('\r', '').trim());

  /// Escape a parameter name for use inside a larger Dart string literal.
  String _sanitizeParameterName(SpecString name) =>
      _normalizeParamName(name).escaped;

  /// Returns a full Dart string literal (with quotes) for a parameter name,
  /// using raw strings when possible to avoid unnecessary escapes.
  String _paramNameLiteral(SpecString name) => _normalizeParamName(name).literal;

  /// Returns the HTTP method string for an operation (e.g. 'GET', 'HAUNT').
  static SpecString _httpMethodString(IrOperation op) =>
      op.customMethod ?? SpecString(op.method.name.toUpperCase());

  /// If [unwrapFields] is configured and [type] is an object (or ref to one)
  /// with a matching field, return that field's type and the JSON key used
  /// to extract it. Otherwise returns the original type with no field name.
  ({IrType? type, String? unwrappedField, bool fieldIsOptional})
  _maybeUnwrapResponseType(IrType? type) {
    if (type == null || unwrapFields.isEmpty) {
      return (type: type, unwrappedField: null, fieldIsOptional: false);
    }
    final obj = _resolveToObject(type);
    if (obj == null) {
      return (type: type, unwrappedField: null, fieldIsOptional: false);
    }
    for (final fieldName in unwrapFields) {
      for (final f in obj.fields) {
        if (f.originalName.test((s) => s == fieldName)) {
          final isOptional = !f.isRequired || f.type.isNullable;
          var fieldType = f.type;
          if (isOptional && !fieldType.isNullable) {
            fieldType = fieldType.copyAsNullable();
          }
          return (
            type: fieldType,
            unwrappedField: fieldName,
            fieldIsOptional: isOptional,
          );
        }
      }
    }
    return (type: type, unwrappedField: null, fieldIsOptional: false);
  }

  /// Resolve an IrType to an IrObject if possible (through IrTypeRef).
  IrObject? _resolveToObject(IrType type) {
    if (type is IrObject) return type;
    if (type is IrTypeRef) {
      final resolved = typeRegistry[type.name];
      if (resolved is IrObject) return resolved;
    }
    return null;
  }

  Method _buildStreamingOperation(IrOperation op) {
    final params = <Parameter>[];

    // Reuse the same parameter logic as _buildOperation
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

    final requestBodyContent = op.requestBody != null
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

    // Sort required named parameters before optional ones.
    params.sort((a, b) {
      final aReq = a.required ? 0 : 1;
      final bReq = b.required ? 0 : 1;
      return aReq.compareTo(bReq);
    });

    params.add(
      Parameter(
        (pb) => pb
          ..name = 'options'
          ..named = true
          ..type = refer('RequestOptions?'),
      ),
    );

    final streaming = streamingContent(op)!;
    final streamKind = streaming.$3;
    // Prefer itemSchema (per-event type) over schema (full response type).
    final eventType = streaming.$2.itemSchema ?? streaming.$2.schema;
    final eventTypeName = irTypeName(eventType);

    final bodyCode = _buildStreamingOperationBody(
      op,
      eventType,
      streamKind: streamKind,
      requestBodyContent: requestBodyContent,
      bodyType: bodyType,
      pathParams: pathParams,
      queryParams: queryParams,
      headerParams: headerParams,
      cookieParams: cookieParams,
    );

    final docs = <String>[];
    if (op.summary != null) {
      docs.addAll(op.summary!.rebuild((s) => '$s (streaming)').docComment);
    } else {
      docs.add('/// Stream response.');
    }
    final httpMethod = _httpMethodString(op);
    docs.add('///');
    docs.add('/// `${httpMethod.commentText} ${op.path.commentText}`');

    return Method(
      (m) => m
        ..name = '${op.dartMethodName}Stream'
        ..returns = refer('Stream<$eventTypeName>')
        ..optionalParameters.addAll(params)
        ..docs.addAll(docs)
        ..body = Code(bodyCode),
    );
  }

  String _buildStreamingOperationBody(
    IrOperation op,
    IrType eventType, {
    required List<IrParameter> pathParams,
    required List<IrParameter> queryParams,
    required List<IrParameter> headerParams,
    required List<IrParameter> cookieParams,
    StreamKind streamKind = StreamKind.sse,
    (SpecString, IrMediaType)? requestBodyContent,
    IrType? bodyType,
  }) {
    final buf = StringBuffer();
    final httpMethod = _httpMethodString(op);

    // Reuse path interpolation logic
    final path = _interpolatePath(op.path, pathParams);

    // Pre-compute multipart/form/unsupported body before emitting variables,
    // so we can return early for unsupported bodies without unused locals.
    final multipartFields =
        bodyType != null && requestBodyContent!.$1.test(isMultipartMediaType)
        ? _resolveObjectFields(requestBodyContent.$2.schema)
        : null;
    final formUrlencodedFields =
        bodyType != null && requestBodyContent!.$1.test(isFormUrlencodedMediaType)
        ? _resolveObjectFields(requestBodyContent.$2.schema)
        : null;

    // Check for unsupported body before building any variables to avoid dead
    // code.
    if (bodyType != null &&
        multipartFields == null &&
        formUrlencodedFields == null) {
      final bodyExpr = _buildRequestBodyExpr(
        requestBodyContent!.$1,
        requestBodyContent.$2.schema,
        op.requestBody!.isRequired,
      );
      if (bodyExpr.startsWith('throw ')) {
        buf.writeln('$bodyExpr;');
        return buf.toString();
      }
    }

    if (queryParams.isNotEmpty) {
      buf.writeln(
        'final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};',
      );
      buf.writeln('final queryParametersList = <ApiQueryParameter>[];');
      for (final p in queryParams) {
        _writeQueryParameterSerialization(buf, p);
      }
      buf.writeln();
    }

    if (cookieParams.isNotEmpty) {
      buf.writeln(
        'final cookies = <String, String>{...apiConfig.defaultCookies};',
      );
      for (final p in cookieParams) {
        final sanitizedName = _paramNameLiteral(p.name);
        final cookieValue = _toStringExpr(p);
        if (p.isRequired && !p.type.isNullable) {
          buf.writeln('cookies[$sanitizedName] = $cookieValue;');
        } else {
          buf.writeln('if (${p.dartName} != null) {');
          buf.writeln('  cookies[$sanitizedName] = $cookieValue;');
          buf.writeln('}');
        }
      }
      buf.writeln();
    }

    buf.writeln(
      'final headers = <String, String>{...apiConfig.defaultHeaders};',
    );
    if (requestBodyContent case (
      final mediaType,
      _,
    ) when !mediaType.test(isMultipartMediaType)) {
      final contentType = mediaType.test((s) => normalizeMediaType(s) == '*/*')
          ? const SpecString('application/json')
          : mediaType;
      buf.writeln("headers['Content-Type'] = ${contentType.literal};");
    }
    for (final p in headerParams) {
      final sanitizedName = _paramNameLiteral(p.name);
      final headerValue = _toStringExpr(p);
      if (p.isRequired && !p.type.isNullable) {
        buf.writeln('headers[$sanitizedName] = $headerValue;');
      } else {
        buf.writeln('if (${p.dartName} != null) {');
        buf.writeln('  headers[$sanitizedName] = $headerValue;');
        buf.writeln('}');
      }
    }
    buf.writeln();

    buf.writeln('final request = ApiRequest(');
    buf.writeln('  method: ${httpMethod.literal},');
    buf.writeln('  path: $path,');
    buf.writeln('  headers: headers,');
    if (queryParams.isNotEmpty) {
      buf.writeln('  queryParameters: queryParameters,');
      buf.writeln('  queryParametersList: queryParametersList,');
    }
    if (cookieParams.isNotEmpty) {
      buf.writeln('  cookies: cookies,');
    }

    if (multipartFields != null) {
      _writeMultipartBody(buf, multipartFields, op.requestBody!.isRequired);
      buf.writeln("  contentType: 'multipart/form-data',");
    } else if (formUrlencodedFields != null) {
      _writeFormUrlencodedBody(
        buf,
        formUrlencodedFields,
        op.requestBody!.isRequired,
      );
    } else if (bodyType != null) {
      final requestBody = requestBodyContent!;
      buf.writeln(
        '  body: ${_buildRequestBodyExpr(requestBody.$1, requestBody.$2.schema, op.requestBody!.isRequired)},',
      );
    }
    buf.writeln('  options: options,');
    buf.writeln(');');
    buf.writeln();

    // Build the deserialize expression for each streamed event
    final deserializeExpr = _buildSseDeserializeExpr(eventType);
    final executeMethod = switch (streamKind) {
      StreamKind.sse => 'executeStreaming',
      StreamKind.jsonl => 'executeJsonlStreaming',
    };
    buf.writeln('return $executeMethod(');
    buf.writeln('  request,');
    buf.writeln('  onEvent: (data) {');
    buf.writeln('    $deserializeExpr');
    buf.writeln('  },');
    buf.writeln(');');

    return buf.toString();
  }

  String _buildSseDeserializeExpr(IrType eventType) {
    return 'return ${_fromJson(eventType, 'jsonDecode(data)')};';
  }

  (SpecString, IrMediaType)? _preferredRequestBodyContent(IrRequestBody body) =>
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

  (SpecString, IrMediaType)? _errorResponseContent(IrOperation op) {
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

  String _buildErrorDeserializeExpr(SpecString mediaType, IrType errorType) {
    if (mediaType.test(isJsonLikeMediaType)) {
      return switch (errorType) {
        IrPrimitive(:final kind) => switch (kind) {
          PrimitiveKind.string => 'return response.body;',
          PrimitiveKind.int => 'return int.parse(response.body);',
          PrimitiveKind.double => 'return double.parse(response.body);',
          PrimitiveKind.bool => 'return jsonDecode(response.body) as bool;',
          PrimitiveKind.bytes =>
            'return ${_fromJson(errorType, 'jsonDecode(response.body)')};',
          _ => 'return jsonDecode(response.body);',
        },
        IrEnum(:final name) =>
          'return $name.fromJson(jsonDecode(response.body) as String);',
        IrList(:final items) =>
          'final json = jsonDecode(response.body) as List<dynamic>;\n'
              '    return json.map((e) => ${_fromJson(items, 'e')}).toList();',
        IrMap(:final values) => () {
          final valueExpr = _fromJson(values, 'v');
          if (valueExpr == 'v') {
            return 'return jsonDecode(response.body) as Map<String, dynamic>;';
          }
          return 'return (jsonDecode(response.body) as Map<String, dynamic>).map((k, v) => MapEntry(k, $valueExpr));';
        }(),
        // All named types with .fromJson(Map)
        _ => 'return ${_fromJson(errorType, 'jsonDecode(response.body)')};',
      };
    }

    final unsupportedMessage = mediaType.rebuild(
      (m) => 'Cannot decode $m error into ${irTypeName(errorType)}',
    );
    return switch (errorType) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.dynamic_ ||
        PrimitiveKind.string => 'return response.body;',
        PrimitiveKind.int => 'return int.parse(response.body);',
        PrimitiveKind.double => 'return double.parse(response.body);',
        PrimitiveKind.bool => "return response.body.toLowerCase() == 'true';",
        PrimitiveKind.bytes => 'return Uint8List.fromList(response.bodyBytes);',
        _ => 'return null;',
      },
      IrEnum(:final name) => 'return $name.fromJson(response.body);',
      _ =>
        '// TODO: Unsupported non-JSON error schema ${unsupportedMessage.commentText}\nreturn null;',
    };
  }

  (SpecString, IrMediaType)? _successResponseContent(IrOperation op) {
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
    SpecString mediaType,
    IrType bodyType,
    bool isRequired,
  ) {
    if (mediaType.test(isJsonLikeMediaType)) {
      final nullAware = (!isRequired || bodyType.isNullable) ? '?' : '';
      final toJsonCall = _typeNeedsToJson(bodyType)
          ? '$nullAware.toJson()'
          : '';
      return 'jsonEncode(body$toJsonCall)';
    }

    final unsupportedMessage = mediaType.rebuild(
      (m) => 'Cannot encode non-JSON $m request body from ${irTypeName(bodyType)}',
    );
    return switch (bodyType) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.dynamic_ => 'body',
        PrimitiveKind.string => 'body',
        PrimitiveKind.bytes => 'body',
        _ => buildToJsonCode(bodyType, 'body'),
      },
      IrEnum() => 'body.toJson()',
      IrExtensionType() => 'body.toJson()',
      _ => 'throw UnsupportedError(${unsupportedMessage.literal})',
    };
  }

  bool _supportsNonJsonDecode(IrType type) {
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.dynamic_ => true,
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
        PrimitiveKind.dynamic_ => true,
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
    if (!isRequired) {
      buf.writeln('  body: body == null ? null : [');
    } else {
      buf.writeln('  body: [');
    }
    for (final f in fields) {
      final fieldAccessor = 'body.${f.name}';
      final isBytes =
          f.type is IrPrimitive &&
          (f.type as IrPrimitive).kind == PrimitiveKind.bytes;
      // Emit null guard only when the Dart field type is actually nullable.
      // Fields with defaults are non-nullable even if not required,
      // but only if the default can be represented as a Dart constant.
      final isNullable =
          (!f.isRequired && !_hasUsableDartDefault(f)) || f.type.isNullable;

      if (isNullable) {
        // Use a case-pattern variable to enable type promotion on nullable
        // public fields.
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
    bool isRequired,
  ) {
    if (!isRequired) {
      buf.writeln('  body: body == null ? null : <String>[');
    } else {
      buf.writeln('  body: <String>[');
    }
    for (final f in fields) {
      final fieldAccessor = 'body.${f.name}';
      final isNullable =
          (!f.isRequired && !_hasUsableDartDefault(f)) || f.type.isNullable;
      final valueExpr = _formFieldValueExpr(f.type, fieldAccessor);
      final encoded =
          "'${f.originalName.escaped}=\${Uri.encodeQueryComponent($valueExpr)}'";

      if (isNullable) {
        final localVar = '${f.name}\$';
        final localValueExpr = _formFieldValueExpr(f.type, localVar);
        final localEncoded =
            "'${f.originalName.escaped}=\${Uri.encodeQueryComponent($localValueExpr)}'";
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
    // Bytes must be base64-encoded for form-urlencoded bodies.
    if (type is IrPrimitive && type.kind == PrimitiveKind.bytes) {
      return 'base64Encode($accessor)';
    }
    return _multipartFieldValueExpr(type, accessor);
  }

  void _writeMultipartFieldExpr(
    StringBuffer buf,
    IrField f,
    String accessor,
    bool isBytes,
  ) {
    if (isBytes) {
      buf.writeln(
        '    ApiMultipartField.file(${f.originalName.literal}, $accessor),',
      );
    } else {
      final valueExpr = _multipartFieldValueExpr(f.type, accessor);
      buf.writeln(
        '    ApiMultipartField.text(${f.originalName.literal}, $valueExpr),',
      );
    }
  }

  /// Whether a field has a default value that the model emitter can represent
  /// as a Dart compile-time constant. Only these defaults produce non-nullable
  /// fields in the generated model class.
  static bool _hasUsableDartDefault(IrField f) {
    if (f.defaultValue == null) return false;
    final v = f.defaultValue;
    return switch (f.type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.bool => v is bool,
        PrimitiveKind.int ||
        PrimitiveKind.double ||
        PrimitiveKind.num => v is num,
        PrimitiveKind.string => v is String,
        _ => false,
      },
      IrEnum(:final valueKind) => switch (valueKind) {
        PrimitiveKind.int || PrimitiveKind.double => v is num,
        _ => v is String,
      },
      _ => false,
    };
  }

  /// Get the string expression for a multipart text field value.
  String _multipartFieldValueExpr(IrType type, String accessor) {
    return switch (type) {
      IrPrimitive(:final kind) => switch (kind) {
        PrimitiveKind.string => accessor,
        PrimitiveKind.dynamic_ => '$accessor.toString()',
        PrimitiveKind.bool ||
        PrimitiveKind.int ||
        PrimitiveKind.double ||
        PrimitiveKind.num => '$accessor.toString()',
        PrimitiveKind.dateTime => '$accessor.toIso8601String()',
        PrimitiveKind.uri || PrimitiveKind.bigInt => '$accessor.toString()',
        PrimitiveKind.duration => '$accessor.inMilliseconds.toString()',
        PrimitiveKind.bytes => accessor, // handled separately as file
      },
      IrEnum(valueKind: PrimitiveKind.string) => '$accessor.toJson()',
      IrEnum() => '$accessor.value.toString()',
      IrExtensionType(:final inner) =>
        inner.kind == PrimitiveKind.string
            ? '$accessor.toJson()'
            : '$accessor.toJson().toString()',
      _ => '$accessor.toString()',
    };
  }
}
