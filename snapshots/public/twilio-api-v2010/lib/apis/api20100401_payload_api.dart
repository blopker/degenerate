// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_recording_recording_add_on_result_recording_add_on_result_payload.dart';import '../models/list_recording_add_on_result_payload_response.dart';/// Api20100401PayloadApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401PayloadApi with ApiExecutor {const Api20100401PayloadApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch an instance of a result payload
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Recordings/{ReferenceSid}/AddOnResults/{AddOnResultSid}/Payloads/{Sid}.json`
Future<ApiResult<AccountRecordingRecordingAddOnResultRecordingAddOnResultPayload, Never>> fetchRecordingAddOnResultPayload({required String accountSid, required String referenceSid, required String addOnResultSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Recordings/${Uri.encodeComponent(referenceSid)}/AddOnResults/${Uri.encodeComponent(addOnResultSid)}/Payloads/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountRecordingRecordingAddOnResultRecordingAddOnResultPayload.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a payload from the result along with all associated Data
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/Recordings/{ReferenceSid}/AddOnResults/{AddOnResultSid}/Payloads/{Sid}.json`
Future<ApiResult<void, Never>> deleteRecordingAddOnResultPayload({required String accountSid, required String referenceSid, required String addOnResultSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Recordings/${Uri.encodeComponent(referenceSid)}/AddOnResults/${Uri.encodeComponent(addOnResultSid)}/Payloads/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve a list of payloads belonging to the AddOnResult
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Recordings/{ReferenceSid}/AddOnResults/{AddOnResultSid}/Payloads.json`
Future<ApiResult<ListRecordingAddOnResultPayloadResponse, Never>> listRecordingAddOnResultPayload({required String accountSid, required String referenceSid, required String addOnResultSid, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (pageSize != null) {
  queryParameters['PageSize'] = pageSize.toString();
}
if (page != null) {
  queryParameters['Page'] = page.toString();
}
if (pageToken != null) {
  queryParameters['PageToken'] = pageToken;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Recordings/${Uri.encodeComponent(referenceSid)}/AddOnResults/${Uri.encodeComponent(addOnResultSid)}/Payloads.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListRecordingAddOnResultPayloadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
