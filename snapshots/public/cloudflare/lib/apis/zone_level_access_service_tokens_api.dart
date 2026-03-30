// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_identifier.dart';import '../models/access_schemas_create_response_result.dart';import '../models/access_schemas_service_tokens.dart';import '../models/access_uuid.dart';import '../models/zone_level_access_service_tokens_create_a_service_token_request.dart';import '../models/zone_level_access_service_tokens_update_a_service_token_request.dart';/// ZoneLevelAccessServiceTokensApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneLevelAccessServiceTokensApi with ApiExecutor {const ZoneLevelAccessServiceTokensApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List service tokens
///
/// Lists all service tokens.
///
/// `GET /zones/{zone_id}/access/service_tokens`
Future<ApiResult<List<AccessSchemasServiceTokens>?, Never>> zoneLevelAccessServiceTokensListServiceTokens({required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/service_tokens',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasServiceTokens.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a service token
///
/// Generates a new service token. **Note:** This is the only time you can get the Client Secret. If you lose the Client Secret, you will have to create a new service token.
///
/// `POST /zones/{zone_id}/access/service_tokens`
Future<ApiResult<AccessSchemasCreateResponseResult?, Never>> zoneLevelAccessServiceTokensCreateAServiceToken({required AccessIdentifier zoneId, required ZoneLevelAccessServiceTokensCreateAServiceTokenRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/service_tokens',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessSchemasCreateResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get a service token
///
/// Fetches a single service token.
///
/// `GET /zones/{zone_id}/access/service_tokens/{service_token_id}`
Future<ApiResult<AccessSchemasServiceTokens?, Never>> zoneLevelAccessServiceTokensGetAServiceToken({required AccessUuid serviceTokenId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/service_tokens/${Uri.encodeComponent(serviceTokenId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessSchemasServiceTokens.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update a service token
///
/// Updates a configured service token.
///
/// `PUT /zones/{zone_id}/access/service_tokens/{service_token_id}`
Future<ApiResult<AccessSchemasServiceTokens?, Never>> zoneLevelAccessServiceTokensUpdateAServiceToken({required AccessUuid serviceTokenId, required AccessIdentifier zoneId, required ZoneLevelAccessServiceTokensUpdateAServiceTokenRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/service_tokens/${Uri.encodeComponent(serviceTokenId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessSchemasServiceTokens.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete a service token
///
/// Deletes a service token.
///
/// `DELETE /zones/{zone_id}/access/service_tokens/{service_token_id}`
Future<ApiResult<AccessSchemasServiceTokens?, Never>> zoneLevelAccessServiceTokensDeleteAServiceToken({required AccessUuid serviceTokenId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/service_tokens/${Uri.encodeComponent(serviceTokenId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessSchemasServiceTokens.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
