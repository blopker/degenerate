// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The status - one of `stopped`, `in-flight`
@immutable final class RealtimeTranscriptionEnumStatus {const RealtimeTranscriptionEnumStatus._(this.value);

factory RealtimeTranscriptionEnumStatus.fromJson(String json) { return switch (json) {
  'in-progress' => inProgress,
  'stopped' => stopped,
  _ => RealtimeTranscriptionEnumStatus._(json),
}; }

static const RealtimeTranscriptionEnumStatus inProgress = RealtimeTranscriptionEnumStatus._('in-progress');

static const RealtimeTranscriptionEnumStatus stopped = RealtimeTranscriptionEnumStatus._('stopped');

static const List<RealtimeTranscriptionEnumStatus> values = [inProgress, stopped];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeTranscriptionEnumStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeTranscriptionEnumStatus($value)'; } 
 }
@immutable final class AccountCallRealtimeTranscription {const AccountCallRealtimeTranscription({this.sid = const Omittable.absent(), this.accountSid = const Omittable.absent(), this.callSid = const Omittable.absent(), this.name = const Omittable.absent(), this.status, this.dateUpdated = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountCallRealtimeTranscription.fromJson(Map<String, dynamic> json) { return AccountCallRealtimeTranscription(
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  callSid: json.containsKey('call_sid') ? Omittable(json['call_sid'] as String?) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  status: json['status'] != null ? RealtimeTranscriptionEnumStatus.fromJson(json['status'] as String) : null,
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The SID of the Transcription resource.
final Omittable<String?> sid;

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created this Transcription resource.
final Omittable<String?> accountSid;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the Transcription resource is associated with.
final Omittable<String?> callSid;

/// The user-specified name of this Transcription, if one was given when the Transcription was created. This may be used to stop the Transcription.
final Omittable<String?> name;

final RealtimeTranscriptionEnumStatus? status;

/// The date and time in GMT that this resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (sid.isPresent) 'sid': sid.value,
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (callSid.isPresent) 'call_sid': callSid.value,
  if (name.isPresent) 'name': name.value,
  if (status != null) 'status': status?.toJson(),
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'sid', 'account_sid', 'call_sid', 'name', 'status', 'date_updated', 'uri'}.contains(key)); } 
AccountCallRealtimeTranscription copyWith({Omittable<String?>? sid, Omittable<String?>? accountSid, Omittable<String?>? callSid, Omittable<String?>? name, RealtimeTranscriptionEnumStatus? Function()? status, Omittable<String?>? dateUpdated, Omittable<String?>? uri, }) { return AccountCallRealtimeTranscription(
  sid: sid ?? this.sid,
  accountSid: accountSid ?? this.accountSid,
  callSid: callSid ?? this.callSid,
  name: name ?? this.name,
  status: status != null ? status() : this.status,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  uri: uri ?? this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountCallRealtimeTranscription &&
          sid == other.sid &&
          accountSid == other.accountSid &&
          callSid == other.callSid &&
          name == other.name &&
          status == other.status &&
          dateUpdated == other.dateUpdated &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(sid, accountSid, callSid, name, status, dateUpdated, uri); } 
@override String toString() { return 'AccountCallRealtimeTranscription(sid: $sid, accountSid: $accountSid, callSid: $callSid, name: $name, status: $status, dateUpdated: $dateUpdated, uri: $uri)'; } 
 }
