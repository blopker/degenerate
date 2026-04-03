// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountSipSipIpAccessControlListSipIpAddress {const AccountSipSipIpAccessControlListSipIpAddress({this.sid, this.accountSid, this.friendlyName, this.ipAddress, this.cidrPrefixLength = 0, this.ipAccessControlListSid, this.dateCreated, this.dateUpdated, this.uri, });

factory AccountSipSipIpAccessControlListSipIpAddress.fromJson(Map<String, dynamic> json) { return AccountSipSipIpAccessControlListSipIpAddress(
  sid: json['sid'] as String?,
  accountSid: json['account_sid'] as String?,
  friendlyName: json['friendly_name'] as String?,
  ipAddress: json['ip_address'] as String?,
  cidrPrefixLength: json.containsKey('cidr_prefix_length') ? (json['cidr_prefix_length'] as num).toInt() : 0,
  ipAccessControlListSid: json['ip_access_control_list_sid'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  uri: json['uri'] as String?,
); }

/// A 34 character string that uniquely identifies this resource.
final String? sid;

/// The unique id of the Account that is responsible for this resource.
final String? accountSid;

/// A human readable descriptive text for this resource, up to 255 characters long.
final String? friendlyName;

/// An IP address in dotted decimal notation from which you want to accept traffic. Any SIP requests from this IP address will be allowed by Twilio. IPv4 only supported today.
final String? ipAddress;

/// An integer representing the length of the CIDR prefix to use with this IP address when accepting traffic. By default the entire IP address is used.
final int cidrPrefixLength;

/// The unique id of the IpAccessControlList resource that includes this resource.
final String? ipAccessControlListSid;

/// The date that this resource was created, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final String? dateCreated;

/// The date that this resource was last updated, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final String? dateUpdated;

/// The URI for this resource, relative to `https://api.twilio.com`
final String? uri;

Map<String, dynamic> toJson() { return {
  'sid': ?sid,
  'account_sid': ?accountSid,
  'friendly_name': ?friendlyName,
  'ip_address': ?ipAddress,
  'cidr_prefix_length': cidrPrefixLength,
  'ip_access_control_list_sid': ?ipAccessControlListSid,
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
  'uri': ?uri,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'sid', 'account_sid', 'friendly_name', 'ip_address', 'cidr_prefix_length', 'ip_access_control_list_sid', 'date_created', 'date_updated', 'uri'}.contains(key)); } 
AccountSipSipIpAccessControlListSipIpAddress copyWith({String? Function()? sid, String? Function()? accountSid, String? Function()? friendlyName, String? Function()? ipAddress, int Function()? cidrPrefixLength, String? Function()? ipAccessControlListSid, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? uri, }) { return AccountSipSipIpAccessControlListSipIpAddress(
  sid: sid != null ? sid() : this.sid,
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  ipAddress: ipAddress != null ? ipAddress() : this.ipAddress,
  cidrPrefixLength: cidrPrefixLength != null ? cidrPrefixLength() : this.cidrPrefixLength,
  ipAccessControlListSid: ipAccessControlListSid != null ? ipAccessControlListSid() : this.ipAccessControlListSid,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  uri: uri != null ? uri() : this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSipSipIpAccessControlListSipIpAddress &&
          sid == other.sid &&
          accountSid == other.accountSid &&
          friendlyName == other.friendlyName &&
          ipAddress == other.ipAddress &&
          cidrPrefixLength == other.cidrPrefixLength &&
          ipAccessControlListSid == other.ipAccessControlListSid &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(sid, accountSid, friendlyName, ipAddress, cidrPrefixLength, ipAccessControlListSid, dateCreated, dateUpdated, uri); } 
@override String toString() { return 'AccountSipSipIpAccessControlListSipIpAddress(sid: $sid, accountSid: $accountSid, friendlyName: $friendlyName, ipAddress: $ipAddress, cidrPrefixLength: $cidrPrefixLength, ipAccessControlListSid: $ipAccessControlListSid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, uri: $uri)'; } 
 }
