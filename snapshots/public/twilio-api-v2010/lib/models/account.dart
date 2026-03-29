// GENERATED CODE - DO NOT MODIFY BY HAND

import 'account_enum_status.dart';/// The type of this account. Either `Trial` or `Full` if it's been upgraded
final class AccountEnumType {const AccountEnumType._(this.value);

factory AccountEnumType.fromJson(String json) { return switch (json) {
  'Trial' => trial,
  'Full' => full,
  _ => AccountEnumType._(json),
}; }

static const AccountEnumType trial = AccountEnumType._('Trial');

static const AccountEnumType full = AccountEnumType._('Full');

static const List<AccountEnumType> values = [trial, full];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountEnumType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountEnumType($value)'; } 
 }
final class Account {const Account({this.authToken, this.dateCreated, this.dateUpdated, this.friendlyName, this.ownerAccountSid, this.sid, this.status, this.subresourceUris, this.type, this.uri, });

factory Account.fromJson(Map<String, dynamic> json) { return Account(
  authToken: json['auth_token'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  friendlyName: json['friendly_name'] as String?,
  ownerAccountSid: json['owner_account_sid'] as String?,
  sid: json['sid'] as String?,
  status: json['status'] != null ? AccountEnumStatus.fromJson(json['status'] as String) : null,
  subresourceUris: (json['subresource_uris'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  type: json['type'] != null ? AccountEnumType.fromJson(json['type'] as String) : null,
  uri: json['uri'] as String?,
); }

/// The authorization token for this account. This token should be kept a secret, so no sharing.
final String? authToken;

/// The date that this account was created, in GMT in RFC 2822 format
final String? dateCreated;

/// The date that this account was last updated, in GMT in RFC 2822 format.
final String? dateUpdated;

/// A human readable description of this account, up to 64 characters long. By default the FriendlyName is your email address.
final String? friendlyName;

/// The unique 34 character id that represents the parent of this account. The OwnerAccountSid of a parent account is it's own sid.
final String? ownerAccountSid;

/// A 34 character string that uniquely identifies this resource.
final String? sid;

final AccountEnumStatus? status;

/// A Map of various subresources available for the given Account Instance
final Map<String,dynamic>? subresourceUris;

final AccountEnumType? type;

/// The URI for this resource, relative to `https://api.twilio.com`
final String? uri;

Map<String, dynamic> toJson() { return {
  'auth_token': ?authToken,
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
  'friendly_name': ?friendlyName,
  'owner_account_sid': ?ownerAccountSid,
  'sid': ?sid,
  if (status != null) 'status': status?.toJson(),
  'subresource_uris': ?subresourceUris,
  if (type != null) 'type': type?.toJson(),
  'uri': ?uri,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'auth_token', 'date_created', 'date_updated', 'friendly_name', 'owner_account_sid', 'sid', 'status', 'subresource_uris', 'type', 'uri'}.contains(key)); } 
Account copyWith({String? Function()? authToken, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? friendlyName, String? Function()? ownerAccountSid, String? Function()? sid, AccountEnumStatus Function()? status, Map<String, dynamic>? Function()? subresourceUris, AccountEnumType Function()? type, String? Function()? uri, }) { return Account(
  authToken: authToken != null ? authToken() : this.authToken,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  ownerAccountSid: ownerAccountSid != null ? ownerAccountSid() : this.ownerAccountSid,
  sid: sid != null ? sid() : this.sid,
  status: status != null ? status() : this.status,
  subresourceUris: subresourceUris != null ? subresourceUris() : this.subresourceUris,
  type: type != null ? type() : this.type,
  uri: uri != null ? uri() : this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Account &&
          authToken == other.authToken &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          friendlyName == other.friendlyName &&
          ownerAccountSid == other.ownerAccountSid &&
          sid == other.sid &&
          status == other.status &&
          subresourceUris == other.subresourceUris &&
          type == other.type &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(authToken, dateCreated, dateUpdated, friendlyName, ownerAccountSid, sid, status, subresourceUris, type, uri); } 
@override String toString() { return 'Account(authToken: $authToken, dateCreated: $dateCreated, dateUpdated: $dateUpdated, friendlyName: $friendlyName, ownerAccountSid: $ownerAccountSid, sid: $sid, status: $status, subresourceUris: $subresourceUris, type: $type, uri: $uri)'; } 
 }
