// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/ai_search_create_tokens_request.dart';import '../models/ai_search_create_tokens_response.dart';import '../models/ai_search_create_tokens_response400.dart';import '../models/ai_search_delete_tokens_response.dart';import '../models/ai_search_delete_tokens_response404.dart';import '../models/ai_search_fetch_tokens_response.dart';import '../models/ai_search_fetch_tokens_response400.dart';import '../models/ai_search_list_tokens_order_by.dart';import '../models/ai_search_list_tokens_order_by_direction.dart';import '../models/ai_search_list_tokens_response.dart';import '../models/ai_search_list_tokens_response400.dart';import '../models/ai_search_update_tokens_request.dart';import '../models/ai_search_update_tokens_response.dart';import '../models/ai_search_update_tokens_response400.dart';/// AiSearchTokensApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AiSearchTokensApi with ApiExecutor {const AiSearchTokensApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List tokens.
///
/// `GET /accounts/{account_id}/ai-search/tokens`
Future<ApiResult<AiSearchListTokensResponse, AiSearchListTokensResponse400>> aiSearchListTokens({required String accountId, int? page, int? perPage, AiSearchListTokensOrderBy? orderBy, AiSearchListTokensOrderByDirection? orderByDirection, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (orderBy != null) queryParameters['order_by'] = orderBy.toJson();
if (orderByDirection != null) queryParameters['order_by_direction'] = orderByDirection.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/tokens',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AiSearchListTokensResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchListTokensResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create new tokens.
///
/// Create a new tokens.
///
/// `POST /accounts/{account_id}/ai-search/tokens`
Future<ApiResult<AiSearchCreateTokensResponse, AiSearchCreateTokensResponse400>> aiSearchCreateTokens({required String accountId, AiSearchCreateTokensRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/tokens',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AiSearchCreateTokensResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchCreateTokensResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read tokens.
///
/// `GET /accounts/{account_id}/ai-search/tokens/{id}`
Future<ApiResult<AiSearchFetchTokensResponse, AiSearchFetchTokensResponse400>> aiSearchFetchTokens({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/tokens/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AiSearchFetchTokensResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchFetchTokensResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update tokens.
///
/// `PUT /accounts/{account_id}/ai-search/tokens/{id}`
Future<ApiResult<AiSearchUpdateTokensResponse, AiSearchUpdateTokensResponse400>> aiSearchUpdateTokens({required String accountId, required String id, AiSearchUpdateTokensRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/tokens/${Uri.encodeComponent(id)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AiSearchUpdateTokensResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchUpdateTokensResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete tokens.
///
/// `DELETE /accounts/{account_id}/ai-search/tokens/{id}`
Future<ApiResult<AiSearchDeleteTokensResponse, AiSearchDeleteTokensResponse404>> aiSearchDeleteTokens({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/tokens/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AiSearchDeleteTokensResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchDeleteTokensResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
