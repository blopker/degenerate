// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountOutgoingCallerId {const AccountOutgoingCallerId({this.sid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.accountSid = const Omittable.absent(), this.phoneNumber = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountOutgoingCallerId.fromJson(Map<String, dynamic> json) { return AccountOutgoingCallerId(
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  phoneNumber: json.containsKey('phone_number') ? Omittable(json['phone_number'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The unique string that that we created to identify the OutgoingCallerId resource.
final Omittable<String?> sid;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The string that you assigned to describe the resource.
final Omittable<String?> friendlyName;

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the OutgoingCallerId resource.
final Omittable<String?> accountSid;

/// The phone number in [E.164](https://www.twilio.com/docs/glossary/what-e164) format, which consists of a + followed by the country code and subscriber number.
final Omittable<String?> phoneNumber;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (sid.isPresent) 'sid': sid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (phoneNumber.isPresent) 'phone_number': phoneNumber.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'sid', 'date_created', 'date_updated', 'friendly_name', 'account_sid', 'phone_number', 'uri'}.contains(key)); } 
AccountOutgoingCallerId copyWith({Omittable<String?>? sid, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? friendlyName, Omittable<String?>? accountSid, Omittable<String?>? phoneNumber, Omittable<String?>? uri, }) { return AccountOutgoingCallerId(
  sid: sid ?? this.sid,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  friendlyName: friendlyName ?? this.friendlyName,
  accountSid: accountSid ?? this.accountSid,
  phoneNumber: phoneNumber ?? this.phoneNumber,
  uri: uri ?? this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountOutgoingCallerId &&
          sid == other.sid &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          friendlyName == other.friendlyName &&
          accountSid == other.accountSid &&
          phoneNumber == other.phoneNumber &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(sid, dateCreated, dateUpdated, friendlyName, accountSid, phoneNumber, uri); } 
@override String toString() { return 'AccountOutgoingCallerId(sid: $sid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, friendlyName: $friendlyName, accountSid: $accountSid, phoneNumber: $phoneNumber, uri: $uri)'; } 
 }
