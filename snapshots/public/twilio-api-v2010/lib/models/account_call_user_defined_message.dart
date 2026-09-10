// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountCallUserDefinedMessage {const AccountCallUserDefinedMessage({this.accountSid = const Omittable.absent(), this.callSid = const Omittable.absent(), this.sid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), });

factory AccountCallUserDefinedMessage.fromJson(Map<String, dynamic> json) { return AccountCallUserDefinedMessage(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  callSid: json.containsKey('call_sid') ? Omittable(json['call_sid'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created User Defined Message.
final Omittable<String?> accountSid;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the User Defined Message is associated with.
final Omittable<String?> callSid;

/// The SID that uniquely identifies this User Defined Message.
final Omittable<String?> sid;

/// The date that this User Defined Message was created, given in RFC 2822 format.
final Omittable<String?> dateCreated;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (callSid.isPresent) 'call_sid': callSid.value,
  if (sid.isPresent) 'sid': sid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'call_sid', 'sid', 'date_created'}.contains(key)); } 
AccountCallUserDefinedMessage copyWith({Omittable<String?>? accountSid, Omittable<String?>? callSid, Omittable<String?>? sid, Omittable<String?>? dateCreated, }) { return AccountCallUserDefinedMessage(
  accountSid: accountSid ?? this.accountSid,
  callSid: callSid ?? this.callSid,
  sid: sid ?? this.sid,
  dateCreated: dateCreated ?? this.dateCreated,
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
