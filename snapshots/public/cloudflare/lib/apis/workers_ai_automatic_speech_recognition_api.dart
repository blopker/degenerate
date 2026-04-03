// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/turbo_request.dart';import '../models/turbo_response400.dart';import '../models/workers_ai_post_run_cf_deepgram_flux_request.dart';import '../models/workers_ai_post_run_cf_deepgram_flux_response400.dart';import '../models/workers_ai_post_run_cf_deepgram_nova3_request.dart';import '../models/workers_ai_post_run_cf_deepgram_nova3_response400.dart';import '../models/workers_ai_post_run_cf_openai_whisper_response400.dart';import '../models/workers_ai_post_run_cf_openai_whisper_tiny_en_response400.dart';import '../models/workers_ai_post_websocket_run_cf_deepgram_flux_response400.dart';import '../models/workers_ai_post_websocket_run_cf_deepgram_nova3_internal_response400.dart';import '../models/workers_ai_post_websocket_run_cf_deepgram_nova3_response400.dart';/// WorkersAiAutomaticSpeechRecognitionApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkersAiAutomaticSpeechRecognitionApi with ApiExecutor {const WorkersAiAutomaticSpeechRecognitionApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Open Websocket connection with @cf/deepgram/flux model.
///
/// Opens a WebSocket connection to stream inference results from the @cf/deepgram/flux model.
///
/// `GET /accounts/{account_id}/ai/run/@cf/deepgram/flux`
Future<ApiResult<void, WorkersAiPostWebsocketRunCfDeepgramFluxResponse400>> workersAiPostWebsocketRunCfDeepgramFlux({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/deepgram/flux',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return WorkersAiPostWebsocketRunCfDeepgramFluxResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Execute @cf/deepgram/flux model.
///
/// Runs inference on the @cf/deepgram/flux model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/deepgram/flux`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfDeepgramFluxResponse400>> workersAiPostRunCfDeepgramFlux({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfDeepgramFluxRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/deepgram/flux',
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
    return WorkersAiPostRunCfDeepgramFluxResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Open Websocket connection with @cf/deepgram/nova-3 model.
///
/// Opens a WebSocket connection to stream inference results from the @cf/deepgram/nova-3 model.
///
/// `GET /accounts/{account_id}/ai/run/@cf/deepgram/nova-3`
Future<ApiResult<void, WorkersAiPostWebsocketRunCfDeepgramNova3Response400>> workersAiPostWebsocketRunCfDeepgramNova3({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/deepgram/nova-3',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return WorkersAiPostWebsocketRunCfDeepgramNova3Response400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Execute @cf/deepgram/nova-3 model.
///
/// Runs inference on the @cf/deepgram/nova-3 model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/deepgram/nova-3`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfDeepgramNova3Response400>> workersAiPostRunCfDeepgramNova3({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfDeepgramNova3Request? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/deepgram/nova-3',
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
    return WorkersAiPostRunCfDeepgramNova3Response400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Open Websocket connection with @cf/deepgram/nova-3-internal model.
///
/// Opens a WebSocket connection to stream inference results from the @cf/deepgram/nova-3-internal model.
///
/// `GET /accounts/{account_id}/ai/run/@cf/deepgram/nova-3-internal`
Future<ApiResult<void, WorkersAiPostWebsocketRunCfDeepgramNova3InternalResponse400>> workersAiPostWebsocketRunCfDeepgramNova3Internal({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/deepgram/nova-3-internal',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return WorkersAiPostWebsocketRunCfDeepgramNova3InternalResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Execute @cf/openai/whisper model.
///
/// Runs inference on the @cf/openai/whisper model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/openai/whisper`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfOpenaiWhisperResponse400>> workersAiPostRunCfOpenaiWhisper({required String accountId, String? queueRequest, String? tags, Uint8List? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (queueRequest != null) {
  queryParameters['queueRequest'] = queueRequest;
}
if (tags != null) {
  queryParameters['tags'] = tags;
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/octet-stream';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/openai/whisper',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: body,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return jsonDecode(response.body) as Map<String, dynamic>;
  },
  onError: (response) {
    return WorkersAiPostRunCfOpenaiWhisperResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Execute @cf/openai/whisper-large-v3-turbo model.
///
/// Runs inference on the @cf/openai/whisper-large-v3-turbo model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/openai/whisper-large-v3-turbo`
Future<ApiResult<Map<String, dynamic>, TurboResponse400>> workersAiPostRunCfOpenaiWhisperLargeV3Turbo({required String accountId, String? queueRequest, String? tags, TurboRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/openai/whisper-large-v3-turbo',
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
    return TurboResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Execute @cf/openai/whisper-tiny-en model.
///
/// Runs inference on the @cf/openai/whisper-tiny-en model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/openai/whisper-tiny-en`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfOpenaiWhisperTinyEnResponse400>> workersAiPostRunCfOpenaiWhisperTinyEn({required String accountId, String? queueRequest, String? tags, Uint8List? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (queueRequest != null) {
  queryParameters['queueRequest'] = queueRequest;
}
if (tags != null) {
  queryParameters['tags'] = tags;
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/octet-stream';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/openai/whisper-tiny-en',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: body,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return jsonDecode(response.body) as Map<String, dynamic>;
  },
  onError: (response) {
    return WorkersAiPostRunCfOpenaiWhisperTinyEnResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
