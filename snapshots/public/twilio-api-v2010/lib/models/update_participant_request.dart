// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The HTTP method we should use to call `hold_url`. Can be: `GET` or `POST` and the default is `GET`.
@immutable final class UpdateParticipantRequestHoldMethod {const UpdateParticipantRequestHoldMethod._(this.value);

factory UpdateParticipantRequestHoldMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => UpdateParticipantRequestHoldMethod._(json),
}; }

static const UpdateParticipantRequestHoldMethod $get = UpdateParticipantRequestHoldMethod._('GET');

static const UpdateParticipantRequestHoldMethod post = UpdateParticipantRequestHoldMethod._('POST');

static const List<UpdateParticipantRequestHoldMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateParticipantRequestHoldMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateParticipantRequestHoldMethod($value)'; } 
 }
/// The HTTP method we should use to call `announce_url`. Can be: `GET` or `POST` and defaults to `POST`.
@immutable final class UpdateParticipantRequestAnnounceMethod {const UpdateParticipantRequestAnnounceMethod._(this.value);

factory UpdateParticipantRequestAnnounceMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => UpdateParticipantRequestAnnounceMethod._(json),
}; }

static const UpdateParticipantRequestAnnounceMethod $get = UpdateParticipantRequestAnnounceMethod._('GET');

static const UpdateParticipantRequestAnnounceMethod post = UpdateParticipantRequestAnnounceMethod._('POST');

static const List<UpdateParticipantRequestAnnounceMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateParticipantRequestAnnounceMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateParticipantRequestAnnounceMethod($value)'; } 
 }
/// The HTTP method we should use to call `wait_url`. Can be `GET` or `POST` and the default is `POST`. When using a static audio file, this should be `GET` so that we can cache the file.
@immutable final class UpdateParticipantRequestWaitMethod {const UpdateParticipantRequestWaitMethod._(this.value);

factory UpdateParticipantRequestWaitMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => UpdateParticipantRequestWaitMethod._(json),
}; }

static const UpdateParticipantRequestWaitMethod $get = UpdateParticipantRequestWaitMethod._('GET');

static const UpdateParticipantRequestWaitMethod post = UpdateParticipantRequestWaitMethod._('POST');

static const List<UpdateParticipantRequestWaitMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateParticipantRequestWaitMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateParticipantRequestWaitMethod($value)'; } 
 }
@immutable final class UpdateParticipantRequest {const UpdateParticipantRequest({this.muted, this.hold, this.holdUrl, this.holdMethod, this.announceUrl, this.announceMethod, this.waitUrl, this.waitMethod, this.beepOnExit, this.endConferenceOnExit, this.coaching, this.callSidToCoach, });

factory UpdateParticipantRequest.fromJson(Map<String, dynamic> json) { return UpdateParticipantRequest(
  muted: json['Muted'] as bool?,
  hold: json['Hold'] as bool?,
  holdUrl: json['HoldUrl'] != null ? Uri.parse(json['HoldUrl'] as String) : null,
  holdMethod: json['HoldMethod'] != null ? UpdateParticipantRequestHoldMethod.fromJson(json['HoldMethod'] as String) : null,
  announceUrl: json['AnnounceUrl'] != null ? Uri.parse(json['AnnounceUrl'] as String) : null,
  announceMethod: json['AnnounceMethod'] != null ? UpdateParticipantRequestAnnounceMethod.fromJson(json['AnnounceMethod'] as String) : null,
  waitUrl: json['WaitUrl'] != null ? Uri.parse(json['WaitUrl'] as String) : null,
  waitMethod: json['WaitMethod'] != null ? UpdateParticipantRequestWaitMethod.fromJson(json['WaitMethod'] as String) : null,
  beepOnExit: json['BeepOnExit'] as bool?,
  endConferenceOnExit: json['EndConferenceOnExit'] as bool?,
  coaching: json['Coaching'] as bool?,
  callSidToCoach: json['CallSidToCoach'] as String?,
); }

/// Whether the participant should be muted. Can be `true` or `false`. `true` will mute the participant, and `false` will un-mute them. Anything value other than `true` or `false` is interpreted as `false`.
final bool? muted;

/// Whether the participant should be on hold. Can be: `true` or `false`. `true` puts the participant on hold, and `false` lets them rejoin the conference.
final bool? hold;

/// The URL we call using the `hold_method` for music that plays when the participant is on hold. The URL may return an MP3 file, a WAV file, or a TwiML document that contains `<Play>`, `<Say>`, `<Pause>`, or `<Redirect>` verbs.
final Uri? holdUrl;

/// The HTTP method we should use to call `hold_url`. Can be: `GET` or `POST` and the default is `GET`.
final UpdateParticipantRequestHoldMethod? holdMethod;

/// The URL we call using the `announce_method` for an announcement to the participant. The URL may return an MP3 file, a WAV file, or a TwiML document that contains `<Play>`, `<Say>`, `<Pause>`, or `<Redirect>` verbs.
final Uri? announceUrl;

/// The HTTP method we should use to call `announce_url`. Can be: `GET` or `POST` and defaults to `POST`.
final UpdateParticipantRequestAnnounceMethod? announceMethod;

/// The URL that Twilio calls using the `wait_method` before the conference has started. The URL may return an MP3 file, a WAV file, or a TwiML document. The default value is the URL of our standard hold music. If you do not want anything to play while waiting for the conference to start, specify an empty string by setting `wait_url` to `''`. For more details on the allowable verbs within the `waitUrl`, see the `waitUrl` attribute in the [`<Conference>` TwiML instruction](https://www.twilio.com/docs/voice/twiml/conference#attributes-waiturl).
final Uri? waitUrl;

/// The HTTP method we should use to call `wait_url`. Can be `GET` or `POST` and the default is `POST`. When using a static audio file, this should be `GET` so that we can cache the file.
final UpdateParticipantRequestWaitMethod? waitMethod;

/// Whether to play a notification beep to the conference when the participant exits. Can be: `true` or `false`.
final bool? beepOnExit;

/// Whether to end the conference when the participant leaves. Can be: `true` or `false` and defaults to `false`.
final bool? endConferenceOnExit;

/// Whether the participant is coaching another call. Can be: `true` or `false`. If not present, defaults to `false` unless `call_sid_to_coach` is defined. If `true`, `call_sid_to_coach` must be defined.
final bool? coaching;

/// The SID of the participant who is being `coached`. The participant being coached is the only participant who can hear the participant who is `coaching`.
final String? callSidToCoach;

Map<String, dynamic> toJson() { return {
  'Muted': ?muted,
  'Hold': ?hold,
  if (holdUrl != null) 'HoldUrl': holdUrl?.toString(),
  if (holdMethod != null) 'HoldMethod': holdMethod?.toJson(),
  if (announceUrl != null) 'AnnounceUrl': announceUrl?.toString(),
  if (announceMethod != null) 'AnnounceMethod': announceMethod?.toJson(),
  if (waitUrl != null) 'WaitUrl': waitUrl?.toString(),
  if (waitMethod != null) 'WaitMethod': waitMethod?.toJson(),
  'BeepOnExit': ?beepOnExit,
  'EndConferenceOnExit': ?endConferenceOnExit,
  'Coaching': ?coaching,
  'CallSidToCoach': ?callSidToCoach,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'Muted', 'Hold', 'HoldUrl', 'HoldMethod', 'AnnounceUrl', 'AnnounceMethod', 'WaitUrl', 'WaitMethod', 'BeepOnExit', 'EndConferenceOnExit', 'Coaching', 'CallSidToCoach'}.contains(key)); } 
