// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/ai_search_create_instances_request.dart';import '../models/ai_search_create_instances_response400.dart';import '../models/ai_search_create_instances_response_result.dart';import '../models/ai_search_delete_instances_response404.dart';import '../models/ai_search_delete_instances_response_result.dart';import '../models/ai_search_fetch_instances_response400.dart';import '../models/ai_search_fetch_instances_response_result.dart';import '../models/ai_search_instance_chat_completion_request.dart';import '../models/ai_search_instance_chat_completion_response.dart';import '../models/ai_search_instance_chat_completion_response404.dart';import '../models/ai_search_instance_search_request.dart';import '../models/ai_search_instance_search_response404.dart';import '../models/ai_search_instance_search_response_result.dart';import '../models/ai_search_list_instances_order_by.dart';import '../models/ai_search_list_instances_order_by_direction.dart';import '../models/ai_search_list_instances_response400.dart';import '../models/ai_search_list_instances_response_result.dart';import '../models/ai_search_stats_response404.dart';import '../models/ai_search_stats_response_result.dart';import '../models/ai_search_update_instances_request.dart';import '../models/ai_search_update_instances_response400.dart';import '../models/ai_search_update_instances_response_result.dart';/// AiSearchInstancesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AiSearchInstancesApi with ApiExecutor {const AiSearchInstancesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List instances.
///
/// `GET /accounts/{account_id}/ai-search/instances`
Future<ApiResult<List<AiSearchListInstancesResponseResult>, AiSearchListInstancesResponse400>> aiSearchListInstances({required String accountId, int? page, int? perPage, String? search, AiSearchListInstancesOrderBy? orderBy, AiSearchListInstancesOrderByDirection? orderByDirection, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (search != null) {
  queryParameters['search'] = search;
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => AiSearchListInstancesResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return AiSearchListInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create new instances.
///
/// Create a new instances.
///
/// `POST /accounts/{account_id}/ai-search/instances`
Future<ApiResult<AiSearchCreateInstancesResponseResult, AiSearchCreateInstancesResponse400>> aiSearchCreateInstances({required String accountId, AiSearchCreateInstancesRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AiSearchCreateInstancesResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchCreateInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read instances.
///
/// `GET /accounts/{account_id}/ai-search/instances/{id}`
Future<ApiResult<AiSearchFetchInstancesResponseResult, AiSearchFetchInstancesResponse400>> aiSearchFetchInstances({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AiSearchFetchInstancesResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchFetchInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update instances.
///
/// `PUT /accounts/{account_id}/ai-search/instances/{id}`
Future<ApiResult<AiSearchUpdateInstancesResponseResult, AiSearchUpdateInstancesResponse400>> aiSearchUpdateInstances({required String accountId, required String id, AiSearchUpdateInstancesRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances/${Uri.encodeComponent(id)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AiSearchUpdateInstancesResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchUpdateInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete instances.
///
/// `DELETE /accounts/{account_id}/ai-search/instances/{id}`
Future<ApiResult<AiSearchDeleteInstancesResponseResult, AiSearchDeleteInstancesResponse404>> aiSearchDeleteInstances({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AiSearchDeleteInstancesResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchDeleteInstancesResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Chat Completions
///
/// Performs a chat completion request against an AI Search instance, using indexed content as context for generating responses.
///
/// `POST /accounts/{account_id}/ai-search/instances/{id}/chat/completions`
Future<ApiResult<AiSearchInstanceChatCompletionResponse, AiSearchInstanceChatCompletionResponse404>> aiSearchInstanceChatCompletion({required String id, required String accountId, AiSearchInstanceChatCompletionRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances/${Uri.encodeComponent(id)}/chat/completions',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AiSearchInstanceChatCompletionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchInstanceChatCompletionResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Search
///
/// Executes a semantic search query against an AI Search instance to find relevant indexed content.
///
/// `POST /accounts/{account_id}/ai-search/instances/{id}/search`
Future<ApiResult<AiSearchInstanceSearchResponseResult, AiSearchInstanceSearchResponse404>> aiSearchInstanceSearch({required String id, required String accountId, AiSearchInstanceSearchRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances/${Uri.encodeComponent(id)}/search',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AiSearchInstanceSearchResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchInstanceSearchResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Stats
///
/// Retrieves usage statistics for AI Search instances.
///
/// `GET /accounts/{account_id}/ai-search/instances/{id}/stats`
Future<ApiResult<AiSearchStatsResponseResult, AiSearchStatsResponse404>> aiSearchStats({required String id, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai-search/instances/${Uri.encodeComponent(id)}/stats',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AiSearchStatsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AiSearchStatsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
