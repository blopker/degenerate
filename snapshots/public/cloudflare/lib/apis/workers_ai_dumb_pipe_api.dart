// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/workers_ai_post_websocket_run_cf_pipecat_ai_smart_turn_error.dart';import '../models/workers_ai_post_websocket_run_cf_pipecat_ai_smart_turn_error2.dart';import '../models/workers_ai_post_websocket_run_cf_test_hello_world_cog_error.dart';/// WorkersAiDumbPipeApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkersAiDumbPipeApi with ApiExecutor {const WorkersAiDumbPipeApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Open Websocket connection with @cf/pipecat-ai/smart-turn-v2 model.
///
/// Opens a WebSocket connection to stream inference results from the @cf/pipecat-ai/smart-turn-v2 model.
///
/// `GET /accounts/{account_id}/ai/run/@cf/pipecat-ai/smart-turn-v2`
Future<ApiResult<void, WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError>> workersAiPostWebsocketRunCfPipecatAiSmartTurnV2({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/pipecat-ai/smart-turn-v2',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError.parse(response);
  },
);
 } 
/// Open Websocket connection with @cf/pipecat-ai/smart-turn-v3 model.
///
/// Opens a WebSocket connection to stream inference results from the @cf/pipecat-ai/smart-turn-v3 model.
///
/// `GET /accounts/{account_id}/ai/run/@cf/pipecat-ai/smart-turn-v3`
Future<ApiResult<void, WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2>> workersAiPostWebsocketRunCfPipecatAiSmartTurnV3({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/pipecat-ai/smart-turn-v3',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2.parse(response);
  },
);
 } 
/// Open Websocket connection with @cf/test/hello-world-cog model.
///
/// Opens a WebSocket connection to stream inference results from the @cf/test/hello-world-cog model.
///
/// `GET /accounts/{account_id}/ai/run/@cf/test/hello-world-cog`
Future<ApiResult<void, WorkersAiPostWebsocketRunCfTestHelloWorldCogError>> workersAiPostWebsocketRunCfTestHelloWorldCog({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/test/hello-world-cog',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return WorkersAiPostWebsocketRunCfTestHelloWorldCogError.parse(response);
  },
);
 } 
 }
