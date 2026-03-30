// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/stream_create_input_request.dart';import '../models/stream_create_output_request.dart';import '../models/stream_include_counts.dart';import '../models/stream_live_input.dart';import '../models/stream_live_input_identifier.dart';import '../models/stream_live_input_response_collection_result.dart';import '../models/stream_output.dart';import '../models/stream_output_identifier.dart';import '../models/stream_schemas_identifier.dart';import '../models/stream_update_input_request.dart';import '../models/stream_update_output_request.dart';/// StreamLiveInputsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class StreamLiveInputsApi with ApiExecutor {const StreamLiveInputsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List live inputs
///
/// Lists the live inputs created for an account. To get the credentials needed to stream to a specific live input, request a single live input.
///
/// `GET /accounts/{account_id}/stream/live_inputs`
Future<ApiResult<StreamLiveInputResponseCollectionResult?, Never>> streamLiveInputsListLiveInputs({required StreamSchemasIdentifier accountId, StreamIncludeCounts? includeCounts, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (includeCounts != null) {
  queryParameters['include_counts'] = includeCounts.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/live_inputs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamLiveInputResponseCollectionResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create a live input
///
/// Creates a live input, and returns credentials that you or your users can use to stream live video to Cloudflare Stream.
///
/// `POST /accounts/{account_id}/stream/live_inputs`
Future<ApiResult<StreamLiveInput?, Never>> streamLiveInputsCreateALiveInput({required StreamSchemasIdentifier accountId, required StreamCreateInputRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/live_inputs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamLiveInput.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Retrieve a live input
///
/// Retrieves details of an existing live input.
///
/// `GET /accounts/{account_id}/stream/live_inputs/{live_input_identifier}`
Future<ApiResult<StreamLiveInput?, Never>> streamLiveInputsRetrieveALiveInput({required StreamLiveInputIdentifier liveInputIdentifier, required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/live_inputs/${Uri.encodeComponent(liveInputIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamLiveInput.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update a live input
///
/// Updates a specified live input.
///
/// `PUT /accounts/{account_id}/stream/live_inputs/{live_input_identifier}`
Future<ApiResult<StreamLiveInput?, Never>> streamLiveInputsUpdateALiveInput({required StreamLiveInputIdentifier liveInputIdentifier, required StreamSchemasIdentifier accountId, required StreamUpdateInputRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/live_inputs/${Uri.encodeComponent(liveInputIdentifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamLiveInput.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete a live input
///
/// Prevents a live input from being streamed to and makes the live input inaccessible to any future API calls.
///
/// `DELETE /accounts/{account_id}/stream/live_inputs/{live_input_identifier}`
Future<ApiResult<void, Never>> streamLiveInputsDeleteALiveInput({required StreamLiveInputIdentifier liveInputIdentifier, required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/live_inputs/${Uri.encodeComponent(liveInputIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Disable a live input
///
/// Prevents a live input from being streamed to and makes the live input inaccessible to any future API calls until enabled.
///
/// `POST /accounts/{account_id}/stream/live_inputs/{live_input_identifier}/disable`
Future<ApiResult<StreamLiveInput?, Never>> streamLiveInputsDisableALiveInput({required StreamLiveInputIdentifier liveInputIdentifier, required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/live_inputs/${Uri.encodeComponent(liveInputIdentifier.toString())}/disable',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamLiveInput.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Enable a live input
///
/// Allows a live input to be streamed to and makes the live input accessible to any future API calls.
///
/// `POST /accounts/{account_id}/stream/live_inputs/{live_input_identifier}/enable`
Future<ApiResult<StreamLiveInput?, Never>> streamLiveInputsEnableALiveInput({required StreamLiveInputIdentifier liveInputIdentifier, required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/live_inputs/${Uri.encodeComponent(liveInputIdentifier.toString())}/enable',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamLiveInput.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List all outputs associated with a specified live input
///
/// Retrieves all outputs associated with a specified live input.
///
/// `GET /accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs`
Future<ApiResult<List<StreamOutput>?, Never>> streamLiveInputsListAllOutputsAssociatedWithASpecifiedLiveInput({required StreamLiveInputIdentifier liveInputIdentifier, required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/live_inputs/${Uri.encodeComponent(liveInputIdentifier.toString())}/outputs',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => StreamOutput.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a new output, connected to a live input
///
/// Creates a new output that can be used to simulcast or restream live video to other RTMP or SRT destinations. Outputs are always linked to a specific live input — one live input can have many outputs.
///
/// `POST /accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs`
Future<ApiResult<StreamOutput?, Never>> streamLiveInputsCreateANewOutputConnectedToALiveInput({required StreamLiveInputIdentifier liveInputIdentifier, required StreamSchemasIdentifier accountId, required StreamCreateOutputRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/live_inputs/${Uri.encodeComponent(liveInputIdentifier.toString())}/outputs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamOutput.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update an output
///
/// Updates the state of an output.
///
/// `PUT /accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs/{output_identifier}`
Future<ApiResult<StreamOutput?, Never>> streamLiveInputsUpdateAnOutput({required StreamOutputIdentifier outputIdentifier, required StreamLiveInputIdentifier liveInputIdentifier, required StreamSchemasIdentifier accountId, required StreamUpdateOutputRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/live_inputs/${Uri.encodeComponent(liveInputIdentifier.toString())}/outputs/${Uri.encodeComponent(outputIdentifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamOutput.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete an output
///
/// Deletes an output and removes it from the associated live input.
///
/// `DELETE /accounts/{account_id}/stream/live_inputs/{live_input_identifier}/outputs/{output_identifier}`
Future<ApiResult<void, Never>> streamLiveInputsDeleteAnOutput({required StreamOutputIdentifier outputIdentifier, required StreamLiveInputIdentifier liveInputIdentifier, required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/live_inputs/${Uri.encodeComponent(liveInputIdentifier.toString())}/outputs/${Uri.encodeComponent(outputIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
