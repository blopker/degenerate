// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountSipSipDomainSipAuthSipAuthRegistrationsSipAuthRegistrationsCredentialListMapping {const AccountSipSipDomainSipAuthSipAuthRegistrationsSipAuthRegistrationsCredentialListMapping({this.accountSid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.sid = const Omittable.absent(), });

factory AccountSipSipDomainSipAuthSipAuthRegistrationsSipAuthRegistrationsCredentialListMapping.fromJson(Map<String, dynamic> json) { return AccountSipSipDomainSipAuthSipAuthRegistrationsSipAuthRegistrationsCredentialListMapping(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the CredentialListMapping resource.
final Omittable<String?> accountSid;

/// The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The string that you assigned to describe the resource.
final Omittable<String?> friendlyName;

/// The unique string that that we created to identify the CredentialListMapping resource.
final Omittable<String?> sid;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (sid.isPresent) 'sid': sid.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'date_created', 'date_updated', 'friendly_name', 'sid'}.contains(key)); } 
AccountSipSipDomainSipAuthSipAuthRegistrationsSipAuthRegistrationsCredentialListMapping copyWith({Omittable<String?>? accountSid, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? friendlyName, Omittable<String?>? sid, }) { return AccountSipSipDomainSipAuthSipAuthRegistrationsSipAuthRegistrationsCredentialListMapping(
  accountSid: accountSid ?? this.accountSid,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  friendlyName: friendlyName ?? this.friendlyName,
  sid: sid ?? this.sid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSipSipDomainSipAuthSipAuthRegistrationsSipAuthRegistrationsCredentialListMapping &&
          accountSid == other.accountSid &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          friendlyName == other.friendlyName &&
          sid == other.sid; } 
@override int get hashCode { return Object.hash(accountSid, dateCreated, dateUpdated, friendlyName, sid); } 
@override String toString() { return 'AccountSipSipDomainSipAuthSipAuthRegistrationsSipAuthRegistrationsCredentialListMapping(accountSid: $accountSid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, friendlyName: $friendlyName, sid: $sid)'; } 
 }
