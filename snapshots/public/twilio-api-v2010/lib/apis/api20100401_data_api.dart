// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_recording_recording_add_on_result_recording_add_on_result_payload_recording_add_on_result_payload_data.dart';/// Api20100401DataApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401DataApi with ApiExecutor {const Api20100401DataApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch an instance of a result payload
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Recordings/{ReferenceSid}/AddOnResults/{AddOnResultSid}/Payloads/{PayloadSid}/Data.json`
Future<ApiResult<void, AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData>> fetchRecordingAddOnResultPayloadData({required String accountSid, required String referenceSid, required String addOnResultSid, required String payloadSid, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Recordings/${Uri.encodeComponent(referenceSid)}/AddOnResults/${Uri.encodeComponent(addOnResultSid)}/Payloads/${Uri.encodeComponent(payloadSid)}/Data.json',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (_) {}, onError: (response) {switch (response.statusCode) {
case 307:
final json = jsonDecode(response.body);
return  AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
