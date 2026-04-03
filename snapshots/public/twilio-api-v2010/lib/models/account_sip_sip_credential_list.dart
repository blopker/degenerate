// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountSipSipCredentialList {const AccountSipSipCredentialList({this.accountSid, this.dateCreated, this.dateUpdated, this.friendlyName, this.sid, this.subresourceUris, this.uri, });

factory AccountSipSipCredentialList.fromJson(Map<String, dynamic> json) { return AccountSipSipCredentialList(
  accountSid: json['account_sid'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  friendlyName: json['friendly_name'] as String?,
  sid: json['sid'] as String?,
  subresourceUris: (json['subresource_uris'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  uri: json['uri'] as String?,
); }

/// The unique id of the [Account](https://www.twilio.com/docs/iam/api/account) that owns this resource.
final String? accountSid;

/// The date that this resource was created, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final String? dateCreated;

/// The date that this resource was last updated, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final String? dateUpdated;

/// A human readable descriptive text that describes the CredentialList, up to 64 characters long.
final String? friendlyName;

/// A 34 character string that uniquely identifies this resource.
final String? sid;

/// A list of credentials associated with this credential list.
final Map<String,dynamic>? subresourceUris;

/// The URI for this resource, relative to `https://api.twilio.com`.
final String? uri;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
  'friendly_name': ?friendlyName,
  'sid': ?sid,
  'subresource_uris': ?subresourceUris,
  'uri': ?uri,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'date_created', 'date_updated', 'friendly_name', 'sid', 'subresource_uris', 'uri'}.contains(key)); } 
AccountSipSipCredentialList copyWith({String? Function()? accountSid, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? friendlyName, String? Function()? sid, Map<String, dynamic>? Function()? subresourceUris, String? Function()? uri, }) { return AccountSipSipCredentialList(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  sid: sid != null ? sid() : this.sid,
  subresourceUris: subresourceUris != null ? subresourceUris() : this.subresourceUris,
  uri: uri != null ? uri() : this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSipSipCredentialList &&
          accountSid == other.accountSid &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          friendlyName == other.friendlyName &&
          sid == other.sid &&
          subresourceUris == other.subresourceUris &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, dateCreated, dateUpdated, friendlyName, sid, subresourceUris, uri); } 
@override String toString() { return 'AccountSipSipCredentialList(accountSid: $accountSid, dateCreated: $dateCreated, dateUpdated: $dateUpdated, friendlyName: $friendlyName, sid: $sid, subresourceUris: $subresourceUris, uri: $uri)'; } 
 }
