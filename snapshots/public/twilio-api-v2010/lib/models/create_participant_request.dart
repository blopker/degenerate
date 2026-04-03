// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The HTTP method we should use to call `status_callback`. Can be: `GET` and `POST` and defaults to `POST`.
@immutable final class CreateParticipantRequestStatusCallbackMethod {const CreateParticipantRequestStatusCallbackMethod._(this.value);

factory CreateParticipantRequestStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateParticipantRequestStatusCallbackMethod._(json),
}; }

static const CreateParticipantRequestStatusCallbackMethod $get = CreateParticipantRequestStatusCallbackMethod._('GET');

static const CreateParticipantRequestStatusCallbackMethod post = CreateParticipantRequestStatusCallbackMethod._('POST');

static const List<CreateParticipantRequestStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateParticipantRequestStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateParticipantRequestStatusCallbackMethod($value)'; } 
 }
/// The HTTP method we should use to call `wait_url`. Can be `GET` or `POST` and the default is `POST`. When using a static audio file, this should be `GET` so that we can cache the file.
@immutable final class CreateParticipantRequestWaitMethod {const CreateParticipantRequestWaitMethod._(this.value);

factory CreateParticipantRequestWaitMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateParticipantRequestWaitMethod._(json),
}; }

static const CreateParticipantRequestWaitMethod $get = CreateParticipantRequestWaitMethod._('GET');

static const CreateParticipantRequestWaitMethod post = CreateParticipantRequestWaitMethod._('POST');

static const List<CreateParticipantRequestWaitMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateParticipantRequestWaitMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateParticipantRequestWaitMethod($value)'; } 
 }
/// The HTTP method we should use to call `conference_status_callback`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class CreateParticipantRequestConferenceStatusCallbackMethod {const CreateParticipantRequestConferenceStatusCallbackMethod._(this.value);

factory CreateParticipantRequestConferenceStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateParticipantRequestConferenceStatusCallbackMethod._(json),
}; }

static const CreateParticipantRequestConferenceStatusCallbackMethod $get = CreateParticipantRequestConferenceStatusCallbackMethod._('GET');

static const CreateParticipantRequestConferenceStatusCallbackMethod post = CreateParticipantRequestConferenceStatusCallbackMethod._('POST');

static const List<CreateParticipantRequestConferenceStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateParticipantRequestConferenceStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateParticipantRequestConferenceStatusCallbackMethod($value)'; } 
 }
/// The HTTP method we should use when we call `recording_status_callback`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class CreateParticipantRequestRecordingStatusCallbackMethod {const CreateParticipantRequestRecordingStatusCallbackMethod._(this.value);

factory CreateParticipantRequestRecordingStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateParticipantRequestRecordingStatusCallbackMethod._(json),
}; }

static const CreateParticipantRequestRecordingStatusCallbackMethod $get = CreateParticipantRequestRecordingStatusCallbackMethod._('GET');

static const CreateParticipantRequestRecordingStatusCallbackMethod post = CreateParticipantRequestRecordingStatusCallbackMethod._('POST');

static const List<CreateParticipantRequestRecordingStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateParticipantRequestRecordingStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateParticipantRequestRecordingStatusCallbackMethod($value)'; } 
 }
/// The HTTP method we should use to call `conference_recording_status_callback`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class CreateParticipantRequestConferenceRecordingStatusCallbackMethod {const CreateParticipantRequestConferenceRecordingStatusCallbackMethod._(this.value);

factory CreateParticipantRequestConferenceRecordingStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateParticipantRequestConferenceRecordingStatusCallbackMethod._(json),
}; }

static const CreateParticipantRequestConferenceRecordingStatusCallbackMethod $get = CreateParticipantRequestConferenceRecordingStatusCallbackMethod._('GET');

static const CreateParticipantRequestConferenceRecordingStatusCallbackMethod post = CreateParticipantRequestConferenceRecordingStatusCallbackMethod._('POST');

static const List<CreateParticipantRequestConferenceRecordingStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateParticipantRequestConferenceRecordingStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateParticipantRequestConferenceRecordingStatusCallbackMethod($value)'; } 
 }
/// The HTTP method we should use when calling the `amd_status_callback` URL. Can be: `GET` or `POST` and the default is `POST`.
@immutable final class CreateParticipantRequestAmdStatusCallbackMethod {const CreateParticipantRequestAmdStatusCallbackMethod._(this.value);

factory CreateParticipantRequestAmdStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateParticipantRequestAmdStatusCallbackMethod._(json),
}; }

static const CreateParticipantRequestAmdStatusCallbackMethod $get = CreateParticipantRequestAmdStatusCallbackMethod._('GET');

static const CreateParticipantRequestAmdStatusCallbackMethod post = CreateParticipantRequestAmdStatusCallbackMethod._('POST');

static const List<CreateParticipantRequestAmdStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateParticipantRequestAmdStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateParticipantRequestAmdStatusCallbackMethod($value)'; } 
 }
