// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_call.dart';import '../models/call_enum_status.dart';import '../models/create_call_request.dart';import '../models/list_call_response.dart';import '../models/update_call_request.dart';/// Api20100401CallApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401CallApi with ApiExecutor {const Api20100401CallApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieves a collection of calls made to and from your account
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Calls.json`
Future<ApiResult<ListCallResponse, Never>> listCall({required String accountSid, String? to, String? from, String? parentCallSid, CallEnumStatus? status, DateTime? startTime, DateTime? startTimeBefore, DateTime? startTimeAfter, DateTime? endTime, DateTime? endTimeBefore, DateTime? endTimeAfter, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (to != null) queryParameters['To'] = to;
if (from != null) queryParameters['From'] = from;
if (parentCallSid != null) queryParameters['ParentCallSid'] = parentCallSid;
if (status != null) queryParameters['Status'] = status.toJson();
if (startTime != null) queryParameters['StartTime'] = startTime.toString();
if (startTimeBefore != null) queryParameters['StartTime<'] = startTimeBefore.toString();
if (startTimeAfter != null) queryParameters['StartTime>'] = startTimeAfter.toString();
if (endTime != null) queryParameters['EndTime'] = endTime.toString();
if (endTimeBefore != null) queryParameters['EndTime<'] = endTimeBefore.toString();
if (endTimeAfter != null) queryParameters['EndTime>'] = endTimeAfter.toString();
if (pageSize != null) queryParameters['PageSize'] = pageSize.toString();
if (page != null) queryParameters['Page'] = page.toString();
if (pageToken != null) queryParameters['PageToken'] = pageToken;

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Calls.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListCallResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new outgoing call to phones, SIP-enabled endpoints or Twilio Client connections
///
/// `POST /2010-04-01/Accounts/{AccountSid}/Calls.json`
Future<ApiResult<AccountCall, Never>> createCall({required String accountSid, CreateCallRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Calls.json',
  headers: headers,
  body: body == null ? null : [
    'To=${Uri.encodeQueryComponent(body.to)}',
    'From=${Uri.encodeQueryComponent(body.from)}',
    if (body.method case final method$?)
      'Method=${Uri.encodeQueryComponent(method$.toJson())}',
    if (body.fallbackUrl case final fallbackUrl$?)
      'FallbackUrl=${Uri.encodeQueryComponent(fallbackUrl$.toString())}',
    if (body.fallbackMethod case final fallbackMethod$?)
      'FallbackMethod=${Uri.encodeQueryComponent(fallbackMethod$.toJson())}',
    if (body.statusCallback case final statusCallback$?)
      'StatusCallback=${Uri.encodeQueryComponent(statusCallback$.toString())}',
    if (body.statusCallbackEvent case final statusCallbackEvent$?)
      'StatusCallbackEvent=${Uri.encodeQueryComponent(statusCallbackEvent$.toString())}',
    if (body.statusCallbackMethod case final statusCallbackMethod$?)
      'StatusCallbackMethod=${Uri.encodeQueryComponent(statusCallbackMethod$.toJson())}',
    if (body.sendDigits case final sendDigits$?)
      'SendDigits=${Uri.encodeQueryComponent(sendDigits$)}',
    if (body.timeout case final timeout$?)
      'Timeout=${Uri.encodeQueryComponent(timeout$.toString())}',
    if (body.record case final record$?)
      'Record=${Uri.encodeQueryComponent(record$.toString())}',
    if (body.recordingChannels case final recordingChannels$?)
      'RecordingChannels=${Uri.encodeQueryComponent(recordingChannels$)}',
    if (body.recordingStatusCallback case final recordingStatusCallback$?)
      'RecordingStatusCallback=${Uri.encodeQueryComponent(recordingStatusCallback$)}',
    if (body.recordingStatusCallbackMethod case final recordingStatusCallbackMethod$?)
      'RecordingStatusCallbackMethod=${Uri.encodeQueryComponent(recordingStatusCallbackMethod$.toJson())}',
    if (body.sipAuthUsername case final sipAuthUsername$?)
      'SipAuthUsername=${Uri.encodeQueryComponent(sipAuthUsername$)}',
    if (body.sipAuthPassword case final sipAuthPassword$?)
      'SipAuthPassword=${Uri.encodeQueryComponent(sipAuthPassword$)}',
    if (body.machineDetection case final machineDetection$?)
      'MachineDetection=${Uri.encodeQueryComponent(machineDetection$)}',
    if (body.machineDetectionTimeout case final machineDetectionTimeout$?)
      'MachineDetectionTimeout=${Uri.encodeQueryComponent(machineDetectionTimeout$.toString())}',
    if (body.recordingStatusCallbackEvent case final recordingStatusCallbackEvent$?)
      'RecordingStatusCallbackEvent=${Uri.encodeQueryComponent(recordingStatusCallbackEvent$.toString())}',
    if (body.trim case final trim$?)
      'Trim=${Uri.encodeQueryComponent(trim$)}',
    if (body.callerId case final callerId$?)
      'CallerId=${Uri.encodeQueryComponent(callerId$)}',
    if (body.machineDetectionSpeechThreshold case final machineDetectionSpeechThreshold$?)
      'MachineDetectionSpeechThreshold=${Uri.encodeQueryComponent(machineDetectionSpeechThreshold$.toString())}',
    if (body.machineDetectionSpeechEndThreshold case final machineDetectionSpeechEndThreshold$?)
      'MachineDetectionSpeechEndThreshold=${Uri.encodeQueryComponent(machineDetectionSpeechEndThreshold$.toString())}',
    if (body.machineDetectionSilenceTimeout case final machineDetectionSilenceTimeout$?)
      'MachineDetectionSilenceTimeout=${Uri.encodeQueryComponent(machineDetectionSilenceTimeout$.toString())}',
    if (body.asyncAmd case final asyncAmd$?)
      'AsyncAmd=${Uri.encodeQueryComponent(asyncAmd$)}',
    if (body.asyncAmdStatusCallback case final asyncAmdStatusCallback$?)
      'AsyncAmdStatusCallback=${Uri.encodeQueryComponent(asyncAmdStatusCallback$.toString())}',
    if (body.asyncAmdStatusCallbackMethod case final asyncAmdStatusCallbackMethod$?)
      'AsyncAmdStatusCallbackMethod=${Uri.encodeQueryComponent(asyncAmdStatusCallbackMethod$.toJson())}',
    if (body.byoc case final byoc$?)
      'Byoc=${Uri.encodeQueryComponent(byoc$)}',
    if (body.callReason case final callReason$?)
      'CallReason=${Uri.encodeQueryComponent(callReason$)}',
    if (body.callToken case final callToken$?)
      'CallToken=${Uri.encodeQueryComponent(callToken$)}',
    if (body.recordingTrack case final recordingTrack$?)
      'RecordingTrack=${Uri.encodeQueryComponent(recordingTrack$)}',
    if (body.timeLimit case final timeLimit$?)
      'TimeLimit=${Uri.encodeQueryComponent(timeLimit$.toString())}',
    if (body.clientNotificationUrl case final clientNotificationUrl$?)
      'ClientNotificationUrl=${Uri.encodeQueryComponent(clientNotificationUrl$.toString())}',
    if (body.url case final url$?)
      'Url=${Uri.encodeQueryComponent(url$.toString())}',
    if (body.twiml case final twiml$?)
      'Twiml=${Uri.encodeQueryComponent(twiml$)}',
    if (body.applicationSid case final applicationSid$?)
      'ApplicationSid=${Uri.encodeQueryComponent(applicationSid$)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountCall.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch the call specified by the provided Call SID
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Calls/{Sid}.json`
Future<ApiResult<AccountCall, Never>> fetchCall({required String accountSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Calls/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountCall.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Initiates a call redirect or terminates a call
///
/// `POST /2010-04-01/Accounts/{AccountSid}/Calls/{Sid}.json`
Future<ApiResult<AccountCall, Never>> updateCall({required String accountSid, required String sid, UpdateCallRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Calls/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  body: body == null ? null : [
    if (body.url case final url$?)
      'Url=${Uri.encodeQueryComponent(url$.toString())}',
    if (body.method case final method$?)
      'Method=${Uri.encodeQueryComponent(method$.toJson())}',
    if (body.status case final status$?)
      'Status=${Uri.encodeQueryComponent(status$.toJson())}',
    if (body.fallbackUrl case final fallbackUrl$?)
      'FallbackUrl=${Uri.encodeQueryComponent(fallbackUrl$.toString())}',
    if (body.fallbackMethod case final fallbackMethod$?)
      'FallbackMethod=${Uri.encodeQueryComponent(fallbackMethod$.toJson())}',
    if (body.statusCallback case final statusCallback$?)
      'StatusCallback=${Uri.encodeQueryComponent(statusCallback$.toString())}',
    if (body.statusCallbackMethod case final statusCallbackMethod$?)
      'StatusCallbackMethod=${Uri.encodeQueryComponent(statusCallbackMethod$.toJson())}',
    if (body.twiml case final twiml$?)
      'Twiml=${Uri.encodeQueryComponent(twiml$)}',
    if (body.timeLimit case final timeLimit$?)
      'TimeLimit=${Uri.encodeQueryComponent(timeLimit$.toString())}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountCall.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a Call record from your account. Once the record is deleted, it will no longer appear in the API and Account Portal logs.
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/Calls/{Sid}.json`
Future<ApiResult<void, Never>> deleteCall({required String accountSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Calls/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
