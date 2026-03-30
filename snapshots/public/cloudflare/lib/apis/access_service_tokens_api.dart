// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_components_schemas_response_collection.dart';import '../models/access_create_response.dart';import '../models/access_identifier.dart';import '../models/access_schemas_single_response.dart';import '../models/access_service_tokens_create_a_service_token_request.dart';import '../models/access_service_tokens_rotate_a_service_token_request.dart';import '../models/access_service_tokens_update_a_service_token_request.dart';import '../models/access_uuid.dart';/// AccessServiceTokensApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessServiceTokensApi with ApiExecutor {const AccessServiceTokensApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List service tokens
///
/// Lists all service tokens.
///
/// `GET /accounts/{account_id}/access/service_tokens`
Future<ApiResult<AccessComponentsSchemasResponseCollection, Never>> accessServiceTokensListServiceTokens({required AccessIdentifier accountId, String? name, String? search, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name;
}
if (search != null) {
  queryParameters['search'] = search;
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/service_tokens',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessComponentsSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a service token
///
/// Generates a new service token. **Note:** This is the only time you can get the Client Secret. If you lose the Client Secret, you will have to rotate the Client Secret or create a new service token.
///
/// `POST /accounts/{account_id}/access/service_tokens`
Future<ApiResult<AccessCreateResponse, Never>> accessServiceTokensCreateAServiceToken({required AccessIdentifier accountId, required AccessServiceTokensCreateAServiceTokenRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/service_tokens',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCreateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a service token
///
/// Fetches a single service token.
///
/// `GET /accounts/{account_id}/access/service_tokens/{service_token_id}`
Future<ApiResult<AccessSchemasSingleResponse, Never>> accessServiceTokensGetAServiceToken({required AccessUuid serviceTokenId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/service_tokens/${Uri.encodeComponent(serviceTokenId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a service token
///
/// Updates a configured service token.
///
/// `PUT /accounts/{account_id}/access/service_tokens/{service_token_id}`
Future<ApiResult<AccessSchemasSingleResponse, Never>> accessServiceTokensUpdateAServiceToken({required AccessUuid serviceTokenId, required AccessIdentifier accountId, required AccessServiceTokensUpdateAServiceTokenRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/service_tokens/${Uri.encodeComponent(serviceTokenId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a service token
///
/// Deletes a service token.
///
/// `DELETE /accounts/{account_id}/access/service_tokens/{service_token_id}`
Future<ApiResult<AccessSchemasSingleResponse, Never>> accessServiceTokensDeleteAServiceToken({required AccessUuid serviceTokenId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/service_tokens/${Uri.encodeComponent(serviceTokenId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Refresh a service token
///
/// Refreshes the expiration of a service token.
///
/// `POST /accounts/{account_id}/access/service_tokens/{service_token_id}/refresh`
Future<ApiResult<AccessSchemasSingleResponse, Never>> accessServiceTokensRefreshAServiceToken({required AccessUuid serviceTokenId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/service_tokens/${Uri.encodeComponent(serviceTokenId.toString())}/refresh',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Rotate a service token
///
/// Generates a new Client Secret for a service token and revokes the old one.
///
/// `POST /accounts/{account_id}/access/service_tokens/{service_token_id}/rotate`
Future<ApiResult<AccessCreateResponse, Never>> accessServiceTokensRotateAServiceToken({required AccessUuid serviceTokenId, required AccessIdentifier accountId, AccessServiceTokensRotateAServiceTokenRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/service_tokens/${Uri.encodeComponent(serviceTokenId.toString())}/rotate',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCreateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
