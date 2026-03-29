import '../ir/ir_types.dart';
import '../naming.dart';
import '../parser/openapi_document.dart';
import 'ir_mapper.dart';

/// Converts OpenAPI path items and operations into IR operation groups.
///
/// Operations are grouped by their first tag into [IrApi] instances. Each
/// [IrApi] corresponds to a generated API client class.
class OperationLowerer {
  final IrMapper irMapper;
  final OpenApiDocument? _doc;

  OperationLowerer(this.irMapper, {OpenApiDocument? doc}) : _doc = doc;

  /// Convenience accessor for the type registry.
  Map<String, IrType> get typeRegistry => irMapper.typeRegistry;

  /// Lower all paths into [IrApi] groups, keyed by tag.
  ///
  /// [paths] is the `paths` object from an OpenAPI spec, e.g.:
  /// ```json
  /// { "/pets": { "get": { ... }, "post": { ... } } }
  /// ```
  List<IrApi> lowerPaths(Map<String, dynamic> paths) {
    final grouped = <String, List<IrOperation>>{};

    for (final pathEntry in paths.entries) {
      final path = pathEntry.key;
      var pathItem = pathEntry.value;
      if (pathItem is! Map<String, dynamic>) continue;

      // Resolve path-item-level $ref (e.g. external file refs).
      if (pathItem.containsKey(r'$ref')) {
        if (_doc != null) {
          final resolved = _doc.resolveRef(pathItem[r'$ref'] as String);
          if (resolved is Map<String, dynamic>) {
            pathItem = resolved;
          } else {
            continue;
          }
        } else {
          continue;
        }
      }

      // Collect path-level parameters that apply to all operations.
      final pathParameters = _resolveParamRefs(
        pathItem['parameters'] as List? ?? [],
      );

      for (final method in _httpMethods) {
        var opMap = pathItem[method];
        if (opMap is! Map<String, dynamic>) continue;

        // Resolve operation-level $ref (e.g. external file refs).
        if (opMap.containsKey(r'$ref') && _doc != null) {
          final resolved = _doc.resolveRef(opMap[r'$ref'] as String);
          if (resolved is Map<String, dynamic>) {
            opMap = resolved;
          } else {
            continue;
          }
        }

        final operation = lowerOperation(
          path,
          method,
          opMap,
          pathParameters: pathParameters,
        );
        final tag = _primaryTag(opMap);
        grouped.putIfAbsent(tag, () => []).add(operation);
      }
    }

    return grouped.entries.map((e) {
      final apiName = sanitizeDartName('${toPascalCase(e.key)}Api');
      // Deduplicate operation method names within the API group
      final usedMethodNames = <String>{};
      final dedupedOps = <IrOperation>[];
      for (final op in e.value) {
        final uniqueName = deduplicateName(op.dartMethodName, usedMethodNames);
        usedMethodNames.add(uniqueName);
        if (uniqueName != op.dartMethodName) {
          dedupedOps.add(
            IrOperation(
              op.operationId,
              uniqueName,
              op.method,
              op.path,
              summary: op.summary,
              description: op.description,
              parameters: op.parameters,
              requestBody: op.requestBody,
              responses: op.responses,
              defaultResponse: op.defaultResponse,
              isDeprecated: op.isDeprecated,
              securityRequirements: op.securityRequirements,
            ),
          );
        } else {
          dedupedOps.add(op);
        }
      }
      return IrApi(apiName, dedupedOps);
    }).toList();
  }

  /// Lower a single operation.
  ///
  /// [pathParameters] are parameters defined at the path-item level that
  /// should be merged with operation-level parameters.
  /// The current operation ID being lowered. Used for name hints.
  String? _currentOperationId;

  /// Cached PascalCase of [_currentOperationId] to avoid recomputing.
  String? _currentOpPascal;

