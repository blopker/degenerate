// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountSipSipIpAccessControlListSipIpAddress {const AccountSipSipIpAccessControlListSipIpAddress({this.sid = const Omittable.absent(), this.accountSid = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.ipAddress = const Omittable.absent(), this.cidrPrefixLength = 0, this.ipAccessControlListSid = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountSipSipIpAccessControlListSipIpAddress.fromJson(Map<String, dynamic> json) { return AccountSipSipIpAccessControlListSipIpAddress(
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  ipAddress: json.containsKey('ip_address') ? Omittable(json['ip_address'] as String?) : const Omittable.absent(),
  cidrPrefixLength: json.containsKey('cidr_prefix_length') ? (json['cidr_prefix_length'] as num).toInt() : 0,
  ipAccessControlListSid: json.containsKey('ip_access_control_list_sid') ? Omittable(json['ip_access_control_list_sid'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// A 34 character string that uniquely identifies this resource.
final Omittable<String?> sid;

/// The unique id of the Account that is responsible for this resource.
final Omittable<String?> accountSid;

/// A human readable descriptive text for this resource, up to 255 characters long.
final Omittable<String?> friendlyName;

/// An IP address in dotted decimal notation from which you want to accept traffic. Any SIP requests from this IP address will be allowed by Twilio. IPv4 only supported today.
final Omittable<String?> ipAddress;

/// An integer representing the length of the CIDR prefix to use with this IP address when accepting traffic. By default the entire IP address is used.
final int cidrPrefixLength;

/// The unique id of the IpAccessControlList resource that includes this resource.
final Omittable<String?> ipAccessControlListSid;

/// The date that this resource was created, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final Omittable<String?> dateCreated;

/// The date that this resource was last updated, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final Omittable<String?> dateUpdated;

/// The URI for this resource, relative to `https://api.twilio.com`
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (sid.isPresent) 'sid': sid.value,
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (ipAddress.isPresent) 'ip_address': ipAddress.value,
  'cidr_prefix_length': cidrPrefixLength,
  if (ipAccessControlListSid.isPresent) 'ip_access_control_list_sid': ipAccessControlListSid.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'sid', 'account_sid', 'friendly_name', 'ip_address', 'cidr_prefix_length', 'ip_access_control_list_sid', 'date_created', 'date_updated', 'uri'}.contains(key)); } 
AccountSipSipIpAccessControlListSipIpAddress copyWith({Omittable<String?>? sid, Omittable<String?>? accountSid, Omittable<String?>? friendlyName, Omittable<String?>? ipAddress, int Function()? cidrPrefixLength, Omittable<String?>? ipAccessControlListSid, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? uri, }) { return AccountSipSipIpAccessControlListSipIpAddress(
  sid: sid ?? this.sid,
  accountSid: accountSid ?? this.accountSid,
  friendlyName: friendlyName ?? this.friendlyName,
  ipAddress: ipAddress ?? this.ipAddress,
  cidrPrefixLength: cidrPrefixLength != null ? cidrPrefixLength() : this.cidrPrefixLength,
  ipAccessControlListSid: ipAccessControlListSid ?? this.ipAccessControlListSid,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  uri: uri ?? this.uri,
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