UpdateParticipantRequest copyWith({bool Function()? muted, bool Function()? hold, Uri Function()? holdUrl, UpdateParticipantRequestHoldMethod Function()? holdMethod, Uri Function()? announceUrl, UpdateParticipantRequestAnnounceMethod Function()? announceMethod, Uri Function()? waitUrl, UpdateParticipantRequestWaitMethod Function()? waitMethod, bool Function()? beepOnExit, bool Function()? endConferenceOnExit, bool Function()? coaching, String Function()? callSidToCoach, }) { return UpdateParticipantRequest(
  muted: muted != null ? muted() : this.muted,
  hold: hold != null ? hold() : this.hold,
  holdUrl: holdUrl != null ? holdUrl() : this.holdUrl,
  holdMethod: holdMethod != null ? holdMethod() : this.holdMethod,
  announceUrl: announceUrl != null ? announceUrl() : this.announceUrl,
  announceMethod: announceMethod != null ? announceMethod() : this.announceMethod,
  waitUrl: waitUrl != null ? waitUrl() : this.waitUrl,
  waitMethod: waitMethod != null ? waitMethod() : this.waitMethod,
  beepOnExit: beepOnExit != null ? beepOnExit() : this.beepOnExit,
  endConferenceOnExit: endConferenceOnExit != null ? endConferenceOnExit() : this.endConferenceOnExit,
  coaching: coaching != null ? coaching() : this.coaching,
  callSidToCoach: callSidToCoach != null ? callSidToCoach() : this.callSidToCoach,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateParticipantRequest &&
          muted == other.muted &&
          hold == other.hold &&
          holdUrl == other.holdUrl &&
          holdMethod == other.holdMethod &&
          announceUrl == other.announceUrl &&
          announceMethod == other.announceMethod &&
          waitUrl == other.waitUrl &&
          waitMethod == other.waitMethod &&
          beepOnExit == other.beepOnExit &&
          endConferenceOnExit == other.endConferenceOnExit &&
          coaching == other.coaching &&
          callSidToCoach == other.callSidToCoach; } 
@override int get hashCode { return Object.hash(muted, hold, holdUrl, holdMethod, announceUrl, announceMethod, waitUrl, waitMethod, beepOnExit, endConferenceOnExit, coaching, callSidToCoach); } 
@override String toString() { return 'UpdateParticipantRequest(muted: $muted, hold: $hold, holdUrl: $holdUrl, holdMethod: $holdMethod, announceUrl: $announceUrl, announceMethod: $announceMethod, waitUrl: $waitUrl, waitMethod: $waitMethod, beepOnExit: $beepOnExit, endConferenceOnExit: $endConferenceOnExit, coaching: $coaching, callSidToCoach: $callSidToCoach)'; } 
 }