  IrOperation lowerOperation(
    String path,
    String method,
    Map<String, dynamic> op, {
    List<dynamic> pathParameters = const [],
  }) {
    final operationId = op['operationId'] as String? ?? '${method}_$path';
    _currentOperationId = operationId;
    _currentOpPascal = toPascalCase(operationId);
    _usedParamNames.clear();
    final dartMethod = sanitizeDartName(operationMethodName(operationId));
    final httpMethod = _parseHttpMethod(method);
    final summary = op['summary'] as String?;
    final description = op['description'] as String?;
    final deprecated = op['deprecated'] == true;
    final securityRequirements = _lowerSecurityRequirements(op['security']);

    // Merge path-level and operation-level parameters.
    final opParams = _resolveParamRefs(op['parameters'] as List? ?? []);
    final mergedParams = _mergeParameters(pathParameters, opParams);
    final parameters = mergedParams
        .whereType<Map<String, dynamic>>()
        .map(_lowerParameter)
        .toList();

    // Request body (resolve $ref if needed).
    var rawRequestBody = op['requestBody'];
    if (rawRequestBody is Map<String, dynamic> &&
        rawRequestBody.containsKey(r'$ref') &&
        _doc != null) {
      rawRequestBody =
          _doc.resolveRef(rawRequestBody[r'$ref'] as String) ?? rawRequestBody;
    }
    final requestBody = _lowerRequestBody(rawRequestBody);

    // Responses.
    final responses = <int, IrResponse>{};
    IrResponse? defaultResponse;
    final rawResponses = op['responses'] as Map<String, dynamic>?;
    if (rawResponses != null) {
      for (final entry in rawResponses.entries) {
        final statusKey = entry.key;
        var responseMap = entry.value;
        if (responseMap is! Map<String, dynamic>) continue;
        // Resolve $ref in responses
        if (responseMap.containsKey(r'$ref') && _doc != null) {
          final resolved = _doc.resolveRef(responseMap[r'$ref'] as String);
          if (resolved is Map<String, dynamic>) responseMap = resolved;
        }

        final irResponse = _lowerResponse(responseMap, statusCode: statusKey);
        if (statusKey == 'default') {
          defaultResponse = irResponse;
        } else {
          final statusCode = int.tryParse(statusKey);
          if (statusCode != null) {
            responses[statusCode] = irResponse;
          }
        }
      }
    }

    return IrOperation(
      operationId,
      dartMethod,
      httpMethod,
      path,
      summary: summary,
      description: description,
      parameters: parameters,
      requestBody: requestBody,
      responses: responses,
      defaultResponse: defaultResponse,
      isDeprecated: deprecated,
      securityRequirements: securityRequirements,
    );
  }

  List<IrSecurityRequirement>? _lowerSecurityRequirements(dynamic value) {
    if (value is! List) return null;
    return value.whereType<Map<String, dynamic>>().map((requirement) {
      final schemes = <String, List<String>>{};
      for (final entry in requirement.entries) {
        final scopes = entry.value is List
            ? (entry.value as List).map((e) => e.toString()).toList()
            : const <String>[];
        schemes[entry.key] = scopes;
      }
      return IrSecurityRequirement(schemes);
    }).toList();
  }

  // ──────────────────────────────────────────────────────────────
  // Parameters
  // ──────────────────────────────────────────────────────────────

  /// Track used parameter names per operation to deduplicate.
  final Set<String> _usedParamNames = {};

