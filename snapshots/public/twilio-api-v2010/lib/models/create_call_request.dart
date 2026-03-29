// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The HTTP method we should use when calling the `url` parameter's value. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final class CreateCallRequestMethod {const CreateCallRequestMethod._(this.value);

factory CreateCallRequestMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateCallRequestMethod._(json),
}; }

static const CreateCallRequestMethod $get = CreateCallRequestMethod._('GET');

static const CreateCallRequestMethod post = CreateCallRequestMethod._('POST');

static const List<CreateCallRequestMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateCallRequestMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateCallRequestMethod($value)'; } 
 }
/// The HTTP method that we should use to request the `fallback_url`. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final class CreateCallRequestFallbackMethod {const CreateCallRequestFallbackMethod._(this.value);

factory CreateCallRequestFallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateCallRequestFallbackMethod._(json),
}; }

static const CreateCallRequestFallbackMethod $get = CreateCallRequestFallbackMethod._('GET');

static const CreateCallRequestFallbackMethod post = CreateCallRequestFallbackMethod._('POST');

static const List<CreateCallRequestFallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateCallRequestFallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateCallRequestFallbackMethod($value)'; } 
 }
/// The HTTP method we should use when calling the `status_callback` URL. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final class CreateCallRequestStatusCallbackMethod {const CreateCallRequestStatusCallbackMethod._(this.value);

factory CreateCallRequestStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateCallRequestStatusCallbackMethod._(json),
}; }

static const CreateCallRequestStatusCallbackMethod $get = CreateCallRequestStatusCallbackMethod._('GET');

static const CreateCallRequestStatusCallbackMethod post = CreateCallRequestStatusCallbackMethod._('POST');

static const List<CreateCallRequestStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateCallRequestStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateCallRequestStatusCallbackMethod($value)'; } 
 }
/// The HTTP method we should use when calling the `recording_status_callback` URL. Can be: `GET` or `POST` and the default is `POST`.
final class CreateCallRequestRecordingStatusCallbackMethod {const CreateCallRequestRecordingStatusCallbackMethod._(this.value);

factory CreateCallRequestRecordingStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateCallRequestRecordingStatusCallbackMethod._(json),
}; }

static const CreateCallRequestRecordingStatusCallbackMethod $get = CreateCallRequestRecordingStatusCallbackMethod._('GET');

static const CreateCallRequestRecordingStatusCallbackMethod post = CreateCallRequestRecordingStatusCallbackMethod._('POST');

static const List<CreateCallRequestRecordingStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateCallRequestRecordingStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateCallRequestRecordingStatusCallbackMethod($value)'; } 
 }
/// The HTTP method we should use when calling the `async_amd_status_callback` URL. Can be: `GET` or `POST` and the default is `POST`.
final class CreateCallRequestAsyncAmdStatusCallbackMethod {const CreateCallRequestAsyncAmdStatusCallbackMethod._(this.value);

factory CreateCallRequestAsyncAmdStatusCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => CreateCallRequestAsyncAmdStatusCallbackMethod._(json),
}; }

static const CreateCallRequestAsyncAmdStatusCallbackMethod $get = CreateCallRequestAsyncAmdStatusCallbackMethod._('GET');

static const CreateCallRequestAsyncAmdStatusCallbackMethod post = CreateCallRequestAsyncAmdStatusCallbackMethod._('POST');

static const List<CreateCallRequestAsyncAmdStatusCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateCallRequestAsyncAmdStatusCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateCallRequestAsyncAmdStatusCallbackMethod($value)'; } 
 }
