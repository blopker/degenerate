// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountCallUserDefinedMessage {const AccountCallUserDefinedMessage({this.accountSid, this.callSid, this.sid, this.dateCreated, });

factory AccountCallUserDefinedMessage.fromJson(Map<String, dynamic> json) { return AccountCallUserDefinedMessage(
  accountSid: json['account_sid'] as String?,
  callSid: json['call_sid'] as String?,
  sid: json['sid'] as String?,
  dateCreated: json['date_created'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created User Defined Message.
final String? accountSid;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the User Defined Message is associated with.
final String? callSid;

/// The SID that uniquely identifies this User Defined Message.
final String? sid;

/// The date that this User Defined Message was created, given in RFC 2822 format.
final String? dateCreated;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'call_sid': ?callSid,
  'sid': ?sid,
  'date_created': ?dateCreated,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccountCallUserDefinedMessage copyWith({String? Function()? accountSid, String? Function()? callSid, String? Function()? sid, String? Function()? dateCreated, }) { return AccountCallUserDefinedMessage(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  callSid: callSid != null ? callSid() : this.callSid,
  sid: sid != null ? sid() : this.sid,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountCallUserDefinedMessage &&
          accountSid == other.accountSid &&
          callSid == other.callSid &&
          sid == other.sid &&
          dateCreated == other.dateCreated; } 
@override int get hashCode { return Object.hash(accountSid, callSid, sid, dateCreated); } 
@override String toString() { return 'AccountCallUserDefinedMessage(accountSid: $accountSid, callSid: $callSid, sid: $sid, dateCreated: $dateCreated)'; } 
 }
