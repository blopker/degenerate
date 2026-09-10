// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/n5_img2img_request.dart';import '../models/n5_img2img_response400.dart';import '../models/n5_inpainting_request.dart';import '../models/n5_inpainting_response400.dart';import '../models/workers_ai_post_run_cf_black_forest_labs_flux1_schnell_request.dart';import '../models/workers_ai_post_run_cf_black_forest_labs_flux1_schnell_response400.dart';import '../models/workers_ai_post_run_cf_black_forest_labs_flux2_dev_request.dart';import '../models/workers_ai_post_run_cf_black_forest_labs_flux2_dev_response400.dart';import '../models/workers_ai_post_run_cf_black_forest_labs_flux2_klein4b_request.dart';import '../models/workers_ai_post_run_cf_black_forest_labs_flux2_klein4b_response400.dart';import '../models/workers_ai_post_run_cf_black_forest_labs_flux2_klein9b_request.dart';import '../models/workers_ai_post_run_cf_black_forest_labs_flux2_klein9b_response400.dart';import '../models/workers_ai_post_run_cf_bytedance_stable_diffusion_xl_lightning_request.dart';import '../models/workers_ai_post_run_cf_bytedance_stable_diffusion_xl_lightning_response400.dart';import '../models/workers_ai_post_run_cf_leonardo_lucid_origin_request.dart';import '../models/workers_ai_post_run_cf_leonardo_lucid_origin_response400.dart';import '../models/workers_ai_post_run_cf_leonardo_phoenix10_request.dart';import '../models/workers_ai_post_run_cf_leonardo_phoenix10_response400.dart';import '../models/workers_ai_post_run_cf_lykon_dreamshaper8_lcm_request.dart';import '../models/workers_ai_post_run_cf_lykon_dreamshaper8_lcm_response400.dart';import '../models/workers_ai_post_run_cf_stabilityai_stable_diffusion_xl_base10_request.dart';import '../models/workers_ai_post_run_cf_stabilityai_stable_diffusion_xl_base10_response400.dart';import '../models/workers_ai_post_websocket_run_cf_sven_test_pipe_http_response400.dart';/// WorkersAiTextToImageApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkersAiTextToImageApi with ApiExecutor {const WorkersAiTextToImageApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Execute @cf/black-forest-labs/flux-1-schnell model.
///
/// Runs inference on the @cf/black-forest-labs/flux-1-schnell model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/black-forest-labs/flux-1-schnell`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfBlackForestLabsFlux1SchnellResponse400>> workersAiPostRunCfBlackForestLabsFlux1Schnell({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfBlackForestLabsFlux1SchnellRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/black-forest-labs/flux-1-schnell',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return json as Map<String, dynamic>;
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorkersAiPostRunCfBlackForestLabsFlux1SchnellResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Execute @cf/black-forest-labs/flux-2-dev model.
///
/// Runs inference on the @cf/black-forest-labs/flux-2-dev model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/black-forest-labs/flux-2-dev`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400>> workersAiPostRunCfBlackForestLabsFlux2Dev({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfBlackForestLabsFlux2DevRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/black-forest-labs/flux-2-dev',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return json as Map<String, dynamic>;
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorkersAiPostRunCfBlackForestLabsFlux2DevResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Execute @cf/black-forest-labs/flux-2-klein-4b model.
///
/// Runs inference on the @cf/black-forest-labs/flux-2-klein-4b model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/black-forest-labs/flux-2-klein-4b`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfBlackForestLabsFlux2Klein4bResponse400>> workersAiPostRunCfBlackForestLabsFlux2Klein4b({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfBlackForestLabsFlux2Klein4bRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/black-forest-labs/flux-2-klein-4b',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return json as Map<String, dynamic>;
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorkersAiPostRunCfBlackForestLabsFlux2Klein4bResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Execute @cf/black-forest-labs/flux-2-klein-9b model.
///
/// Runs inference on the @cf/black-forest-labs/flux-2-klein-9b model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/black-forest-labs/flux-2-klein-9b`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfBlackForestLabsFlux2Klein9bResponse400>> workersAiPostRunCfBlackForestLabsFlux2Klein9b({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfBlackForestLabsFlux2Klein9bRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/black-forest-labs/flux-2-klein-9b',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return json as Map<String, dynamic>;
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorkersAiPostRunCfBlackForestLabsFlux2Klein9bResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Execute @cf/bytedance/stable-diffusion-xl-lightning model.
///
/// Runs inference on the @cf/bytedance/stable-diffusion-xl-lightning model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/bytedance/stable-diffusion-xl-lightning`
Future<ApiResult<OneOf2<Map<String, dynamic>, Uint8List>, WorkersAiPostRunCfBytedanceStableDiffusionXlLightningResponse400>> workersAiPostRunCfBytedanceStableDiffusionXlLightning({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfBytedanceStableDiffusionXlLightningRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/bytedance/stable-diffusion-xl-lightning',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);
}
if (responseMediaTypeMatches(contentType, 'image/png')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return OneOf2<Map<String, dynamic>, Uint8List>.b(value);
}
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);

  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorkersAiPostRunCfBytedanceStableDiffusionXlLightningResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Execute @cf/leonardo/lucid-origin model.
