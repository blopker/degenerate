// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountSipSipDomainSipIpAccessControlListMapping {const AccountSipSipDomainSipIpAccessControlListMapping({this.accountSid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.domainSid = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.sid = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountSipSipDomainSipIpAccessControlListMapping.fromJson(Map<String, dynamic> json) { return AccountSipSipDomainSipIpAccessControlListMapping(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  domainSid: json.containsKey('domain_sid') ? Omittable(json['domain_sid'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The unique id of the Account that is responsible for this resource.
final Omittable<String?> accountSid;

/// The date that this resource was created, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final Omittable<String?> dateCreated;

/// The date that this resource was last updated, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final Omittable<String?> dateUpdated;

/// The unique string that is created to identify the SipDomain resource.
final Omittable<String?> domainSid;

/// A human readable descriptive text for this resource, up to 64 characters long.
final Omittable<String?> friendlyName;

/// A 34 character string that uniquely identifies this resource.
final Omittable<String?> sid;

/// The URI for this resource, relative to `https://api.twilio.com`
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (domainSid.isPresent) 'domain_sid': domainSid.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (sid.isPresent) 'sid': sid.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'date_created', 'date_updated', 'domain_sid', 'friendly_name', 'sid', 'uri'}.contains(key)); } 
AccountSipSipDomainSipIpAccessControlListMapping copyWith({Omittable<String?>? accountSid, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? domainSid, Omittable<String?>? friendlyName, Omittable<String?>? sid, Omittable<String?>? uri, }) { return AccountSipSipDomainSipIpAccessControlListMapping(
  accountSid: accountSid ?? this.accountSid,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  domainSid: domainSid ?? this.domainSid,
  friendlyName: friendlyName ?? this.friendlyName,
  sid: sid ?? this.sid,
  uri: uri ?? this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSipSipDomainSipIpAccessControlListMapping &&
          accountSid == other.accountSid &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          domainSid == other.domainSid &&
          friendlyName == other.friendlyName &&
          sid == other.sid &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, dateCreated, dateUpdated, domainSid, friendlyName, sid, uri); } 
@override String toString() { return 'AccountSipSipDomainSipIpAccessControlListMapping(accountSid: $accountSid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, domainSid: $domainSid, friendlyName: $friendlyName, sid: $sid, uri: $uri)'; } 
 }
