// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountCallUserDefinedMessageSubscription {const AccountCallUserDefinedMessageSubscription({this.accountSid = const Omittable.absent(), this.callSid = const Omittable.absent(), this.sid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountCallUserDefinedMessageSubscription.fromJson(Map<String, dynamic> json) { return AccountCallUserDefinedMessageSubscription(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  callSid: json.containsKey('call_sid') ? Omittable(json['call_sid'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that subscribed to the User Defined Messages.
final Omittable<String?> accountSid;

/// The SID of the [Call](https://www.twilio.com/docs/voice/api/call-resource) the User Defined Message Subscription is associated with. This refers to the Call SID that is producing the User Defined Messages.
final Omittable<String?> callSid;

/// The SID that uniquely identifies this User Defined Message Subscription.
final Omittable<String?> sid;

/// The date that this User Defined Message Subscription was created, given in RFC 2822 format.
final Omittable<String?> dateCreated;

/// The URI of the User Defined Message Subscription Resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (callSid.isPresent) 'call_sid': callSid.value,
  if (sid.isPresent) 'sid': sid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'call_sid', 'sid', 'date_created', 'uri'}.contains(key)); } 
AccountCallUserDefinedMessageSubscription copyWith({Omittable<String?>? accountSid, Omittable<String?>? callSid, Omittable<String?>? sid, Omittable<String?>? dateCreated, Omittable<String?>? uri, }) { return AccountCallUserDefinedMessageSubscription(
  accountSid: accountSid ?? this.accountSid,
  callSid: callSid ?? this.callSid,
  sid: sid ?? this.sid,
  dateCreated: dateCreated ?? this.dateCreated,
  uri: uri ?? this.uri,
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
