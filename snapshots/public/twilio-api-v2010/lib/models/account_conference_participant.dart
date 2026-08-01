// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The status of the participant's call in a session. Can be: `queued`, `connecting`, `ringing`, `connected`, `complete`, or `failed`.
@immutable final class ParticipantEnumStatus {const ParticipantEnumStatus._(this.value);

factory ParticipantEnumStatus.fromJson(String json) { return switch (json) {
  'queued' => queued,
  'connecting' => connecting,
  'ringing' => ringing,
  'connected' => connected,
  'complete' => complete,
  'failed' => failed,
  _ => ParticipantEnumStatus._(json),
}; }

static const ParticipantEnumStatus queued = ParticipantEnumStatus._('queued');

static const ParticipantEnumStatus connecting = ParticipantEnumStatus._('connecting');

static const ParticipantEnumStatus ringing = ParticipantEnumStatus._('ringing');

static const ParticipantEnumStatus connected = ParticipantEnumStatus._('connected');

static const ParticipantEnumStatus complete = ParticipantEnumStatus._('complete');

static const ParticipantEnumStatus failed = ParticipantEnumStatus._('failed');

static const List<ParticipantEnumStatus> values = [queued, connecting, ringing, connected, complete, failed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ParticipantEnumStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ParticipantEnumStatus($value)'; } 
 }
@immutable final class AccountConferenceParticipant {const AccountConferenceParticipant({this.accountSid = const Omittable.absent(), this.callSid = const Omittable.absent(), this.label = const Omittable.absent(), this.callSidToCoach = const Omittable.absent(), this.coaching = const Omittable.absent(), this.conferenceSid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.endConferenceOnExit = const Omittable.absent(), this.muted = const Omittable.absent(), this.hold = const Omittable.absent(), this.startConferenceOnEnter = const Omittable.absent(), this.status, this.queueTime = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountConferenceParticipant.fromJson(Map<String, dynamic> json) { return AccountConferenceParticipant(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  callSid: json.containsKey('call_sid') ? Omittable(json['call_sid'] as String?) : const Omittable.absent(),
  label: json.containsKey('label') ? Omittable(json['label'] as String?) : const Omittable.absent(),
  callSidToCoach: json.containsKey('call_sid_to_coach') ? Omittable(json['call_sid_to_coach'] as String?) : const Omittable.absent(),
  coaching: json.containsKey('coaching') ? Omittable(json['coaching'] as bool?) : const Omittable.absent(),
  conferenceSid: json.containsKey('conference_sid') ? Omittable(json['conference_sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  endConferenceOnExit: json.containsKey('end_conference_on_exit') ? Omittable(json['end_conference_on_exit'] as bool?) : const Omittable.absent(),
  muted: json.containsKey('muted') ? Omittable(json['muted'] as bool?) : const Omittable.absent(),
  hold: json.containsKey('hold') ? Omittable(json['hold'] as bool?) : const Omittable.absent(),
  startConferenceOnEnter: json.containsKey('start_conference_on_enter') ? Omittable(json['start_conference_on_enter'] as bool?) : const Omittable.absent(),
  status: json['status'] != null ? ParticipantEnumStatus.fromJson(json['status'] as String) : null,
  queueTime: json.containsKey('queue_time') ? Omittable(json['queue_time'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Participant resource.
final Omittable<String?> accountSid;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the Participant resource is associated with.
final Omittable<String?> callSid;

/// The user-specified label of this participant, if one was given when the participant was created. This may be used to fetch, update or delete the participant.
final Omittable<String?> label;

/// The SID of the participant who is being `coached`. The participant being coached is the only participant who can hear the participant who is `coaching`.
final Omittable<String?> callSidToCoach;

/// Whether the participant is coaching another call. Can be: `true` or `false`. If not present, defaults to `false` unless `call_sid_to_coach` is defined. If `true`, `call_sid_to_coach` must be defined.
final Omittable<bool?> coaching;

/// The SID of the conference the participant is in.
final Omittable<String?> conferenceSid;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// Whether the conference ends when the participant leaves. Can be: `true` or `false` and the default is `false`. If `true`, the conference ends and all other participants drop out when the participant leaves.
final Omittable<bool?> endConferenceOnExit;

/// Whether the participant is muted. Can be `true` or `false`.
final Omittable<bool?> muted;

/// Whether the participant is on hold. Can be `true` or `false`.
final Omittable<bool?> hold;

/// Whether the conference starts when the participant joins the conference, if it has not already started. Can be: `true` or `false` and the default is `true`. If `false` and the conference has not started, the participant is muted and hears background music until another participant starts the conference.
final Omittable<bool?> startConferenceOnEnter;

final ParticipantEnumStatus? status;

/// The wait time in milliseconds before participant's call is placed. Only available in the response to a create participant request.
final Omittable<String?> queueTime;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (callSid.isPresent) 'call_sid': callSid.value,
  if (label.isPresent) 'label': label.value,
  if (callSidToCoach.isPresent) 'call_sid_to_coach': callSidToCoach.value,
  if (coaching.isPresent) 'coaching': coaching.value,
  if (conferenceSid.isPresent) 'conference_sid': conferenceSid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (endConferenceOnExit.isPresent) 'end_conference_on_exit': endConferenceOnExit.value,
  if (muted.isPresent) 'muted': muted.value,
  if (hold.isPresent) 'hold': hold.value,
  if (startConferenceOnEnter.isPresent) 'start_conference_on_enter': startConferenceOnEnter.value,
  if (status != null) 'status': status?.toJson(),
  if (queueTime.isPresent) 'queue_time': queueTime.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'call_sid', 'label', 'call_sid_to_coach', 'coaching', 'conference_sid', 'date_created', 'date_updated', 'end_conference_on_exit', 'muted', 'hold', 'start_conference_on_enter', 'status', 'queue_time', 'uri'}.contains(key)); } 
AccountConferenceParticipant copyWith({Omittable<String?>? accountSid, Omittable<String?>? callSid, Omittable<String?>? label, Omittable<String?>? callSidToCoach, Omittable<bool?>? coaching, Omittable<String?>? conferenceSid, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<bool?>? endConferenceOnExit, Omittable<bool?>? muted, Omittable<bool?>? hold, Omittable<bool?>? startConferenceOnEnter, ParticipantEnumStatus? Function()? status, Omittable<String?>? queueTime, Omittable<String?>? uri, }) { return AccountConferenceParticipant(
  accountSid: accountSid ?? this.accountSid,
  callSid: callSid ?? this.callSid,
  label: label ?? this.label,
  callSidToCoach: callSidToCoach ?? this.callSidToCoach,
  coaching: coaching ?? this.coaching,
  conferenceSid: conferenceSid ?? this.conferenceSid,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  endConferenceOnExit: endConferenceOnExit ?? this.endConferenceOnExit,
  muted: muted ?? this.muted,
  hold: hold ?? this.hold,
  startConferenceOnEnter: startConferenceOnEnter ?? this.startConferenceOnEnter,
  status: status != null ? status() : this.status,
  queueTime: queueTime ?? this.queueTime,
  uri: uri ?? this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountConferenceParticipant &&
          accountSid == other.accountSid &&
          callSid == other.callSid &&
          label == other.label &&
          callSidToCoach == other.callSidToCoach &&
          coaching == other.coaching &&
          conferenceSid == other.conferenceSid &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          endConferenceOnExit == other.endConferenceOnExit &&
          muted == other.muted &&
          hold == other.hold &&
          startConferenceOnEnter == other.startConferenceOnEnter &&
          status == other.status &&
          queueTime == other.queueTime &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, callSid, label, callSidToCoach, coaching, conferenceSid, dateCreated, dateUpdated, endConferenceOnExit, muted, hold, startConferenceOnEnter, status, queueTime, uri); } 
@override String toString() { return 'AccountConferenceParticipant(accountSid: $accountSid, callSid: $callSid, label: $label, callSidToCoach: $callSidToCoach, coaching: $coaching, conferenceSid: $conferenceSid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, endConferenceOnExit: $endConferenceOnExit, muted: $muted, hold: $hold, startConferenceOnEnter: $startConferenceOnEnter, status: $status, queueTime: $queueTime, uri: $uri)'; } 
 }
