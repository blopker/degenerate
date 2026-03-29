// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountCallPayments {const AccountCallPayments({this.accountSid, this.callSid, this.sid, this.dateCreated, this.dateUpdated, this.uri, });

factory AccountCallPayments.fromJson(Map<String, dynamic> json) { return AccountCallPayments(
  accountSid: json['account_sid'] as String?,
  callSid: json['call_sid'] as String?,
  sid: json['sid'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  uri: json['uri'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Payments resource.
final String? accountSid;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the Payments resource is associated with. This will refer to the call sid that is producing the payment card (credit/ACH) information thru DTMF.
final String? callSid;

/// The SID of the Payments resource.
final String? sid;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

/// The URI of the resource, relative to `https://api.twilio.com`.
final String? uri;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'call_sid': ?callSid,
  'sid': ?sid,
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
  'uri': ?uri,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccountCallPayments copyWith({String? Function()? accountSid, String? Function()? callSid, String? Function()? sid, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? uri, }) { return AccountCallPayments(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  callSid: callSid != null ? callSid() : this.callSid,
  sid: sid != null ? sid() : this.sid,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  uri: uri != null ? uri() : this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountCallPayments &&
          accountSid == other.accountSid &&
          callSid == other.callSid &&
          sid == other.sid &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, callSid, sid, dateCreated, dateUpdated, uri); } 
@override String toString() { return 'AccountCallPayments(accountSid: $accountSid, callSid: $callSid, sid: $sid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, uri: $uri)'; } 
 }
