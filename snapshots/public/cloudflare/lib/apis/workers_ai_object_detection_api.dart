// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/workers_ai_post_run_cf_facebook_nonomni_detr_resnet50_response400.dart';/// WorkersAiObjectDetectionApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkersAiObjectDetectionApi with ApiExecutor {const WorkersAiObjectDetectionApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Execute @cf/facebook/nonomni-detr-resnet-50 model.
///
/// Runs inference on the @cf/facebook/nonomni-detr-resnet-50 model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/facebook/nonomni-detr-resnet-50`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfFacebookNonomniDetrResnet50Response400>> workersAiPostRunCfFacebookNonomniDetrResnet50({required String accountId, String? queueRequest, String? tags, Uint8List? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (queueRequest != null) queryParameters['queueRequest'] = queueRequest;
if (tags != null) queryParameters['tags'] = tags;

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/octet-stream';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/facebook/nonomni-detr-resnet-50',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: body,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return (jsonDecode(response.body) as Map<String, dynamic>).map((k, v) => MapEntry(k, v));
  },
  onError: (response) {
    return WorkersAiPostRunCfFacebookNonomniDetrResnet50Response400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