///
/// Runs inference on the @cf/leonardo/lucid-origin model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/leonardo/lucid-origin`
Future<ApiResult<Map<String, dynamic>, WorkersAiPostRunCfLeonardoLucidOriginResponse400>> workersAiPostRunCfLeonardoLucidOrigin({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfLeonardoLucidOriginRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/leonardo/lucid-origin',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return json as Map<String, dynamic>;
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorkersAiPostRunCfLeonardoLucidOriginResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Execute @cf/leonardo/phoenix-1.0 model.
///
/// Runs inference on the @cf/leonardo/phoenix-1.0 model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/leonardo/phoenix-1.0`
Future<ApiResult<OneOf2<Map<String, dynamic>, Uint8List>, WorkersAiPostRunCfLeonardoPhoenix10Response400>> workersAiPostRunCfLeonardoPhoenix10({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfLeonardoPhoenix10Request? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/leonardo/phoenix-1.0',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);
}
if (responseMediaTypeMatches(contentType, 'image/jpeg')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return OneOf2<Map<String, dynamic>, Uint8List>.b(value);
}
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);

  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorkersAiPostRunCfLeonardoPhoenix10Response400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Execute @cf/lykon/dreamshaper-8-lcm model.
///
/// Runs inference on the @cf/lykon/dreamshaper-8-lcm model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/lykon/dreamshaper-8-lcm`
Future<ApiResult<OneOf2<Map<String, dynamic>, Uint8List>, WorkersAiPostRunCfLykonDreamshaper8LcmResponse400>> workersAiPostRunCfLykonDreamshaper8Lcm({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfLykonDreamshaper8LcmRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/lykon/dreamshaper-8-lcm',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);
}
if (responseMediaTypeMatches(contentType, 'image/png')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return OneOf2<Map<String, dynamic>, Uint8List>.b(value);
}
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);

  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorkersAiPostRunCfLykonDreamshaper8LcmResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Execute @cf/runwayml/stable-diffusion-v1-5-img2img model.
///
/// Runs inference on the @cf/runwayml/stable-diffusion-v1-5-img2img model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/runwayml/stable-diffusion-v1-5-img2img`
Future<ApiResult<OneOf2<Map<String, dynamic>, Uint8List>, $5Img2imgResponse400>> workersAiPostRunCfRunwaymlStableDiffusionV15Img2img({required String accountId, String? queueRequest, String? tags, $5Img2imgRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/runwayml/stable-diffusion-v1-5-img2img',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);
}
if (responseMediaTypeMatches(contentType, 'image/png')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return OneOf2<Map<String, dynamic>, Uint8List>.b(value);
}
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);

  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return $5Img2imgResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Execute @cf/runwayml/stable-diffusion-v1-5-inpainting model.
///
/// Runs inference on the @cf/runwayml/stable-diffusion-v1-5-inpainting model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/runwayml/stable-diffusion-v1-5-inpainting`
Future<ApiResult<OneOf2<Map<String, dynamic>, Uint8List>, $5InpaintingResponse400>> workersAiPostRunCfRunwaymlStableDiffusionV15Inpainting({required String accountId, String? queueRequest, String? tags, $5InpaintingRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/runwayml/stable-diffusion-v1-5-inpainting',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);
}
if (responseMediaTypeMatches(contentType, 'image/png')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return OneOf2<Map<String, dynamic>, Uint8List>.b(value);
}
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);

  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return $5InpaintingResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Execute @cf/stabilityai/stable-diffusion-xl-base-1.0 model.
///
/// Runs inference on the @cf/stabilityai/stable-diffusion-xl-base-1.0 model.
///
/// `POST /accounts/{account_id}/ai/run/@cf/stabilityai/stable-diffusion-xl-base-1.0`
Future<ApiResult<OneOf2<Map<String, dynamic>, Uint8List>, WorkersAiPostRunCfStabilityaiStableDiffusionXlBase10Response400>> workersAiPostRunCfStabilityaiStableDiffusionXlBase10({required String accountId, String? queueRequest, String? tags, WorkersAiPostRunCfStabilityaiStableDiffusionXlBase10Request? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/stabilityai/stable-diffusion-xl-base-1.0',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);
}
if (responseMediaTypeMatches(contentType, 'image/png')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return OneOf2<Map<String, dynamic>, Uint8List>.b(value);
}
final json = jsonDecode(response.body);
return OneOf2<Map<String, dynamic>, Uint8List>.a(json as Map<String, dynamic>);

  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorkersAiPostRunCfStabilityaiStableDiffusionXlBase10Response400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Open Websocket connection with @cf/sven/test-pipe-http model.
///
/// Opens a WebSocket connection to stream inference results from the @cf/sven/test-pipe-http model.
///
/// `GET /accounts/{account_id}/ai/run/@cf/sven/test-pipe-http`
Future<ApiResult<void, WorkersAiPostWebsocketRunCfSvenTestPipeHttpResponse400>> workersAiPostWebsocketRunCfSvenTestPipeHttp({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/ai/run/@cf/sven/test-pipe-http',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorkersAiPostWebsocketRunCfSvenTestPipeHttpResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
