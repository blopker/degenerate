// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_conference_conference_recording.dart';import '../models/list_conference_recording_response.dart';import '../models/update_conference_recording_request.dart';/// Api20100401ConferenceRecordingApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401ConferenceRecordingApi with ApiExecutor {const Api20100401ConferenceRecordingApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieve a list of recordings belonging to the call used to make the request
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Conferences/{ConferenceSid}/Recordings.json`
Future<ApiResult<ListConferenceRecordingResponse, Never>> listConferenceRecording({required String accountSid, required String conferenceSid, String? dateCreated, String? dateCreatedBefore, String? dateCreatedAfter, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (dateCreated != null) {
  queryParameters['DateCreated'] = dateCreated;
}
if (dateCreatedBefore != null) {
  queryParameters['DateCreated<'] = dateCreatedBefore;
}
if (dateCreatedAfter != null) {
  queryParameters['DateCreated>'] = dateCreatedAfter;
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
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Conferences/${Uri.encodeComponent(conferenceSid)}/Recordings.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListConferenceRecordingResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch an instance of a recording for a call
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Conferences/{ConferenceSid}/Recordings/{Sid}.json`
Future<ApiResult<AccountConferenceConferenceRecording, Never>> fetchConferenceRecording({required String accountSid, required String conferenceSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Conferences/${Uri.encodeComponent(conferenceSid)}/Recordings/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountConferenceConferenceRecording.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Changes the status of the recording to paused, stopped, or in-progress. Note: To use `Twilio.CURRENT`, pass it as recording sid.
///
/// `POST /2010-04-01/Accounts/{AccountSid}/Conferences/{ConferenceSid}/Recordings/{Sid}.json`
Future<ApiResult<AccountConferenceConferenceRecording, Never>> updateConferenceRecording({required String accountSid, required String conferenceSid, required String sid, UpdateConferenceRecordingRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Conferences/${Uri.encodeComponent(conferenceSid)}/Recordings/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  body: body == null ? null : <String>[
    'Status=${Uri.encodeQueryComponent(body.status.toJson())}',
    if (body.pauseBehavior case final pauseBehavior$?)
      'PauseBehavior=${Uri.encodeQueryComponent(pauseBehavior$)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountConferenceConferenceRecording.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a recording from your account
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/Conferences/{ConferenceSid}/Recordings/{Sid}.json`
Future<ApiResult<void, Never>> deleteConferenceRecording({required String accountSid, required String conferenceSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Conferences/${Uri.encodeComponent(conferenceSid)}/Recordings/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