@immutable final class CreateParticipantRequest {const CreateParticipantRequest({required this.from, required this.to, this.conferenceRecord, this.statusCallbackMethod, this.statusCallbackEvent, this.label, this.timeout, this.record, this.muted, this.beep, this.startConferenceOnEnter, this.endConferenceOnExit, this.waitUrl, this.waitMethod, this.earlyMedia, this.maxParticipants, this.statusCallback, this.conferenceTrim, this.conferenceStatusCallback, this.conferenceStatusCallbackMethod, this.conferenceStatusCallbackEvent, this.recordingChannels, this.recordingStatusCallback, this.recordingStatusCallbackMethod, this.sipAuthUsername, this.sipAuthPassword, this.region, this.conferenceRecordingStatusCallback, this.conferenceRecordingStatusCallbackMethod, this.recordingStatusCallbackEvent, this.conferenceRecordingStatusCallbackEvent, this.coaching, this.callerDisplayName, this.jitterBufferSize, this.byoc, this.callerId, this.callReason, this.recordingTrack, this.timeLimit, this.machineDetection, this.machineDetectionTimeout, this.machineDetectionSpeechThreshold, this.machineDetectionSpeechEndThreshold, this.machineDetectionSilenceTimeout, this.amdStatusCallback, this.amdStatusCallbackMethod, this.trim, this.callToken, this.clientNotificationUrl, this.callSidToCoach, });

factory CreateParticipantRequest.fromJson(Map<String, dynamic> json) { return CreateParticipantRequest(
  from: json['From'] as String,
  to: json['To'] as String,
  statusCallback: json['StatusCallback'] != null ? Uri.parse(json['StatusCallback'] as String) : null,
  statusCallbackMethod: json['StatusCallbackMethod'] != null ? CreateParticipantRequestStatusCallbackMethod.fromJson(json['StatusCallbackMethod'] as String) : null,
  statusCallbackEvent: (json['StatusCallbackEvent'] as List<dynamic>?)?.map((e) => e as String).toList(),
  label: json['Label'] as String?,
  timeout: json['Timeout'] != null ? (json['Timeout'] as num).toInt() : null,
  record: json['Record'] as bool?,
  muted: json['Muted'] as bool?,
  beep: json['Beep'] as String?,
  startConferenceOnEnter: json['StartConferenceOnEnter'] as bool?,
  endConferenceOnExit: json['EndConferenceOnExit'] as bool?,
  waitUrl: json['WaitUrl'] != null ? Uri.parse(json['WaitUrl'] as String) : null,
  waitMethod: json['WaitMethod'] != null ? CreateParticipantRequestWaitMethod.fromJson(json['WaitMethod'] as String) : null,
  earlyMedia: json['EarlyMedia'] as bool?,
  maxParticipants: json['MaxParticipants'] != null ? (json['MaxParticipants'] as num).toInt() : null,
  conferenceRecord: json['ConferenceRecord'] as String?,
  conferenceTrim: json['ConferenceTrim'] as String?,
  conferenceStatusCallback: json['ConferenceStatusCallback'] != null ? Uri.parse(json['ConferenceStatusCallback'] as String) : null,
  conferenceStatusCallbackMethod: json['ConferenceStatusCallbackMethod'] != null ? CreateParticipantRequestConferenceStatusCallbackMethod.fromJson(json['ConferenceStatusCallbackMethod'] as String) : null,
  conferenceStatusCallbackEvent: (json['ConferenceStatusCallbackEvent'] as List<dynamic>?)?.map((e) => e as String).toList(),
  recordingChannels: json['RecordingChannels'] as String?,
  recordingStatusCallback: json['RecordingStatusCallback'] != null ? Uri.parse(json['RecordingStatusCallback'] as String) : null,
  recordingStatusCallbackMethod: json['RecordingStatusCallbackMethod'] != null ? CreateParticipantRequestRecordingStatusCallbackMethod.fromJson(json['RecordingStatusCallbackMethod'] as String) : null,
  sipAuthUsername: json['SipAuthUsername'] as String?,
  sipAuthPassword: json['SipAuthPassword'] as String?,
  region: json['Region'] as String?,
  conferenceRecordingStatusCallback: json['ConferenceRecordingStatusCallback'] != null ? Uri.parse(json['ConferenceRecordingStatusCallback'] as String) : null,
  conferenceRecordingStatusCallbackMethod: json['ConferenceRecordingStatusCallbackMethod'] != null ? CreateParticipantRequestConferenceRecordingStatusCallbackMethod.fromJson(json['ConferenceRecordingStatusCallbackMethod'] as String) : null,
  recordingStatusCallbackEvent: (json['RecordingStatusCallbackEvent'] as List<dynamic>?)?.map((e) => e as String).toList(),
  conferenceRecordingStatusCallbackEvent: (json['ConferenceRecordingStatusCallbackEvent'] as List<dynamic>?)?.map((e) => e as String).toList(),
  coaching: json['Coaching'] as bool?,
  callSidToCoach: json['CallSidToCoach'] as String?,
  jitterBufferSize: json['JitterBufferSize'] as String?,
  byoc: json['Byoc'] as String?,
  callerId: json['CallerId'] as String?,
  callReason: json['CallReason'] as String?,
  recordingTrack: json['RecordingTrack'] as String?,
  timeLimit: json['TimeLimit'] != null ? (json['TimeLimit'] as num).toInt() : null,
  machineDetection: json['MachineDetection'] as String?,
  machineDetectionTimeout: json['MachineDetectionTimeout'] != null ? (json['MachineDetectionTimeout'] as num).toInt() : null,
  machineDetectionSpeechThreshold: json['MachineDetectionSpeechThreshold'] != null ? (json['MachineDetectionSpeechThreshold'] as num).toInt() : null,
  machineDetectionSpeechEndThreshold: json['MachineDetectionSpeechEndThreshold'] != null ? (json['MachineDetectionSpeechEndThreshold'] as num).toInt() : null,
  machineDetectionSilenceTimeout: json['MachineDetectionSilenceTimeout'] != null ? (json['MachineDetectionSilenceTimeout'] as num).toInt() : null,
  amdStatusCallback: json['AmdStatusCallback'] != null ? Uri.parse(json['AmdStatusCallback'] as String) : null,
  amdStatusCallbackMethod: json['AmdStatusCallbackMethod'] != null ? CreateParticipantRequestAmdStatusCallbackMethod.fromJson(json['AmdStatusCallbackMethod'] as String) : null,
  trim: json['Trim'] as String?,
  callToken: json['CallToken'] as String?,
  clientNotificationUrl: json['ClientNotificationUrl'] != null ? Uri.parse(json['ClientNotificationUrl'] as String) : null,
  callerDisplayName: json['CallerDisplayName'] as String?,
); }

/// The phone number, Client identifier, or username portion of SIP address that made this call. Phone numbers are in [E.164](https://www.twilio.com/docs/glossary/what-e164) format (e.g., +16175551212). Client identifiers are formatted `client:name`. If using a phone number, it must be a Twilio number or a Verified [outgoing caller id](https://www.twilio.com/docs/voice/api/outgoing-caller-ids) for your account. If the `to` parameter is a phone number, `from` must also be a phone number. If `to` is sip address, this value of `from` should be a username portion to be used to populate the P-Asserted-Identity header that is passed to the SIP endpoint.
final String from;

/// The phone number, SIP address, Client, TwiML App identifier that received this call. Phone numbers are in [E.164](https://www.twilio.com/docs/glossary/what-e164) format (e.g., +16175551212). SIP addresses are formatted as `sip:name@company.com`. Client identifiers are formatted `client:name`. TwiML App identifiers are formatted `app:<APP_SID>`. [Custom parameters](https://www.twilio.com/docs/voice/api/conference-participant-resource#custom-parameters) may also be specified.
final String to;

/// The URL we should call using the `status_callback_method` to send status information to your application.
final Uri? statusCallback;

/// The HTTP method we should use to call `status_callback`. Can be: `GET` and `POST` and defaults to `POST`.
final CreateParticipantRequestStatusCallbackMethod? statusCallbackMethod;

/// The conference state changes that should generate a call to `status_callback`. Can be: `initiated`, `ringing`, `answered`, and `completed`. Separate multiple values with a space. The default value is `completed`.
final List<String>? statusCallbackEvent;

/// A label for this participant. If one is supplied, it may subsequently be used to fetch, update or delete the participant.
final String? label;

/// The number of seconds that we should allow the phone to ring before assuming there is no answer. Can be an integer between `5` and `600`, inclusive. The default value is `60`. We always add a 5-second timeout buffer to outgoing calls, so  value of 10 would result in an actual timeout that was closer to 15 seconds.
final int? timeout;

/// Whether to record the participant and their conferences, including the time between conferences. Can be `true` or `false` and the default is `false`.
final bool? record;

/// Whether the agent is muted in the conference. Can be `true` or `false` and the default is `false`.
final bool? muted;

/// Whether to play a notification beep to the conference when the participant joins. Can be: `true`, `false`, `onEnter`, or `onExit`. The default value is `true`.
final String? beep;

/// Whether to start the conference when the participant joins, if it has not already started. Can be: `true` or `false` and the default is `true`. If `false` and the conference has not started, the participant is muted and hears background music until another participant starts the conference.
final bool? startConferenceOnEnter;

/// Whether to end the conference when the participant leaves. Can be: `true` or `false` and defaults to `false`.
final bool? endConferenceOnExit;

/// The URL that Twilio calls using the `wait_method` before the conference has started. The URL may return an MP3 file, a WAV file, or a TwiML document. The default value is the URL of our standard hold music. If you do not want anything to play while waiting for the conference to start, specify an empty string by setting `wait_url` to `''`. For more details on the allowable verbs within the `waitUrl`, see the `waitUrl` attribute in the [`<Conference>` TwiML instruction](https://www.twilio.com/docs/voice/twiml/conference#attributes-waiturl).
final Uri? waitUrl;

/// The HTTP method we should use to call `wait_url`. Can be `GET` or `POST` and the default is `POST`. When using a static audio file, this should be `GET` so that we can cache the file.
final CreateParticipantRequestWaitMethod? waitMethod;

/// Whether to allow an agent to hear the state of the outbound call, including ringing or disconnect messages. Can be: `true` or `false` and defaults to `true`.
final bool? earlyMedia;

/// The maximum number of participants in the conference. Can be a positive integer from `2` to `250`. The default value is `250`.
final int? maxParticipants;

/// Whether to record the conference the participant is joining. Can be: `true`, `false`, `record-from-start`, and `do-not-record`. The default value is `false`.
final String? conferenceRecord;

/// Whether to trim leading and trailing silence from the conference recording. Can be: `trim-silence` or `do-not-trim` and defaults to `trim-silence`.
final String? conferenceTrim;

/// The URL we should call using the `conference_status_callback_method` when the conference events in `conference_status_callback_event` occur. Only the value set by the first participant to join the conference is used. Subsequent `conference_status_callback` values are ignored.
final Uri? conferenceStatusCallback;

/// The HTTP method we should use to call `conference_status_callback`. Can be: `GET` or `POST` and defaults to `POST`.
final CreateParticipantRequestConferenceStatusCallbackMethod? conferenceStatusCallbackMethod;

/// The conference state changes that should generate a call to `conference_status_callback`. Can be: `start`, `end`, `join`, `leave`, `mute`, `hold`, `modify`, `speaker`, and `announcement`. Separate multiple values with a space. Defaults to `start end`.
final List<String>? conferenceStatusCallbackEvent;

/// The recording channels for the final recording. Can be: `mono` or `dual` and the default is `mono`.
final String? recordingChannels;

/// The URL that we should call using the `recording_status_callback_method` when the recording status changes.
final Uri? recordingStatusCallback;

/// The HTTP method we should use when we call `recording_status_callback`. Can be: `GET` or `POST` and defaults to `POST`.
final CreateParticipantRequestRecordingStatusCallbackMethod? recordingStatusCallbackMethod;

/// The SIP username used for authentication.
final String? sipAuthUsername;

/// The SIP password for authentication.
final String? sipAuthPassword;

/// The [region](https://support.twilio.com/hc/en-us/articles/223132167-How-global-low-latency-routing-and-region-selection-work-for-conferences-and-Client-calls) where we should mix the recorded audio. Can be:`us1`, `us2`, `ie1`, `de1`, `sg1`, `br1`, `au1`, or `jp1`.
final String? region;

/// The URL we should call using the `conference_recording_status_callback_method` when the conference recording is available.
final Uri? conferenceRecordingStatusCallback;

/// The HTTP method we should use to call `conference_recording_status_callback`. Can be: `GET` or `POST` and defaults to `POST`.
final CreateParticipantRequestConferenceRecordingStatusCallbackMethod? conferenceRecordingStatusCallbackMethod;

/// The recording state changes that should generate a call to `recording_status_callback`. Can be: `started`, `in-progress`, `paused`, `resumed`, `stopped`, `completed`, `failed`, and `absent`. Separate multiple values with a space, ex: `'in-progress completed failed'`.
final List<String>? recordingStatusCallbackEvent;

/// The conference recording state changes that generate a call to `conference_recording_status_callback`. Can be: `in-progress`, `completed`, `failed`, and `absent`. Separate multiple values with a space, ex: `'in-progress completed failed'`
final List<String>? conferenceRecordingStatusCallbackEvent;

/// Whether the participant is coaching another call. Can be: `true` or `false`. If not present, defaults to `false` unless `call_sid_to_coach` is defined. If `true`, `call_sid_to_coach` must be defined.
final bool? coaching;

/// The SID of the participant who is being `coached`. The participant being coached is the only participant who can hear the participant who is `coaching`.
final String? callSidToCoach;

/// Jitter buffer size for the connecting participant. Twilio will use this setting to apply Jitter Buffer before participant's audio is mixed into the conference. Can be: `off`, `small`, `medium`, and `large`. Default to `large`.
final String? jitterBufferSize;

/// The SID of a BYOC (Bring Your Own Carrier) trunk to route this call with. Note that `byoc` is only meaningful when `to` is a phone number; it will otherwise be ignored. (Beta)
final String? byoc;

/// The phone number, Client identifier, or username portion of SIP address that made this call. Phone numbers are in [E.164](https://www.twilio.com/docs/glossary/what-e164) format (e.g., +16175551212). Client identifiers are formatted `client:name`. If using a phone number, it must be a Twilio number or a Verified [outgoing caller id](https://www.twilio.com/docs/voice/api/outgoing-caller-ids) for your account. If the `to` parameter is a phone number, `callerId` must also be a phone number. If `to` is sip address, this value of `callerId` should be a username portion to be used to populate the From header that is passed to the SIP endpoint.
final String? callerId;

/// The Reason for the outgoing call. Use it to specify the purpose of the call that is presented on the called party's phone. (Branded Calls Beta)
final String? callReason;

/// The audio track to record for the call. Can be: `inbound`, `outbound` or `both`. The default is `both`. `inbound` records the audio that is received by Twilio. `outbound` records the audio that is sent from Twilio. `both` records the audio that is received and sent by Twilio.
final String? recordingTrack;

/// The maximum duration of the call in seconds. Constraints depend on account and configuration.
final int? timeLimit;

/// Whether to detect if a human, answering machine, or fax has picked up the call. Can be: `Enable` or `DetectMessageEnd`. Use `Enable` if you would like us to return `AnsweredBy` as soon as the called party is identified. Use `DetectMessageEnd`, if you would like to leave a message on an answering machine. For more information, see [Answering Machine Detection](https://www.twilio.com/docs/voice/answering-machine-detection).
final String? machineDetection;

/// The number of seconds that we should attempt to detect an answering machine before timing out and sending a voice request with `AnsweredBy` of `unknown`. The default timeout is 30 seconds.
final int? machineDetectionTimeout;

/// The number of milliseconds that is used as the measuring stick for the length of the speech activity, where durations lower than this value will be interpreted as a human and longer than this value as a machine. Possible Values: 1000-6000. Default: 2400.
final int? machineDetectionSpeechThreshold;

/// The number of milliseconds of silence after speech activity at which point the speech activity is considered complete. Possible Values: 500-5000. Default: 1200.
final int? machineDetectionSpeechEndThreshold;

/// The number of milliseconds of initial silence after which an `unknown` AnsweredBy result will be returned. Possible Values: 2000-10000. Default: 5000.
final int? machineDetectionSilenceTimeout;

/// The URL that we should call using the `amd_status_callback_method` to notify customer application whether the call was answered by human, machine or fax.
final Uri? amdStatusCallback;

/// The HTTP method we should use when calling the `amd_status_callback` URL. Can be: `GET` or `POST` and the default is `POST`.
final CreateParticipantRequestAmdStatusCallbackMethod? amdStatusCallbackMethod;

/// Whether to trim any leading and trailing silence from the participant recording. Can be: `trim-silence` or `do-not-trim` and the default is `trim-silence`.
final String? trim;

/// A token string needed to invoke a forwarded call. A call_token is generated when an incoming call is received on a Twilio number. Pass an incoming call's call_token value to a forwarded call via the call_token parameter when creating a new call. A forwarded call should bear the same CallerID of the original incoming call.
final String? callToken;

/// The URL that we should use to deliver `push call notification`.
final Uri? clientNotificationUrl;

/// The name that populates the display name in the From header. Must be between 2 and 255 characters. Only applicable for calls to sip address.
final String? callerDisplayName;

Map<String, dynamic> toJson() { return {
  'From': from,
  'To': to,
  if (statusCallback != null) 'StatusCallback': statusCallback?.toString(),
  if (statusCallbackMethod != null) 'StatusCallbackMethod': statusCallbackMethod?.toJson(),
  'StatusCallbackEvent': ?statusCallbackEvent,
  'Label': ?label,
  'Timeout': ?timeout,
  'Record': ?record,
  'Muted': ?muted,
  'Beep': ?beep,
  'StartConferenceOnEnter': ?startConferenceOnEnter,
  'EndConferenceOnExit': ?endConferenceOnExit,
  if (waitUrl != null) 'WaitUrl': waitUrl?.toString(),
  if (waitMethod != null) 'WaitMethod': waitMethod?.toJson(),
  'EarlyMedia': ?earlyMedia,
  'MaxParticipants': ?maxParticipants,
  'ConferenceRecord': ?conferenceRecord,
  'ConferenceTrim': ?conferenceTrim,
  if (conferenceStatusCallback != null) 'ConferenceStatusCallback': conferenceStatusCallback?.toString(),
  if (conferenceStatusCallbackMethod != null) 'ConferenceStatusCallbackMethod': conferenceStatusCallbackMethod?.toJson(),
  'ConferenceStatusCallbackEvent': ?conferenceStatusCallbackEvent,
  'RecordingChannels': ?recordingChannels,
  if (recordingStatusCallback != null) 'RecordingStatusCallback': recordingStatusCallback?.toString(),
  if (recordingStatusCallbackMethod != null) 'RecordingStatusCallbackMethod': recordingStatusCallbackMethod?.toJson(),
  'SipAuthUsername': ?sipAuthUsername,
  'SipAuthPassword': ?sipAuthPassword,
  'Region': ?region,
  if (conferenceRecordingStatusCallback != null) 'ConferenceRecordingStatusCallback': conferenceRecordingStatusCallback?.toString(),
  if (conferenceRecordingStatusCallbackMethod != null) 'ConferenceRecordingStatusCallbackMethod': conferenceRecordingStatusCallbackMethod?.toJson(),
  'RecordingStatusCallbackEvent': ?recordingStatusCallbackEvent,
  'ConferenceRecordingStatusCallbackEvent': ?conferenceRecordingStatusCallbackEvent,
  'Coaching': ?coaching,
  'CallSidToCoach': ?callSidToCoach,
  'JitterBufferSize': ?jitterBufferSize,
  'Byoc': ?byoc,
  'CallerId': ?callerId,
  'CallReason': ?callReason,
  'RecordingTrack': ?recordingTrack,
  'TimeLimit': ?timeLimit,
  'MachineDetection': ?machineDetection,
  'MachineDetectionTimeout': ?machineDetectionTimeout,
  'MachineDetectionSpeechThreshold': ?machineDetectionSpeechThreshold,
  'MachineDetectionSpeechEndThreshold': ?machineDetectionSpeechEndThreshold,
  'MachineDetectionSilenceTimeout': ?machineDetectionSilenceTimeout,
  if (amdStatusCallback != null) 'AmdStatusCallback': amdStatusCallback?.toString(),
  if (amdStatusCallbackMethod != null) 'AmdStatusCallbackMethod': amdStatusCallbackMethod?.toJson(),
  'Trim': ?trim,
  'CallToken': ?callToken,
  if (clientNotificationUrl != null) 'ClientNotificationUrl': clientNotificationUrl?.toString(),
  'CallerDisplayName': ?callerDisplayName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('From') && json['From'] is String &&
      json.containsKey('To') && json['To'] is String; } 
CreateParticipantRequest copyWith({String? from, String? to, Uri Function()? statusCallback, CreateParticipantRequestStatusCallbackMethod Function()? statusCallbackMethod, List<String> Function()? statusCallbackEvent, String Function()? label, int Function()? timeout, bool Function()? record, bool Function()? muted, String Function()? beep, bool Function()? startConferenceOnEnter, bool Function()? endConferenceOnExit, Uri Function()? waitUrl, CreateParticipantRequestWaitMethod Function()? waitMethod, bool Function()? earlyMedia, int Function()? maxParticipants, String Function()? conferenceRecord, String Function()? conferenceTrim, Uri Function()? conferenceStatusCallback, CreateParticipantRequestConferenceStatusCallbackMethod Function()? conferenceStatusCallbackMethod, List<String> Function()? conferenceStatusCallbackEvent, String Function()? recordingChannels, Uri Function()? recordingStatusCallback, CreateParticipantRequestRecordingStatusCallbackMethod Function()? recordingStatusCallbackMethod, String Function()? sipAuthUsername, String Function()? sipAuthPassword, String Function()? region, Uri Function()? conferenceRecordingStatusCallback, CreateParticipantRequestConferenceRecordingStatusCallbackMethod Function()? conferenceRecordingStatusCallbackMethod, List<String> Function()? recordingStatusCallbackEvent, List<String> Function()? conferenceRecordingStatusCallbackEvent, bool Function()? coaching, String Function()? callSidToCoach, String Function()? jitterBufferSize, String Function()? byoc, String Function()? callerId, String Function()? callReason, String Function()? recordingTrack, int Function()? timeLimit, String Function()? machineDetection, int Function()? machineDetectionTimeout, int Function()? machineDetectionSpeechThreshold, int Function()? machineDetectionSpeechEndThreshold, int Function()? machineDetectionSilenceTimeout, Uri Function()? amdStatusCallback, CreateParticipantRequestAmdStatusCallbackMethod Function()? amdStatusCallbackMethod, String Function()? trim, String Function()? callToken, Uri Function()? clientNotificationUrl, String Function()? callerDisplayName, }) { return CreateParticipantRequest(
  from: from ?? this.from,
  to: to ?? this.to,
  statusCallback: statusCallback != null ? statusCallback() : this.statusCallback,
  statusCallbackMethod: statusCallbackMethod != null ? statusCallbackMethod() : this.statusCallbackMethod,
  statusCallbackEvent: statusCallbackEvent != null ? statusCallbackEvent() : this.statusCallbackEvent,
  label: label != null ? label() : this.label,
  timeout: timeout != null ? timeout() : this.timeout,
  record: record != null ? record() : this.record,
  muted: muted != null ? muted() : this.muted,
  beep: beep != null ? beep() : this.beep,
  startConferenceOnEnter: startConferenceOnEnter != null ? startConferenceOnEnter() : this.startConferenceOnEnter,
  endConferenceOnExit: endConferenceOnExit != null ? endConferenceOnExit() : this.endConferenceOnExit,
  waitUrl: waitUrl != null ? waitUrl() : this.waitUrl,
  waitMethod: waitMethod != null ? waitMethod() : this.waitMethod,
  earlyMedia: earlyMedia != null ? earlyMedia() : this.earlyMedia,
  maxParticipants: maxParticipants != null ? maxParticipants() : this.maxParticipants,
  conferenceRecord: conferenceRecord != null ? conferenceRecord() : this.conferenceRecord,
  conferenceTrim: conferenceTrim != null ? conferenceTrim() : this.conferenceTrim,
  conferenceStatusCallback: conferenceStatusCallback != null ? conferenceStatusCallback() : this.conferenceStatusCallback,
  conferenceStatusCallbackMethod: conferenceStatusCallbackMethod != null ? conferenceStatusCallbackMethod() : this.conferenceStatusCallbackMethod,
  conferenceStatusCallbackEvent: conferenceStatusCallbackEvent != null ? conferenceStatusCallbackEvent() : this.conferenceStatusCallbackEvent,
  recordingChannels: recordingChannels != null ? recordingChannels() : this.recordingChannels,
  recordingStatusCallback: recordingStatusCallback != null ? recordingStatusCallback() : this.recordingStatusCallback,
  recordingStatusCallbackMethod: recordingStatusCallbackMethod != null ? recordingStatusCallbackMethod() : this.recordingStatusCallbackMethod,
  sipAuthUsername: sipAuthUsername != null ? sipAuthUsername() : this.sipAuthUsername,
  sipAuthPassword: sipAuthPassword != null ? sipAuthPassword() : this.sipAuthPassword,
  region: region != null ? region() : this.region,
  conferenceRecordingStatusCallback: conferenceRecordingStatusCallback != null ? conferenceRecordingStatusCallback() : this.conferenceRecordingStatusCallback,
  conferenceRecordingStatusCallbackMethod: conferenceRecordingStatusCallbackMethod != null ? conferenceRecordingStatusCallbackMethod() : this.conferenceRecordingStatusCallbackMethod,
  recordingStatusCallbackEvent: recordingStatusCallbackEvent != null ? recordingStatusCallbackEvent() : this.recordingStatusCallbackEvent,
  conferenceRecordingStatusCallbackEvent: conferenceRecordingStatusCallbackEvent != null ? conferenceRecordingStatusCallbackEvent() : this.conferenceRecordingStatusCallbackEvent,
  coaching: coaching != null ? coaching() : this.coaching,
  callSidToCoach: callSidToCoach != null ? callSidToCoach() : this.callSidToCoach,
  jitterBufferSize: jitterBufferSize != null ? jitterBufferSize() : this.jitterBufferSize,
  byoc: byoc != null ? byoc() : this.byoc,
  callerId: callerId != null ? callerId() : this.callerId,
  callReason: callReason != null ? callReason() : this.callReason,
  recordingTrack: recordingTrack != null ? recordingTrack() : this.recordingTrack,
  timeLimit: timeLimit != null ? timeLimit() : this.timeLimit,
  machineDetection: machineDetection != null ? machineDetection() : this.machineDetection,
  machineDetectionTimeout: machineDetectionTimeout != null ? machineDetectionTimeout() : this.machineDetectionTimeout,
  machineDetectionSpeechThreshold: machineDetectionSpeechThreshold != null ? machineDetectionSpeechThreshold() : this.machineDetectionSpeechThreshold,
  machineDetectionSpeechEndThreshold: machineDetectionSpeechEndThreshold != null ? machineDetectionSpeechEndThreshold() : this.machineDetectionSpeechEndThreshold,
  machineDetectionSilenceTimeout: machineDetectionSilenceTimeout != null ? machineDetectionSilenceTimeout() : this.machineDetectionSilenceTimeout,
  amdStatusCallback: amdStatusCallback != null ? amdStatusCallback() : this.amdStatusCallback,
  amdStatusCallbackMethod: amdStatusCallbackMethod != null ? amdStatusCallbackMethod() : this.amdStatusCallbackMethod,
  trim: trim != null ? trim() : this.trim,
  callToken: callToken != null ? callToken() : this.callToken,
  clientNotificationUrl: clientNotificationUrl != null ? clientNotificationUrl() : this.clientNotificationUrl,
  callerDisplayName: callerDisplayName != null ? callerDisplayName() : this.callerDisplayName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateParticipantRequest &&
          from == other.from &&
          to == other.to &&
          statusCallback == other.statusCallback &&
          statusCallbackMethod == other.statusCallbackMethod &&
          listEquals(statusCallbackEvent, other.statusCallbackEvent) &&
          label == other.label &&
          timeout == other.timeout &&
          record == other.record &&
          muted == other.muted &&
          beep == other.beep &&
          startConferenceOnEnter == other.startConferenceOnEnter &&
          endConferenceOnExit == other.endConferenceOnExit &&
          waitUrl == other.waitUrl &&
          waitMethod == other.waitMethod &&
          earlyMedia == other.earlyMedia &&
          maxParticipants == other.maxParticipants &&
          conferenceRecord == other.conferenceRecord &&
          conferenceTrim == other.conferenceTrim &&
          conferenceStatusCallback == other.conferenceStatusCallback &&
          conferenceStatusCallbackMethod == other.conferenceStatusCallbackMethod &&
          listEquals(conferenceStatusCallbackEvent, other.conferenceStatusCallbackEvent) &&
          recordingChannels == other.recordingChannels &&
          recordingStatusCallback == other.recordingStatusCallback &&
          recordingStatusCallbackMethod == other.recordingStatusCallbackMethod &&
          sipAuthUsername == other.sipAuthUsername &&
          sipAuthPassword == other.sipAuthPassword &&
          region == other.region &&
          conferenceRecordingStatusCallback == other.conferenceRecordingStatusCallback &&
          conferenceRecordingStatusCallbackMethod == other.conferenceRecordingStatusCallbackMethod &&
          listEquals(recordingStatusCallbackEvent, other.recordingStatusCallbackEvent) &&
          listEquals(conferenceRecordingStatusCallbackEvent, other.conferenceRecordingStatusCallbackEvent) &&
          coaching == other.coaching &&
          callSidToCoach == other.callSidToCoach &&
          jitterBufferSize == other.jitterBufferSize &&
          byoc == other.byoc &&
          callerId == other.callerId &&
          callReason == other.callReason &&
          recordingTrack == other.recordingTrack &&
          timeLimit == other.timeLimit &&
          machineDetection == other.machineDetection &&
          machineDetectionTimeout == other.machineDetectionTimeout &&
          machineDetectionSpeechThreshold == other.machineDetectionSpeechThreshold &&
          machineDetectionSpeechEndThreshold == other.machineDetectionSpeechEndThreshold &&
          machineDetectionSilenceTimeout == other.machineDetectionSilenceTimeout &&
          amdStatusCallback == other.amdStatusCallback &&
          amdStatusCallbackMethod == other.amdStatusCallbackMethod &&
          trim == other.trim &&
          callToken == other.callToken &&
          clientNotificationUrl == other.clientNotificationUrl &&
          callerDisplayName == other.callerDisplayName; } 
@override int get hashCode { return Object.hashAll([from, to, statusCallback, statusCallbackMethod, Object.hashAll(statusCallbackEvent ?? const []), label, timeout, record, muted, beep, startConferenceOnEnter, endConferenceOnExit, waitUrl, waitMethod, earlyMedia, maxParticipants, conferenceRecord, conferenceTrim, conferenceStatusCallback, conferenceStatusCallbackMethod, Object.hashAll(conferenceStatusCallbackEvent ?? const []), recordingChannels, recordingStatusCallback, recordingStatusCallbackMethod, sipAuthUsername, sipAuthPassword, region, conferenceRecordingStatusCallback, conferenceRecordingStatusCallbackMethod, Object.hashAll(recordingStatusCallbackEvent ?? const []), Object.hashAll(conferenceRecordingStatusCallbackEvent ?? const []), coaching, callSidToCoach, jitterBufferSize, byoc, callerId, callReason, recordingTrack, timeLimit, machineDetection, machineDetectionTimeout, machineDetectionSpeechThreshold, machineDetectionSpeechEndThreshold, machineDetectionSilenceTimeout, amdStatusCallback, amdStatusCallbackMethod, trim, callToken, clientNotificationUrl, callerDisplayName]); } 
@override String toString() { return 'CreateParticipantRequest(from: $from, to: $to, statusCallback: $statusCallback, statusCallbackMethod: $statusCallbackMethod, statusCallbackEvent: $statusCallbackEvent, label: $label, timeout: $timeout, record: $record, muted: $muted, beep: $beep, startConferenceOnEnter: $startConferenceOnEnter, endConferenceOnExit: $endConferenceOnExit, waitUrl: $waitUrl, waitMethod: $waitMethod, earlyMedia: $earlyMedia, maxParticipants: $maxParticipants, conferenceRecord: $conferenceRecord, conferenceTrim: $conferenceTrim, conferenceStatusCallback: $conferenceStatusCallback, conferenceStatusCallbackMethod: $conferenceStatusCallbackMethod, conferenceStatusCallbackEvent: $conferenceStatusCallbackEvent, recordingChannels: $recordingChannels, recordingStatusCallback: $recordingStatusCallback, recordingStatusCallbackMethod: $recordingStatusCallbackMethod, sipAuthUsername: $sipAuthUsername, sipAuthPassword: $sipAuthPassword, region: $region, conferenceRecordingStatusCallback: $conferenceRecordingStatusCallback, conferenceRecordingStatusCallbackMethod: $conferenceRecordingStatusCallbackMethod, recordingStatusCallbackEvent: $recordingStatusCallbackEvent, conferenceRecordingStatusCallbackEvent: $conferenceRecordingStatusCallbackEvent, coaching: $coaching, callSidToCoach: $callSidToCoach, jitterBufferSize: $jitterBufferSize, byoc: $byoc, callerId: $callerId, callReason: $callReason, recordingTrack: $recordingTrack, timeLimit: $timeLimit, machineDetection: $machineDetection, machineDetectionTimeout: $machineDetectionTimeout, machineDetectionSpeechThreshold: $machineDetectionSpeechThreshold, machineDetectionSpeechEndThreshold: $machineDetectionSpeechEndThreshold, machineDetectionSilenceTimeout: $machineDetectionSilenceTimeout, amdStatusCallback: $amdStatusCallback, amdStatusCallbackMethod: $amdStatusCallbackMethod, trim: $trim, callToken: $callToken, clientNotificationUrl: $clientNotificationUrl, callerDisplayName: $callerDisplayName)'; } 
 }