  IrParameter _lowerParameter(Map<String, dynamic> param) {
    final rawName = param['name'] as String? ?? '';
    // Sanitize: strip newlines and excess whitespace from parameter names.
    final name = rawName.replaceAll(RegExp(r'[\n\r]+\s*'), ' ').trim();
    // Handle special suffix characters common in OpenAPI (e.g. Twilio range filters).
    final suffixedName = _applyParamSuffix(name);
    var dartName = sanitizeDartName(toCamelCase(suffixedName));
    // Deduplicate within the current operation.
    dartName = deduplicateName(dartName, _usedParamNames);
    _usedParamNames.add(dartName);

    final inValue = param['in'] as String? ?? 'query';
    final location = _parseParameterLocation(inValue);
    final required = param['required'] == true;
    final style = param['style'] as String?;
    final explode = param['explode'] as bool?;
    final allowReserved = param['allowReserved'] == true;

    final rawSchema = param['schema'];
    // Generate a name hint for inline parameter schemas.
    String? paramNameHint;
    if (_currentOperationId != null) {
      paramNameHint = '${_currentOpPascal!}${toPascalCase(name)}';
    }
    final type = rawSchema != null
        ? irMapper.lowerUntypedInlineSchema(rawSchema, nameHint: paramNameHint)
        : const IrPrimitive(PrimitiveKind.dynamic_, isNullable: true);
    final defaultValue =
        param['default'] ??
        (rawSchema is Map<String, dynamic> ? rawSchema['default'] : null);

    return IrParameter(
      name,
      dartName,
      location,
      type,
      isRequired: required,
      style: style,
      explode: explode,
      allowReserved: allowReserved,
      defaultValue: defaultValue,
    );
  }

  /// Applies a meaningful suffix for parameter names with special trailing characters.
  ///
  /// Common in OpenAPI specs like Twilio for range filters:
  /// - `ParamName<` → `ParamName_Before`
  /// - `ParamName>` → `ParamName_After`
  /// - `ParamName<=` → `ParamName_AtMost`
  /// - `ParamName>=` → `ParamName_AtLeast`
  static String _applyParamSuffix(String name) {
    if (name.endsWith('<=')) {
      return '${name.substring(0, name.length - 2)}_AtMost';
    }
    if (name.endsWith('>=')) {
      return '${name.substring(0, name.length - 2)}_AtLeast';
    }
    if (name.endsWith('<')) {
      return '${name.substring(0, name.length - 1)}_Before';
    }
    if (name.endsWith('>')) {
      return '${name.substring(0, name.length - 1)}_After';
    }
    return name;
  }

  /// Resolve `$ref` in a parameter list. Parameter-level refs point to
  /// `#/components/parameters/...` and must be resolved before lowering.
  List<dynamic> _resolveParamRefs(List<dynamic> params) {
    if (_doc == null) return params;
    return params.map((p) {
      if (p is Map<String, dynamic> && p.containsKey(r'$ref')) {
        final resolved = _doc.resolveRef(p[r'$ref'] as String);
        if (resolved is Map<String, dynamic>) return resolved;
      }
      return p;
    }).toList();
  }

  /// Merge path-level and operation-level parameters.
  ///
  /// Operation parameters override path parameters with the same name+in.
  List<dynamic> _mergeParameters(
    List<dynamic> pathParams,
    List<dynamic> opParams,
  ) {
    final byKey = <String, dynamic>{};
    for (final p in pathParams) {
      if (p is Map<String, dynamic>) {
        final key = '${p['name']}:${p['in']}';
        byKey[key] = p;
      }
    }
    for (final p in opParams) {
      if (p is Map<String, dynamic>) {
        final key = '${p['name']}:${p['in']}';
        byKey[key] = p;
      }
    }
    return byKey.values.toList();
  }

  // ──────────────────────────────────────────────────────────────
  // Request body
  // ──────────────────────────────────────────────────────────────

  IrRequestBody? _lowerRequestBody(dynamic raw) {
    if (raw is! Map<String, dynamic>) return null;

    final required = raw['required'] == true;
    final content = raw['content'] as Map<String, dynamic>?;
    if (content == null) return IrRequestBody({}, isRequired: required);

    final irContent = <String, IrMediaType>{};
    for (final entry in content.entries) {
      final mediaType = entry.key;
      final mediaMap = entry.value;
      if (mediaMap is! Map<String, dynamic>) continue;

      final rawSchema = mediaMap['schema'];
      if (rawSchema == null) continue;

      // Generate a name hint for inline request body schemas.
      String? bodyNameHint;
      if (_currentOperationId != null) {
        bodyNameHint = '${_currentOpPascal!}Request';
      }
      final irSchema = irMapper.lowerUntypedInlineSchema(
        rawSchema,
        nameHint: bodyNameHint,
      );
      // encoding is a map of property names to encoding objects, not a string.
      // Ignore it for now - it's only relevant for multipart form serialization.
      irContent[mediaType] = IrMediaType(irSchema);
    }

    return IrRequestBody(irContent, isRequired: required);
  }

