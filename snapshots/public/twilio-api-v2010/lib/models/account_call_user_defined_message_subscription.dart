// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountCallUserDefinedMessageSubscription {const AccountCallUserDefinedMessageSubscription({this.accountSid, this.callSid, this.sid, this.dateCreated, this.uri, });

factory AccountCallUserDefinedMessageSubscription.fromJson(Map<String, dynamic> json) { return AccountCallUserDefinedMessageSubscription(
  accountSid: json['account_sid'] as String?,
  callSid: json['call_sid'] as String?,
  sid: json['sid'] as String?,
  dateCreated: json['date_created'] as String?,
  uri: json['uri'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that subscribed to the User Defined Messages.
final String? accountSid;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the User Defined Message Subscription is associated with. This refers to the Call SID that is producing the User Defined Messages.
final String? callSid;

/// The SID that uniquely identifies this User Defined Message Subscription.
final String? sid;

/// The date that this User Defined Message Subscription was created, given in RFC 2822 format.
final String? dateCreated;

/// The URI of the User Defined Message Subscription Resource, relative to `https://api.twilio.com`.
final String? uri;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'call_sid': ?callSid,
  'sid': ?sid,
  'date_created': ?dateCreated,
  'uri': ?uri,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccountCallUserDefinedMessageSubscription copyWith({String? Function()? accountSid, String? Function()? callSid, String? Function()? sid, String? Function()? dateCreated, String? Function()? uri, }) { return AccountCallUserDefinedMessageSubscription(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  callSid: callSid != null ? callSid() : this.callSid,
  sid: sid != null ? sid() : this.sid,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  uri: uri != null ? uri() : this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountCallUserDefinedMessageSubscription &&
          accountSid == other.accountSid &&
          callSid == other.callSid &&
          sid == other.sid &&
          dateCreated == other.dateCreated &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, callSid, sid, dateCreated, uri); } 
@override String toString() { return 'AccountCallUserDefinedMessageSubscription(accountSid: $accountSid, callSid: $callSid, sid: $sid, dateCreated: $dateCreated, uri: $uri)'; } 
 }
