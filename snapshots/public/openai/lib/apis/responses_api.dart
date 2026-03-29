// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/error_model.dart';import '../models/include_enum.dart';import '../models/list_input_items_order.dart';import '../models/model_response_properties.dart';import '../models/response_item_list.dart';import '../models/response_stream_event.dart';/// ResponsesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ResponsesApi with ApiExecutor {const ResponsesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Creates a model response. Provide [text](/docs/guides/text) or
/// [image](/docs/guides/images) inputs to generate [text](/docs/guides/text)
/// or [JSON](/docs/guides/structured-outputs) outputs. Have the model call
/// your own [custom code](/docs/guides/function-calling) or use built-in
/// [tools](/docs/guides/tools) like [web search](/docs/guides/tools-web-search)
/// or [file search](/docs/guides/tools-file-search) to use your own data
/// as input for the model's response.
/// 
///
/// `POST /responses`
Future<ApiResult<ModelResponseProperties, Never>> createResponse({required ModelResponseProperties body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/responses',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ModelResponseProperties.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Retrieves a model response with the given ID.
/// 
///
/// `GET /responses/{response_id}`
Future<ApiResult<ModelResponseProperties, Never>> getResponse({required String responseId, List<IncludeEnum>? include, bool? stream, int? startingAfter, bool? includeObfuscation, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (include != null) {
for (final item in include) {
  queryParametersList.add(ApiQueryParameter(name: 'include', value: item.toJson(), allowReserved: false));
}
}
if (stream != null) queryParameters['stream'] = stream.toString();
if (startingAfter != null) queryParameters['starting_after'] = startingAfter.toString();
if (includeObfuscation != null) queryParameters['include_obfuscation'] = includeObfuscation.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/responses/${Uri.encodeComponent(responseId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ModelResponseProperties.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deletes a model response with the given ID.
/// 
///
/// `DELETE /responses/{response_id}`
Future<ApiResult<void, ErrorModel>> deleteResponse({required String responseId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/responses/${Uri.encodeComponent(responseId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Cancels a model response with the given ID. Only responses created with
/// the `background` parameter set to `true` can be cancelled.
/// [Learn more](/docs/guides/background).
/// 
///
/// `POST /responses/{response_id}/cancel`
Future<ApiResult<ModelResponseProperties, ErrorModel>> cancelResponse({required String responseId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/responses/${Uri.encodeComponent(responseId)}/cancel',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ModelResponseProperties.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Returns a list of input items for a given response.
///
/// `GET /responses/{response_id}/input_items`
Future<ApiResult<ResponseItemList, Never>> listInputItems({required String responseId, int? limit, ListInputItemsOrder? order, String? after, List<IncludeEnum>? include, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) queryParameters['limit'] = limit.toString();
if (order != null) queryParameters['order'] = order.toJson();
if (after != null) queryParameters['after'] = after;
if (include != null) {
for (final item in include) {
  queryParametersList.add(ApiQueryParameter(name: 'include', value: item.toJson(), allowReserved: false));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/responses/${Uri.encodeComponent(responseId)}/input_items',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseItemList.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates a model response. Provide [text](/docs/guides/text) or
/// [image](/docs/guides/images) inputs to generate [text](/docs/guides/text)
/// or [JSON](/docs/guides/structured-outputs) outputs. Have the model call
/// your own [custom code](/docs/guides/function-calling) or use built-in
/// [tools](/docs/guides/tools) like [web search](/docs/guides/tools-web-search)
/// or [file search](/docs/guides/tools-file-search) to use your own data
/// as input for the model's response.
///  (streaming)
///
/// `POST /responses`
Stream<ResponseStreamEvent> createResponseStream({required ModelResponseProperties body, RequestOptions? options, }) { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/responses',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return executeStreaming(
  request,
  onEvent: (data) {
    return ResponseStreamEvent.fromJson(jsonDecode(data) as Map<String, dynamic>);
  },
);
 } 
 }
