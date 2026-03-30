// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/ai_search_create_tokens_request.dart';import '../models/ai_search_create_tokens_response400.dart';import '../models/ai_search_create_tokens_response_result.dart';import '../models/ai_search_delete_tokens_response404.dart';import '../models/ai_search_delete_tokens_response_result.dart';import '../models/ai_search_fetch_tokens_response400.dart';import '../models/ai_search_fetch_tokens_response_result.dart';import '../models/ai_search_list_tokens_order_by.dart';import '../models/ai_search_list_tokens_order_by_direction.dart';import '../models/ai_search_list_tokens_response400.dart';import '../models/ai_search_list_tokens_response_result.dart';import '../models/ai_search_update_tokens_request.dart';import '../models/ai_search_update_tokens_response400.dart';import '../models/ai_search_update_tokens_response_result.dart';/// AiSearchTokensApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AiSearchTokensApi with ApiExecutor {const AiSearchTokensApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List tokens.
///
/// `GET /accounts/{account_id}/ai-search/tokens`
Future<ApiResult<List<AiSearchListTokensResponseResult>, AiSearchListTokensResponse400>> aiSearchListTokens({required String accountId, int? page, int? perPage, AiSearchListTokensOrderBy? orderBy, AiSearchListTokensOrderByDirection? orderByDirection, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (orderBy != null) {
  queryParameters['order_by'] = orderBy.toJson();
}
if (orderByDirection != null) {
  queryParameters['order_by_direction'] = orderByDirection.toJson();
}

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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => AiSearchListTokensResponseResult.fromJson(e as Map<String, dynamic>)).toList();
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
Future<ApiResult<AiSearchCreateTokensResponseResult, AiSearchCreateTokensResponse400>> aiSearchCreateTokens({required String accountId, AiSearchCreateTokensRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AiSearchCreateTokensResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchCreateTokensResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read tokens.
///
/// `GET /accounts/{account_id}/ai-search/tokens/{id}`
Future<ApiResult<AiSearchFetchTokensResponseResult, AiSearchFetchTokensResponse400>> aiSearchFetchTokens({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/tokens/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AiSearchFetchTokensResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchFetchTokensResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update tokens.
///
/// `PUT /accounts/{account_id}/ai-search/tokens/{id}`
Future<ApiResult<AiSearchUpdateTokensResponseResult, AiSearchUpdateTokensResponse400>> aiSearchUpdateTokens({required String accountId, required String id, AiSearchUpdateTokensRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AiSearchUpdateTokensResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchUpdateTokensResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete tokens.
///
/// `DELETE /accounts/{account_id}/ai-search/tokens/{id}`
Future<ApiResult<AiSearchDeleteTokensResponseResult, AiSearchDeleteTokensResponse404>> aiSearchDeleteTokens({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/tokens/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AiSearchDeleteTokensResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchDeleteTokensResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