final class CreateCallRequest {const CreateCallRequest({required this.to, required this.from, this.method, this.fallbackUrl, this.fallbackMethod, this.statusCallback, this.statusCallbackEvent, this.statusCallbackMethod, this.sendDigits, this.timeout, this.record, this.recordingChannels, this.recordingStatusCallback, this.recordingStatusCallbackMethod, this.sipAuthUsername, this.sipAuthPassword, this.machineDetection, this.machineDetectionTimeout, this.recordingStatusCallbackEvent, this.trim, this.callerId, this.machineDetectionSpeechThreshold, this.machineDetectionSpeechEndThreshold, this.machineDetectionSilenceTimeout, this.asyncAmd, this.asyncAmdStatusCallback, this.asyncAmdStatusCallbackMethod, this.byoc, this.callReason, this.callToken, this.recordingTrack, this.timeLimit, this.clientNotificationUrl, this.url, this.twiml, this.applicationSid, });

factory CreateCallRequest.fromJson(Map<String, dynamic> json) { return CreateCallRequest(
  to: json['To'] as String,
  from: json['From'] as String,
  method: json['Method'] != null ? CreateCallRequestMethod.fromJson(json['Method'] as String) : null,
  fallbackUrl: json['FallbackUrl'] != null ? Uri.parse(json['FallbackUrl'] as String) : null,
  fallbackMethod: json['FallbackMethod'] != null ? CreateCallRequestFallbackMethod.fromJson(json['FallbackMethod'] as String) : null,
  statusCallback: json['StatusCallback'] != null ? Uri.parse(json['StatusCallback'] as String) : null,
  statusCallbackEvent: (json['StatusCallbackEvent'] as List<dynamic>?)?.map((e) => e as String).toList(),
  statusCallbackMethod: json['StatusCallbackMethod'] != null ? CreateCallRequestStatusCallbackMethod.fromJson(json['StatusCallbackMethod'] as String) : null,
  sendDigits: json['SendDigits'] as String?,
  timeout: json['Timeout'] != null ? (json['Timeout'] as num).toInt() : null,
  record: json['Record'] as bool?,
  recordingChannels: json['RecordingChannels'] as String?,
  recordingStatusCallback: json['RecordingStatusCallback'] as String?,
  recordingStatusCallbackMethod: json['RecordingStatusCallbackMethod'] != null ? CreateCallRequestRecordingStatusCallbackMethod.fromJson(json['RecordingStatusCallbackMethod'] as String) : null,
  sipAuthUsername: json['SipAuthUsername'] as String?,
  sipAuthPassword: json['SipAuthPassword'] as String?,
  machineDetection: json['MachineDetection'] as String?,
  machineDetectionTimeout: json['MachineDetectionTimeout'] != null ? (json['MachineDetectionTimeout'] as num).toInt() : null,
  recordingStatusCallbackEvent: (json['RecordingStatusCallbackEvent'] as List<dynamic>?)?.map((e) => e as String).toList(),
  trim: json['Trim'] as String?,
  callerId: json['CallerId'] as String?,
  machineDetectionSpeechThreshold: json['MachineDetectionSpeechThreshold'] != null ? (json['MachineDetectionSpeechThreshold'] as num).toInt() : null,
  machineDetectionSpeechEndThreshold: json['MachineDetectionSpeechEndThreshold'] != null ? (json['MachineDetectionSpeechEndThreshold'] as num).toInt() : null,
  machineDetectionSilenceTimeout: json['MachineDetectionSilenceTimeout'] != null ? (json['MachineDetectionSilenceTimeout'] as num).toInt() : null,
  asyncAmd: json['AsyncAmd'] as String?,
  asyncAmdStatusCallback: json['AsyncAmdStatusCallback'] != null ? Uri.parse(json['AsyncAmdStatusCallback'] as String) : null,
  asyncAmdStatusCallbackMethod: json['AsyncAmdStatusCallbackMethod'] != null ? CreateCallRequestAsyncAmdStatusCallbackMethod.fromJson(json['AsyncAmdStatusCallbackMethod'] as String) : null,
  byoc: json['Byoc'] as String?,
  callReason: json['CallReason'] as String?,
  callToken: json['CallToken'] as String?,
  recordingTrack: json['RecordingTrack'] as String?,
  timeLimit: json['TimeLimit'] != null ? (json['TimeLimit'] as num).toInt() : null,
  clientNotificationUrl: json['ClientNotificationUrl'] != null ? Uri.parse(json['ClientNotificationUrl'] as String) : null,
  url: json['Url'] != null ? Uri.parse(json['Url'] as String) : null,
  twiml: json['Twiml'] as String?,
  applicationSid: json['ApplicationSid'] as String?,
); }

/// The phone number, SIP address, or client identifier to call.
final String to;

/// The phone number or client identifier to use as the caller id. If using a phone number, it must be a Twilio number or a Verified [outgoing caller id](https://www.twilio.com/docs/voice/api/outgoing-caller-ids) for your account. If the `to` parameter is a phone number, `From` must also be a phone number.
final String from;

/// The HTTP method we should use when calling the `url` parameter's value. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final CreateCallRequestMethod? method;

/// The URL that we call using the `fallback_method` if an error occurs when requesting or executing the TwiML at `url`. If an `application_sid` parameter is present, this parameter is ignored.
final Uri? fallbackUrl;

/// The HTTP method that we should use to request the `fallback_url`. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final CreateCallRequestFallbackMethod? fallbackMethod;

/// The URL we should call using the `status_callback_method` to send status information to your application. If no `status_callback_event` is specified, we will send the `completed` status. If an `application_sid` parameter is present, this parameter is ignored. URLs must contain a valid hostname (underscores are not permitted).
final Uri? statusCallback;

/// The call progress events that we will send to the `status_callback` URL. Can be: `initiated`, `ringing`, `answered`, and `completed`. If no event is specified, we send the `completed` status. If you want to receive multiple events, specify each one in a separate `status_callback_event` parameter. See the code sample for [monitoring call progress](https://www.twilio.com/docs/voice/api/call-resource?code-sample=code-create-a-call-resource-and-specify-a-statuscallbackevent&code-sdk-version=json). If an `application_sid` is present, this parameter is ignored.
final List<String>? statusCallbackEvent;

/// The HTTP method we should use when calling the `status_callback` URL. Can be: `GET` or `POST` and the default is `POST`. If an `application_sid` parameter is present, this parameter is ignored.
final CreateCallRequestStatusCallbackMethod? statusCallbackMethod;

/// The string of keys to dial after connecting to the number, with a maximum length of 32 digits. Valid digits in the string include any digit (`0`-`9`), '`A`', '`B`', '`C`', '`D`', '`#`', and '`*`'. You can also use '`w`' to insert a half-second pause and '`W`' to insert a one-second pause. For example, to pause for one second after connecting and then dial extension 1234 followed by the # key, set this parameter to `W1234#`. Be sure to URL-encode this string because the '`#`' character has special meaning in a URL. If both `SendDigits` and `MachineDetection` parameters are provided, then `MachineDetection` will be ignored.
final String? sendDigits;

/// The integer number of seconds that we should allow the phone to ring before assuming there is no answer. The default is `60` seconds and the maximum is `600` seconds. For some call flows, we will add a 5-second buffer to the timeout value you provide. For this reason, a timeout value of 10 seconds could result in an actual timeout closer to 15 seconds. You can set this to a short time, such as `15` seconds, to hang up before reaching an answering machine or voicemail.
final int? timeout;

/// Whether to record the call. Can be `true` to record the phone call, or `false` to not. The default is `false`. The `recording_url` is sent to the `status_callback` URL.
final bool? record;

/// The number of channels in the final recording. Can be: `mono` or `dual`. The default is `mono`. `mono` records both legs of the call in a single channel of the recording file. `dual` records each leg to a separate channel of the recording file. The first channel of a dual-channel recording contains the parent call and the second channel contains the child call.
final String? recordingChannels;

/// The URL that we call when the recording is available to be accessed.
final String? recordingStatusCallback;

/// The HTTP method we should use when calling the `recording_status_callback` URL. Can be: `GET` or `POST` and the default is `POST`.
final CreateCallRequestRecordingStatusCallbackMethod? recordingStatusCallbackMethod;

/// The username used to authenticate the caller making a SIP call.
final String? sipAuthUsername;

/// The password required to authenticate the user account specified in `sip_auth_username`.
final String? sipAuthPassword;

/// Whether to detect if a human, answering machine, or fax has picked up the call. Can be: `Enable` or `DetectMessageEnd`. Use `Enable` if you would like us to return `AnsweredBy` as soon as the called party is identified. Use `DetectMessageEnd`, if you would like to leave a message on an answering machine. If `send_digits` is provided, this parameter is ignored. For more information, see [Answering Machine Detection](https://www.twilio.com/docs/voice/answering-machine-detection).
final String? machineDetection;

/// The number of seconds that we should attempt to detect an answering machine before timing out and sending a voice request with `AnsweredBy` of `unknown`. The default timeout is 30 seconds.
final int? machineDetectionTimeout;

/// The recording status events that will trigger calls to the URL specified in `recording_status_callback`. Can be: `in-progress`, `completed` and `absent`. Defaults to `completed`. Separate  multiple values with a space.
final List<String>? recordingStatusCallbackEvent;

/// Whether to trim any leading and trailing silence from the recording. Can be: `trim-silence` or `do-not-trim` and the default is `trim-silence`.
final String? trim;

/// The phone number, SIP address, or Client identifier that made this call. Phone numbers are in [E.164 format](https://wwnw.twilio.com/docs/glossary/what-e164) (e.g., +16175551212). SIP addresses are formatted as `name@company.com`.
final String? callerId;

/// The number of milliseconds that is used as the measuring stick for the length of the speech activity, where durations lower than this value will be interpreted as a human and longer than this value as a machine. Possible Values: 1000-6000. Default: 2400.
final int? machineDetectionSpeechThreshold;

/// The number of milliseconds of silence after speech activity at which point the speech activity is considered complete. Possible Values: 500-5000. Default: 1200.
final int? machineDetectionSpeechEndThreshold;

/// The number of milliseconds of initial silence after which an `unknown` AnsweredBy result will be returned. Possible Values: 2000-10000. Default: 5000.
final int? machineDetectionSilenceTimeout;

/// Select whether to perform answering machine detection in the background. Default, blocks the execution of the call until Answering Machine Detection is completed. Can be: `true` or `false`.
final String? asyncAmd;

/// The URL that we should call using the `async_amd_status_callback_method` to notify customer application whether the call was answered by human, machine or fax.
final Uri? asyncAmdStatusCallback;

/// The HTTP method we should use when calling the `async_amd_status_callback` URL. Can be: `GET` or `POST` and the default is `POST`.
final CreateCallRequestAsyncAmdStatusCallbackMethod? asyncAmdStatusCallbackMethod;

/// The SID of a BYOC (Bring Your Own Carrier) trunk to route this call with. Note that `byoc` is only meaningful when `to` is a phone number; it will otherwise be ignored. (Beta)
final String? byoc;

/// The Reason for the outgoing call. Use it to specify the purpose of the call that is presented on the called party's phone. (Branded Calls Beta)
final String? callReason;

/// A token string needed to invoke a forwarded call. A call_token is generated when an incoming call is received on a Twilio number. Pass an incoming call's call_token value to a forwarded call via the call_token parameter when creating a new call. A forwarded call should bear the same CallerID of the original incoming call.
final String? callToken;

/// The audio track to record for the call. Can be: `inbound`, `outbound` or `both`. The default is `both`. `inbound` records the audio that is received by Twilio. `outbound` records the audio that is generated from Twilio. `both` records the audio that is received and generated by Twilio.
final String? recordingTrack;

/// The maximum duration of the call in seconds. Constraints depend on account and configuration.
final int? timeLimit;

/// The URL that we should use to deliver `push call notification`.
final Uri? clientNotificationUrl;

/// The absolute URL that returns the TwiML instructions for the call. We will call this URL using the `method` when the call connects. For more information, see the [Url Parameter](https://www.twilio.com/docs/voice/make-calls#specify-a-url-parameter) section in [Making Calls](https://www.twilio.com/docs/voice/make-calls).
final Uri? url;

/// TwiML instructions for the call Twilio will use without fetching Twiml from url parameter. If both `twiml` and `url` are provided then `twiml` parameter will be ignored. Max 4000 characters.
final String? twiml;

/// The SID of the Application resource that will handle the call, if the call will be handled by an application.
final String? applicationSid;

Map<String, dynamic> toJson() { return {
  'To': to,
  'From': from,
  if (method != null) 'Method': method?.toJson(),
  if (fallbackUrl != null) 'FallbackUrl': fallbackUrl?.toString(),
  if (fallbackMethod != null) 'FallbackMethod': fallbackMethod?.toJson(),
  if (statusCallback != null) 'StatusCallback': statusCallback?.toString(),
  'StatusCallbackEvent': ?statusCallbackEvent,
  if (statusCallbackMethod != null) 'StatusCallbackMethod': statusCallbackMethod?.toJson(),
  'SendDigits': ?sendDigits,
  'Timeout': ?timeout,
  'Record': ?record,
  'RecordingChannels': ?recordingChannels,
  'RecordingStatusCallback': ?recordingStatusCallback,
  if (recordingStatusCallbackMethod != null) 'RecordingStatusCallbackMethod': recordingStatusCallbackMethod?.toJson(),
  'SipAuthUsername': ?sipAuthUsername,
  'SipAuthPassword': ?sipAuthPassword,
  'MachineDetection': ?machineDetection,
  'MachineDetectionTimeout': ?machineDetectionTimeout,
  'RecordingStatusCallbackEvent': ?recordingStatusCallbackEvent,
  'Trim': ?trim,
  'CallerId': ?callerId,
  'MachineDetectionSpeechThreshold': ?machineDetectionSpeechThreshold,
  'MachineDetectionSpeechEndThreshold': ?machineDetectionSpeechEndThreshold,
  'MachineDetectionSilenceTimeout': ?machineDetectionSilenceTimeout,
  'AsyncAmd': ?asyncAmd,
  if (asyncAmdStatusCallback != null) 'AsyncAmdStatusCallback': asyncAmdStatusCallback?.toString(),
  if (asyncAmdStatusCallbackMethod != null) 'AsyncAmdStatusCallbackMethod': asyncAmdStatusCallbackMethod?.toJson(),
  'Byoc': ?byoc,
  'CallReason': ?callReason,
  'CallToken': ?callToken,
  'RecordingTrack': ?recordingTrack,
  'TimeLimit': ?timeLimit,
  if (clientNotificationUrl != null) 'ClientNotificationUrl': clientNotificationUrl?.toString(),
  if (url != null) 'Url': url?.toString(),
  'Twiml': ?twiml,
  'ApplicationSid': ?applicationSid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('To') && json['To'] is String &&
      json.containsKey('From') && json['From'] is String; } 
CreateCallRequest copyWith({String? to, String? from, CreateCallRequestMethod Function()? method, Uri Function()? fallbackUrl, CreateCallRequestFallbackMethod Function()? fallbackMethod, Uri Function()? statusCallback, List<String> Function()? statusCallbackEvent, CreateCallRequestStatusCallbackMethod Function()? statusCallbackMethod, String Function()? sendDigits, int Function()? timeout, bool Function()? record, String Function()? recordingChannels, String Function()? recordingStatusCallback, CreateCallRequestRecordingStatusCallbackMethod Function()? recordingStatusCallbackMethod, String Function()? sipAuthUsername, String Function()? sipAuthPassword, String Function()? machineDetection, int Function()? machineDetectionTimeout, List<String> Function()? recordingStatusCallbackEvent, String Function()? trim, String Function()? callerId, int Function()? machineDetectionSpeechThreshold, int Function()? machineDetectionSpeechEndThreshold, int Function()? machineDetectionSilenceTimeout, String Function()? asyncAmd, Uri Function()? asyncAmdStatusCallback, CreateCallRequestAsyncAmdStatusCallbackMethod Function()? asyncAmdStatusCallbackMethod, String Function()? byoc, String Function()? callReason, String Function()? callToken, String Function()? recordingTrack, int Function()? timeLimit, Uri Function()? clientNotificationUrl, Uri Function()? url, String Function()? twiml, String Function()? applicationSid, }) { return CreateCallRequest(
  to: to ?? this.to,
  from: from ?? this.from,
  method: method != null ? method() : this.method,
  fallbackUrl: fallbackUrl != null ? fallbackUrl() : this.fallbackUrl,
  fallbackMethod: fallbackMethod != null ? fallbackMethod() : this.fallbackMethod,
  statusCallback: statusCallback != null ? statusCallback() : this.statusCallback,
  statusCallbackEvent: statusCallbackEvent != null ? statusCallbackEvent() : this.statusCallbackEvent,
  statusCallbackMethod: statusCallbackMethod != null ? statusCallbackMethod() : this.statusCallbackMethod,
  sendDigits: sendDigits != null ? sendDigits() : this.sendDigits,
  timeout: timeout != null ? timeout() : this.timeout,
  record: record != null ? record() : this.record,
  recordingChannels: recordingChannels != null ? recordingChannels() : this.recordingChannels,
  recordingStatusCallback: recordingStatusCallback != null ? recordingStatusCallback() : this.recordingStatusCallback,
  recordingStatusCallbackMethod: recordingStatusCallbackMethod != null ? recordingStatusCallbackMethod() : this.recordingStatusCallbackMethod,
  sipAuthUsername: sipAuthUsername != null ? sipAuthUsername() : this.sipAuthUsername,
  sipAuthPassword: sipAuthPassword != null ? sipAuthPassword() : this.sipAuthPassword,
  machineDetection: machineDetection != null ? machineDetection() : this.machineDetection,
  machineDetectionTimeout: machineDetectionTimeout != null ? machineDetectionTimeout() : this.machineDetectionTimeout,
  recordingStatusCallbackEvent: recordingStatusCallbackEvent != null ? recordingStatusCallbackEvent() : this.recordingStatusCallbackEvent,
  trim: trim != null ? trim() : this.trim,
  callerId: callerId != null ? callerId() : this.callerId,
  machineDetectionSpeechThreshold: machineDetectionSpeechThreshold != null ? machineDetectionSpeechThreshold() : this.machineDetectionSpeechThreshold,
  machineDetectionSpeechEndThreshold: machineDetectionSpeechEndThreshold != null ? machineDetectionSpeechEndThreshold() : this.machineDetectionSpeechEndThreshold,
  machineDetectionSilenceTimeout: machineDetectionSilenceTimeout != null ? machineDetectionSilenceTimeout() : this.machineDetectionSilenceTimeout,
  asyncAmd: asyncAmd != null ? asyncAmd() : this.asyncAmd,
  asyncAmdStatusCallback: asyncAmdStatusCallback != null ? asyncAmdStatusCallback() : this.asyncAmdStatusCallback,
  asyncAmdStatusCallbackMethod: asyncAmdStatusCallbackMethod != null ? asyncAmdStatusCallbackMethod() : this.asyncAmdStatusCallbackMethod,
  byoc: byoc != null ? byoc() : this.byoc,
  callReason: callReason != null ? callReason() : this.callReason,
  callToken: callToken != null ? callToken() : this.callToken,
  recordingTrack: recordingTrack != null ? recordingTrack() : this.recordingTrack,
  timeLimit: timeLimit != null ? timeLimit() : this.timeLimit,
  clientNotificationUrl: clientNotificationUrl != null ? clientNotificationUrl() : this.clientNotificationUrl,
  url: url != null ? url() : this.url,
  twiml: twiml != null ? twiml() : this.twiml,
  applicationSid: applicationSid != null ? applicationSid() : this.applicationSid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateCallRequest &&
          to == other.to &&
          from == other.from &&
          method == other.method &&
          fallbackUrl == other.fallbackUrl &&
          fallbackMethod == other.fallbackMethod &&
          statusCallback == other.statusCallback &&
          listEquals(statusCallbackEvent, other.statusCallbackEvent) &&
          statusCallbackMethod == other.statusCallbackMethod &&
          sendDigits == other.sendDigits &&
          timeout == other.timeout &&
          record == other.record &&
          recordingChannels == other.recordingChannels &&
          recordingStatusCallback == other.recordingStatusCallback &&
          recordingStatusCallbackMethod == other.recordingStatusCallbackMethod &&
          sipAuthUsername == other.sipAuthUsername &&
          sipAuthPassword == other.sipAuthPassword &&
          machineDetection == other.machineDetection &&
          machineDetectionTimeout == other.machineDetectionTimeout &&
          listEquals(recordingStatusCallbackEvent, other.recordingStatusCallbackEvent) &&
          trim == other.trim &&
          callerId == other.callerId &&
          machineDetectionSpeechThreshold == other.machineDetectionSpeechThreshold &&
          machineDetectionSpeechEndThreshold == other.machineDetectionSpeechEndThreshold &&
          machineDetectionSilenceTimeout == other.machineDetectionSilenceTimeout &&
          asyncAmd == other.asyncAmd &&
          asyncAmdStatusCallback == other.asyncAmdStatusCallback &&
          asyncAmdStatusCallbackMethod == other.asyncAmdStatusCallbackMethod &&
          byoc == other.byoc &&
          callReason == other.callReason &&
          callToken == other.callToken &&
          recordingTrack == other.recordingTrack &&
          timeLimit == other.timeLimit &&
          clientNotificationUrl == other.clientNotificationUrl &&
          url == other.url &&
          twiml == other.twiml &&
          applicationSid == other.applicationSid; } 
@override int get hashCode { return Object.hashAll([to, from, method, fallbackUrl, fallbackMethod, statusCallback, Object.hashAll(statusCallbackEvent ?? const []), statusCallbackMethod, sendDigits, timeout, record, recordingChannels, recordingStatusCallback, recordingStatusCallbackMethod, sipAuthUsername, sipAuthPassword, machineDetection, machineDetectionTimeout, Object.hashAll(recordingStatusCallbackEvent ?? const []), trim, callerId, machineDetectionSpeechThreshold, machineDetectionSpeechEndThreshold, machineDetectionSilenceTimeout, asyncAmd, asyncAmdStatusCallback, asyncAmdStatusCallbackMethod, byoc, callReason, callToken, recordingTrack, timeLimit, clientNotificationUrl, url, twiml, applicationSid]); } 
@override String toString() { return 'CreateCallRequest(to: $to, from: $from, method: $method, fallbackUrl: $fallbackUrl, fallbackMethod: $fallbackMethod, statusCallback: $statusCallback, statusCallbackEvent: $statusCallbackEvent, statusCallbackMethod: $statusCallbackMethod, sendDigits: $sendDigits, timeout: $timeout, record: $record, recordingChannels: $recordingChannels, recordingStatusCallback: $recordingStatusCallback, recordingStatusCallbackMethod: $recordingStatusCallbackMethod, sipAuthUsername: $sipAuthUsername, sipAuthPassword: $sipAuthPassword, machineDetection: $machineDetection, machineDetectionTimeout: $machineDetectionTimeout, recordingStatusCallbackEvent: $recordingStatusCallbackEvent, trim: $trim, callerId: $callerId, machineDetectionSpeechThreshold: $machineDetectionSpeechThreshold, machineDetectionSpeechEndThreshold: $machineDetectionSpeechEndThreshold, machineDetectionSilenceTimeout: $machineDetectionSilenceTimeout, asyncAmd: $asyncAmd, asyncAmdStatusCallback: $asyncAmdStatusCallback, asyncAmdStatusCallbackMethod: $asyncAmdStatusCallbackMethod, byoc: $byoc, callReason: $callReason, callToken: $callToken, recordingTrack: $recordingTrack, timeLimit: $timeLimit, clientNotificationUrl: $clientNotificationUrl, url: $url, twiml: $twiml, applicationSid: $applicationSid)'; } 
 }
