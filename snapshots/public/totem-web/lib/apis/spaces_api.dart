// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/space_detail_schema.dart';/// SpacesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SpacesApi with ApiExecutor {const SpacesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Spaces
///
/// `GET /api/v1/spaces/list`
Future<ApiResult<List<SpaceDetailSchema>, Never>> totemSpacesApiListSpaces({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/api/v1/spaces/list',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => SpaceDetailSchema.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
