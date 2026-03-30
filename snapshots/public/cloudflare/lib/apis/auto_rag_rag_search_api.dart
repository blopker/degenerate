// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/autorag_config_ai_search_request.dart';import '../models/autorag_config_ai_search_response404.dart';import '../models/autorag_config_ai_search_response_result.dart';import '../models/autorag_config_search_request.dart';import '../models/autorag_config_search_response404.dart';import '../models/autorag_config_search_response_result.dart';/// AutoRagRagSearchApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AutoRagRagSearchApi with ApiExecutor {const AutoRagRagSearchApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// AI Search
///
/// `POST /accounts/{account_id}/autorag/rags/{id}/ai-search`
Future<ApiResult<AutoragConfigAiSearchResponseResult, AutoragConfigAiSearchResponse404>> autoragConfigAiSearch({required String id, required String accountId, AutoragConfigAiSearchRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/autorag/rags/${Uri.encodeComponent(id)}/ai-search',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AutoragConfigAiSearchResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AutoragConfigAiSearchResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Search
///
/// `POST /accounts/{account_id}/autorag/rags/{id}/search`
Future<ApiResult<AutoragConfigSearchResponseResult, AutoragConfigSearchResponse404>> autoragConfigSearch({required String id, required String accountId, AutoragConfigSearchRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/autorag/rags/${Uri.encodeComponent(id)}/search',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return AutoragConfigSearchResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return AutoragConfigSearchResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
