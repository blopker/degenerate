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
@immutable final class AccountCallRealtimeTranscription {const AccountCallRealtimeTranscription({this.sid, this.accountSid, this.callSid, this.name, this.status, this.dateUpdated, this.uri, });

factory AccountCallRealtimeTranscription.fromJson(Map<String, dynamic> json) { return AccountCallRealtimeTranscription(
  sid: json['sid'] as String?,
  accountSid: json['account_sid'] as String?,
  callSid: json['call_sid'] as String?,
  name: json['name'] as String?,
  status: json['status'] != null ? RealtimeTranscriptionEnumStatus.fromJson(json['status'] as String) : null,
  dateUpdated: json['date_updated'] as String?,
  uri: json['uri'] as String?,
); }

/// The SID of the Transcription resource.
final String? sid;

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created this Transcription resource.
final String? accountSid;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the Transcription resource is associated with.
final String? callSid;

/// The user-specified name of this Transcription, if one was given when the Transcription was created. This may be used to stop the Transcription.
final String? name;

final RealtimeTranscriptionEnumStatus? status;

/// The date and time in GMT that this resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

final String? uri;

Map<String, dynamic> toJson() { return {
  'sid': ?sid,
  'account_sid': ?accountSid,
  'call_sid': ?callSid,
  'name': ?name,
  if (status != null) 'status': status?.toJson(),
  'date_updated': ?dateUpdated,
  'uri': ?uri,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'sid', 'account_sid', 'call_sid', 'name', 'status', 'date_updated', 'uri'}.contains(key)); } 
AccountCallRealtimeTranscription copyWith({String? Function()? sid, String? Function()? accountSid, String? Function()? callSid, String? Function()? name, RealtimeTranscriptionEnumStatus Function()? status, String? Function()? dateUpdated, String? Function()? uri, }) { return AccountCallRealtimeTranscription(
  sid: sid != null ? sid() : this.sid,
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  callSid: callSid != null ? callSid() : this.callSid,
  name: name != null ? name() : this.name,
  status: status != null ? status() : this.status,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  uri: uri != null ? uri() : this.uri,
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