  // ──────────────────────────────────────────────────────────────
  // Responses
  // ──────────────────────────────────────────────────────────────

  IrResponse _lowerResponse(
    Map<String, dynamic> response, {
    String? statusCode,
  }) {
    final description = response['description'] as String?;
    final content = response['content'] as Map<String, dynamic>?;
    final irContent = <String, IrMediaType>{};

    if (content != null) {
      for (final entry in content.entries) {
        final mediaType = entry.key;
        final mediaMap = entry.value;
        if (mediaMap is! Map<String, dynamic>) continue;

        final rawSchema = mediaMap['schema'];
        if (rawSchema == null) continue;

        // Generate a name hint for inline schemas based on the operation
        String? nameHint;
        if (_currentOperationId != null) {
          nameHint = '${_currentOpPascal!}Response';
          if (statusCode != null &&
              statusCode != '200' &&
              statusCode != '201') {
            nameHint = '${_currentOpPascal!}Response$statusCode';
          }
        }

        final irSchema = irMapper.lowerUntypedInlineSchema(
          rawSchema,
          nameHint: nameHint,
        );
        irContent[mediaType] = IrMediaType(irSchema);
      }
    }

    // Lower response headers.
    final headers = <IrField>[];
    final rawHeaders = response['headers'] as Map<String, dynamic>?;
    if (rawHeaders != null) {
      for (final entry in rawHeaders.entries) {
        final headerName = entry.key;
        final headerMap = entry.value;
        if (headerMap is! Map<String, dynamic>) continue;

        final rawSchema = headerMap['schema'];
        final headerType = rawSchema != null
            ? irMapper.lowerUntypedInlineSchema(rawSchema)
            : const IrPrimitive(PrimitiveKind.dynamic_, isNullable: true);
        final headerDescription = headerMap['description'] as String?;

        headers.add(
          IrField(
            sanitizeDartName(toCamelCase(headerName)),
            headerName,
            headerType,
            description: headerDescription,
          ),
        );
      }
    }

    return IrResponse(
      description: description,
      content: irContent,
      headers: headers,
    );
  }

  // ──────────────────────────────────────────────────────────────
  // Helpers
  // ──────────────────────────────────────────────────────────────

  String _primaryTag(Map<String, dynamic> op) {
    final tags = op['tags'] as List?;
    if (tags != null && tags.isNotEmpty) {
      return tags.first.toString();
    }
    return 'Default';
  }

  static HttpMethod _parseHttpMethod(String method) {
    return switch (method.toLowerCase()) {
      'get' => HttpMethod.get,
      'post' => HttpMethod.post,
      'put' => HttpMethod.put,
      'patch' => HttpMethod.patch,
      'delete' => HttpMethod.delete,
      'head' => HttpMethod.head,
      'options' => HttpMethod.options,
      'trace' => HttpMethod.trace,
      _ => HttpMethod.get,
    };
  }

  static ParameterLocation _parseParameterLocation(String value) {
    return switch (value.toLowerCase()) {
      'path' => ParameterLocation.path,
      'query' => ParameterLocation.query,
      'header' => ParameterLocation.header,
      'cookie' => ParameterLocation.cookie,
      _ => ParameterLocation.query,
    };
  }

  static const _httpMethods = [
    'get',
    'post',
    'put',
    'patch',
    'delete',
    'head',
    'options',
    'trace',
  ];
}
