// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/workers_ai_post_run_cf_baai_bge_reranker_base_request.dart';import '../models/workers_ai_post_run_cf_baai_bge_reranker_base_response400.dart';import '../models/workers_ai_post_run_cf_huggingface_distilbert_sst2_int8_request.dart';import '../models/workers_ai_post_run_cf_huggingface_distilbert_sst2_int8_response400.dart';/// WorkersAiTextClassificationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkersAiTextClassificationApi with ApiExecutor {const WorkersAiTextClassificationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Execute @cf/baai/bge-reranker-base model.
///
/// Runs inference on the @cf/baai/bge-reranker-base model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/baai/bge-reranker-base`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfBaaiBgeRerankerBaseResponse400>> workersAiPostRunCfBaaiBgeRerankerBase({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfBaaiBgeRerankerBaseRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (queueRequest != null) {
  queryParameters['queueRequest'] = queueRequest;
}
if (tags != null) {
  queryParameters['tags'] = tags;
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/baai/bge-reranker-base',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return jsonDecode(response.body) as Map<String, dynamic>;
  },
  onError: (response) {
    return WorkersAiPostRunCfBaaiBgeRerankerBaseResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Execute @cf/huggingface/distilbert-sst-2-int8 model.
///
/// Runs inference on the @cf/huggingface/distilbert-sst-2-int8 model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/huggingface/distilbert-sst-2-int8`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400>> workersAiPostRunCfHuggingfaceDistilbertSst2Int8({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Request? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (queueRequest != null) {
  queryParameters['queueRequest'] = queueRequest;
}
if (tags != null) {
  queryParameters['tags'] = tags;
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/huggingface/distilbert-sst-2-int8',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return jsonDecode(response.body) as Map<String, dynamic>;
  },
  onError: (response) {
    return WorkersAiPostRunCfHuggingfaceDistilbertSst2Int8Response400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
