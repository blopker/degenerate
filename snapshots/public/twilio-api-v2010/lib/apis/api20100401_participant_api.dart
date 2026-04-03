// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_conference_participant.dart';import '../models/create_participant_request.dart';import '../models/list_participant_response.dart';import '../models/update_participant_request.dart';/// Api20100401ParticipantApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401ParticipantApi with ApiExecutor {const Api20100401ParticipantApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch an instance of a participant
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Conferences/{ConferenceSid}/Participants/{CallSid}.json`
Future<ApiResult<AccountConferenceParticipant, Never>> fetchParticipant({required String accountSid, required String conferenceSid, required String callSid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Conferences/${Uri.encodeComponent(conferenceSid)}/Participants/${Uri.encodeComponent(callSid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountConferenceParticipant.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update the properties of the participant
///
/// `POST /2010-04-01/Accounts/{AccountSid}/Conferences/{ConferenceSid}/Participants/{CallSid}.json`
Future<ApiResult<AccountConferenceParticipant, Never>> updateParticipant({required String accountSid, required String conferenceSid, required String callSid, UpdateParticipantRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Conferences/${Uri.encodeComponent(conferenceSid)}/Participants/${Uri.encodeComponent(callSid)}.json',
  headers: headers,
  body: body == null ? null : <String>[
    if (body.muted case final muted$?)
      'Muted=${Uri.encodeQueryComponent(muted$.toString())}',
    if (body.hold case final hold$?)
      'Hold=${Uri.encodeQueryComponent(hold$.toString())}',
    if (body.holdUrl case final holdUrl$?)
      'HoldUrl=${Uri.encodeQueryComponent(holdUrl$.toString())}',
    if (body.holdMethod case final holdMethod$?)
      'HoldMethod=${Uri.encodeQueryComponent(holdMethod$.toJson())}',
    if (body.announceUrl case final announceUrl$?)
      'AnnounceUrl=${Uri.encodeQueryComponent(announceUrl$.toString())}',
    if (body.announceMethod case final announceMethod$?)
      'AnnounceMethod=${Uri.encodeQueryComponent(announceMethod$.toJson())}',
    if (body.waitUrl case final waitUrl$?)
      'WaitUrl=${Uri.encodeQueryComponent(waitUrl$.toString())}',
    if (body.waitMethod case final waitMethod$?)
      'WaitMethod=${Uri.encodeQueryComponent(waitMethod$.toJson())}',
    if (body.beepOnExit case final beepOnExit$?)
      'BeepOnExit=${Uri.encodeQueryComponent(beepOnExit$.toString())}',
    if (body.endConferenceOnExit case final endConferenceOnExit$?)
      'EndConferenceOnExit=${Uri.encodeQueryComponent(endConferenceOnExit$.toString())}',
    if (body.coaching case final coaching$?)
      'Coaching=${Uri.encodeQueryComponent(coaching$.toString())}',
    if (body.callSidToCoach case final callSidToCoach$?)
      'CallSidToCoach=${Uri.encodeQueryComponent(callSidToCoach$)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountConferenceParticipant.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Kick a participant from a given conference
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/Conferences/{ConferenceSid}/Participants/{CallSid}.json`
Future<ApiResult<void, Never>> deleteParticipant({required String accountSid, required String conferenceSid, required String callSid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Conferences/${Uri.encodeComponent(conferenceSid)}/Participants/${Uri.encodeComponent(callSid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve a list of participants belonging to the account used to make the request
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Conferences/{ConferenceSid}/Participants.json`
Future<ApiResult<ListParticipantResponse, Never>> listParticipant({required String accountSid, required String conferenceSid, bool? muted, bool? hold, bool? coaching, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (muted != null) {
  queryParameters['Muted'] = muted.toString();
}
if (hold != null) {
  queryParameters['Hold'] = hold.toString();
}
if (coaching != null) {
  queryParameters['Coaching'] = coaching.toString();
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
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Conferences/${Uri.encodeComponent(conferenceSid)}/Participants.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListParticipantResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// 
///
/// `POST /2010-04-01/Accounts/{AccountSid}/Conferences/{ConferenceSid}/Participants.json`
Future<ApiResult<AccountConferenceParticipant, Never>> createParticipant({required String accountSid, required String conferenceSid, CreateParticipantRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Conferences/${Uri.encodeComponent(conferenceSid)}/Participants.json',
  headers: headers,
  body: body == null ? null : <String>[
    'From=${Uri.encodeQueryComponent(body.from)}',
    'To=${Uri.encodeQueryComponent(body.to)}',
    if (body.statusCallback case final statusCallback$?)
      'StatusCallback=${Uri.encodeQueryComponent(statusCallback$.toString())}',
    if (body.statusCallbackMethod case final statusCallbackMethod$?)
      'StatusCallbackMethod=${Uri.encodeQueryComponent(statusCallbackMethod$.toJson())}',
    if (body.statusCallbackEvent case final statusCallbackEvent$?)
      'StatusCallbackEvent=${Uri.encodeQueryComponent(statusCallbackEvent$.toString())}',
    if (body.label case final label$?)
      'Label=${Uri.encodeQueryComponent(label$)}',
    if (body.timeout case final timeout$?)
      'Timeout=${Uri.encodeQueryComponent(timeout$.toString())}',
    if (body.record case final record$?)
      'Record=${Uri.encodeQueryComponent(record$.toString())}',
    if (body.muted case final muted$?)
      'Muted=${Uri.encodeQueryComponent(muted$.toString())}',
    if (body.beep case final beep$?)
      'Beep=${Uri.encodeQueryComponent(beep$)}',
    if (body.startConferenceOnEnter case final startConferenceOnEnter$?)
      'StartConferenceOnEnter=${Uri.encodeQueryComponent(startConferenceOnEnter$.toString())}',
    if (body.endConferenceOnExit case final endConferenceOnExit$?)
      'EndConferenceOnExit=${Uri.encodeQueryComponent(endConferenceOnExit$.toString())}',
    if (body.waitUrl case final waitUrl$?)
      'WaitUrl=${Uri.encodeQueryComponent(waitUrl$.toString())}',
    if (body.waitMethod case final waitMethod$?)
      'WaitMethod=${Uri.encodeQueryComponent(waitMethod$.toJson())}',
    if (body.earlyMedia case final earlyMedia$?)
      'EarlyMedia=${Uri.encodeQueryComponent(earlyMedia$.toString())}',
    if (body.maxParticipants case final maxParticipants$?)
      'MaxParticipants=${Uri.encodeQueryComponent(maxParticipants$.toString())}',
    if (body.conferenceRecord case final conferenceRecord$?)
      'ConferenceRecord=${Uri.encodeQueryComponent(conferenceRecord$)}',
    if (body.conferenceTrim case final conferenceTrim$?)
      'ConferenceTrim=${Uri.encodeQueryComponent(conferenceTrim$)}',
    if (body.conferenceStatusCallback case final conferenceStatusCallback$?)
      'ConferenceStatusCallback=${Uri.encodeQueryComponent(conferenceStatusCallback$.toString())}',
    if (body.conferenceStatusCallbackMethod case final conferenceStatusCallbackMethod$?)
      'ConferenceStatusCallbackMethod=${Uri.encodeQueryComponent(conferenceStatusCallbackMethod$.toJson())}',
    if (body.conferenceStatusCallbackEvent case final conferenceStatusCallbackEvent$?)
      'ConferenceStatusCallbackEvent=${Uri.encodeQueryComponent(conferenceStatusCallbackEvent$.toString())}',
    if (body.recordingChannels case final recordingChannels$?)
      'RecordingChannels=${Uri.encodeQueryComponent(recordingChannels$)}',
    if (body.recordingStatusCallback case final recordingStatusCallback$?)
      'RecordingStatusCallback=${Uri.encodeQueryComponent(recordingStatusCallback$.toString())}',
    if (body.recordingStatusCallbackMethod case final recordingStatusCallbackMethod$?)
      'RecordingStatusCallbackMethod=${Uri.encodeQueryComponent(recordingStatusCallbackMethod$.toJson())}',
    if (body.sipAuthUsername case final sipAuthUsername$?)
      'SipAuthUsername=${Uri.encodeQueryComponent(sipAuthUsername$)}',
    if (body.sipAuthPassword case final sipAuthPassword$?)
      'SipAuthPassword=${Uri.encodeQueryComponent(sipAuthPassword$)}',
    if (body.region case final region$?)
      'Region=${Uri.encodeQueryComponent(region$)}',
    if (body.conferenceRecordingStatusCallback case final conferenceRecordingStatusCallback$?)
      'ConferenceRecordingStatusCallback=${Uri.encodeQueryComponent(conferenceRecordingStatusCallback$.toString())}',
    if (body.conferenceRecordingStatusCallbackMethod case final conferenceRecordingStatusCallbackMethod$?)
      'ConferenceRecordingStatusCallbackMethod=${Uri.encodeQueryComponent(conferenceRecordingStatusCallbackMethod$.toJson())}',
    if (body.recordingStatusCallbackEvent case final recordingStatusCallbackEvent$?)
      'RecordingStatusCallbackEvent=${Uri.encodeQueryComponent(recordingStatusCallbackEvent$.toString())}',
    if (body.conferenceRecordingStatusCallbackEvent case final conferenceRecordingStatusCallbackEvent$?)
      'ConferenceRecordingStatusCallbackEvent=${Uri.encodeQueryComponent(conferenceRecordingStatusCallbackEvent$.toString())}',
    if (body.coaching case final coaching$?)
      'Coaching=${Uri.encodeQueryComponent(coaching$.toString())}',
    if (body.callSidToCoach case final callSidToCoach$?)
      'CallSidToCoach=${Uri.encodeQueryComponent(callSidToCoach$)}',
    if (body.jitterBufferSize case final jitterBufferSize$?)
      'JitterBufferSize=${Uri.encodeQueryComponent(jitterBufferSize$)}',
    if (body.byoc case final byoc$?)
      'Byoc=${Uri.encodeQueryComponent(byoc$)}',
    if (body.callerId case final callerId$?)
      'CallerId=${Uri.encodeQueryComponent(callerId$)}',
    if (body.callReason case final callReason$?)
      'CallReason=${Uri.encodeQueryComponent(callReason$)}',
    if (body.recordingTrack case final recordingTrack$?)
      'RecordingTrack=${Uri.encodeQueryComponent(recordingTrack$)}',
    if (body.timeLimit case final timeLimit$?)
      'TimeLimit=${Uri.encodeQueryComponent(timeLimit$.toString())}',
    if (body.machineDetection case final machineDetection$?)
      'MachineDetection=${Uri.encodeQueryComponent(machineDetection$)}',
    if (body.machineDetectionTimeout case final machineDetectionTimeout$?)
      'MachineDetectionTimeout=${Uri.encodeQueryComponent(machineDetectionTimeout$.toString())}',
    if (body.machineDetectionSpeechThreshold case final machineDetectionSpeechThreshold$?)
      'MachineDetectionSpeechThreshold=${Uri.encodeQueryComponent(machineDetectionSpeechThreshold$.toString())}',
    if (body.machineDetectionSpeechEndThreshold case final machineDetectionSpeechEndThreshold$?)
      'MachineDetectionSpeechEndThreshold=${Uri.encodeQueryComponent(machineDetectionSpeechEndThreshold$.toString())}',
    if (body.machineDetectionSilenceTimeout case final machineDetectionSilenceTimeout$?)
      'MachineDetectionSilenceTimeout=${Uri.encodeQueryComponent(machineDetectionSilenceTimeout$.toString())}',
    if (body.amdStatusCallback case final amdStatusCallback$?)
      'AmdStatusCallback=${Uri.encodeQueryComponent(amdStatusCallback$.toString())}',
    if (body.amdStatusCallbackMethod case final amdStatusCallbackMethod$?)
      'AmdStatusCallbackMethod=${Uri.encodeQueryComponent(amdStatusCallbackMethod$.toJson())}',
    if (body.trim case final trim$?)
      'Trim=${Uri.encodeQueryComponent(trim$)}',
    if (body.callToken case final callToken$?)
      'CallToken=${Uri.encodeQueryComponent(callToken$)}',
    if (body.clientNotificationUrl case final clientNotificationUrl$?)
      'ClientNotificationUrl=${Uri.encodeQueryComponent(clientNotificationUrl$.toString())}',
    if (body.callerDisplayName case final callerDisplayName$?)
      'CallerDisplayName=${Uri.encodeQueryComponent(callerDisplayName$)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountConferenceParticipant.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
