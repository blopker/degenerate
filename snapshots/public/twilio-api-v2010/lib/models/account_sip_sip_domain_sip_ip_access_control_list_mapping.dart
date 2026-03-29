// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountSipSipDomainSipIpAccessControlListMapping {const AccountSipSipDomainSipIpAccessControlListMapping({this.accountSid, this.dateCreated, this.dateUpdated, this.domainSid, this.friendlyName, this.sid, this.uri, });

factory AccountSipSipDomainSipIpAccessControlListMapping.fromJson(Map<String, dynamic> json) { return AccountSipSipDomainSipIpAccessControlListMapping(
  accountSid: json['account_sid'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  domainSid: json['domain_sid'] as String?,
  friendlyName: json['friendly_name'] as String?,
  sid: json['sid'] as String?,
  uri: json['uri'] as String?,
); }

/// The unique id of the Account that is responsible for this resource.
final String? accountSid;

/// The date that this resource was created, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final String? dateCreated;

/// The date that this resource was last updated, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final String? dateUpdated;

/// The unique string that is created to identify the SipDomain resource.
final String? domainSid;

/// A human readable descriptive text for this resource, up to 64 characters long.
final String? friendlyName;

/// A 34 character string that uniquely identifies this resource.
final String? sid;

/// The URI for this resource, relative to `https://api.twilio.com`
final String? uri;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
  'domain_sid': ?domainSid,
  'friendly_name': ?friendlyName,
  'sid': ?sid,
  'uri': ?uri,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'date_created', 'date_updated', 'domain_sid', 'friendly_name', 'sid', 'uri'}.contains(key)); } 
AccountSipSipDomainSipIpAccessControlListMapping copyWith({String? Function()? accountSid, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? domainSid, String? Function()? friendlyName, String? Function()? sid, String? Function()? uri, }) { return AccountSipSipDomainSipIpAccessControlListMapping(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  domainSid: domainSid != null ? domainSid() : this.domainSid,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  sid: sid != null ? sid() : this.sid,
  uri: uri != null ? uri() : this.uri,
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
