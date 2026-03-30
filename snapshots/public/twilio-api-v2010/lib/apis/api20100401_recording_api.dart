// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_recording.dart';import '../models/list_recording_response.dart';/// Api20100401RecordingApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401RecordingApi with ApiExecutor {const Api20100401RecordingApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch an instance of a recording
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Recordings/{Sid}.json`
Future<ApiResult<AccountRecording, Never>> fetchRecording({required String accountSid, required String sid, bool? includeSoftDeleted, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (includeSoftDeleted != null) {
  queryParameters['IncludeSoftDeleted'] = includeSoftDeleted.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Recordings/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountRecording.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a recording from your account
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/Recordings/{Sid}.json`
Future<ApiResult<void, Never>> deleteRecording({required String accountSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Recordings/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve a list of recordings belonging to the account used to make the request
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Recordings.json`
Future<ApiResult<ListRecordingResponse, Never>> listRecording({required String accountSid, DateTime? dateCreated, DateTime? dateCreatedBefore, DateTime? dateCreatedAfter, String? callSid, String? conferenceSid, bool? includeSoftDeleted, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (dateCreated != null) {
  queryParameters['DateCreated'] = dateCreated.toString();
}
if (dateCreatedBefore != null) {
  queryParameters['DateCreated<'] = dateCreatedBefore.toString();
}
if (dateCreatedAfter != null) {
  queryParameters['DateCreated>'] = dateCreatedAfter.toString();
}
if (callSid != null) {
  queryParameters['CallSid'] = callSid;
}
if (conferenceSid != null) {
  queryParameters['ConferenceSid'] = conferenceSid;
}
if (includeSoftDeleted != null) {
  queryParameters['IncludeSoftDeleted'] = includeSoftDeleted.toString();
}
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
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Recordings.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListRecordingResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
