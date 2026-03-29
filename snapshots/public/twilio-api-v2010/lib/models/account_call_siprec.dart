// GENERATED CODE - DO NOT MODIFY BY HAND

/// The status - one of `stopped`, `in-progress`
final class SiprecEnumStatus {const SiprecEnumStatus._(this.value);

factory SiprecEnumStatus.fromJson(String json) { return switch (json) {
  'in-progress' => inProgress,
  'stopped' => stopped,
  _ => SiprecEnumStatus._(json),
}; }

static const SiprecEnumStatus inProgress = SiprecEnumStatus._('in-progress');

static const SiprecEnumStatus stopped = SiprecEnumStatus._('stopped');

static const List<SiprecEnumStatus> values = [inProgress, stopped];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SiprecEnumStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SiprecEnumStatus($value)'; } 
 }
final class AccountCallSiprec {const AccountCallSiprec({this.sid, this.accountSid, this.callSid, this.name, this.status, this.dateUpdated, this.uri, });

factory AccountCallSiprec.fromJson(Map<String, dynamic> json) { return AccountCallSiprec(
  sid: json['sid'] as String?,
  accountSid: json['account_sid'] as String?,
  callSid: json['call_sid'] as String?,
  name: json['name'] as String?,
  status: json['status'] != null ? SiprecEnumStatus.fromJson(json['status'] as String) : null,
  dateUpdated: json['date_updated'] as String?,
  uri: json['uri'] as String?,
); }

/// The SID of the Siprec resource.
final String? sid;

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created this Siprec resource.
final String? accountSid;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the Siprec resource is associated with.
final String? callSid;

/// The user-specified name of this Siprec, if one was given when the Siprec was created. This may be used to stop the Siprec.
final String? name;

final SiprecEnumStatus? status;

/// The date and time in GMT that this resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

/// The URI of the resource, relative to `https://api.twilio.com`.
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
static bool canParse(Map<String, dynamic> json) { return true; } 
AccountCallSiprec copyWith({String? Function()? sid, String? Function()? accountSid, String? Function()? callSid, String? Function()? name, SiprecEnumStatus Function()? status, String? Function()? dateUpdated, String? Function()? uri, }) { return AccountCallSiprec(
  sid: sid != null ? sid() : this.sid,
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  callSid: callSid != null ? callSid() : this.callSid,
  name: name != null ? name() : this.name,
  status: status != null ? status() : this.status,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  uri: uri != null ? uri() : this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountCallSiprec &&
          sid == other.sid &&
          accountSid == other.accountSid &&
          callSid == other.callSid &&
          name == other.name &&
          status == other.status &&
          dateUpdated == other.dateUpdated &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(sid, accountSid, callSid, name, status, dateUpdated, uri); } 
@override String toString() { return 'AccountCallSiprec(sid: $sid, accountSid: $accountSid, callSid: $callSid, name: $name, status: $status, dateUpdated: $dateUpdated, uri: $uri)'; } 
 }
