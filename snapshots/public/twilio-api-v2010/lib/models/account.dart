// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_enum_status.dart';/// The type of this account. Either `Trial` or `Full` if it's been upgraded
@immutable final class AccountEnumType {const AccountEnumType._(this.value);

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
@immutable final class Account {const Account({this.authToken = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.ownerAccountSid = const Omittable.absent(), this.sid = const Omittable.absent(), this.status, this.subresourceUris = const Omittable.absent(), this.type, this.uri = const Omittable.absent(), });

factory Account.fromJson(Map<String, dynamic> json) { return Account(
  authToken: json.containsKey('auth_token') ? Omittable(json['auth_token'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  ownerAccountSid: json.containsKey('owner_account_sid') ? Omittable(json['owner_account_sid'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  status: json['status'] != null ? AccountEnumStatus.fromJson(json['status'] as String) : null,
  subresourceUris: json.containsKey('subresource_uris') ? Omittable(json['subresource_uris'] as Map<String, dynamic>?) : const Omittable.absent(),
  type: json['type'] != null ? AccountEnumType.fromJson(json['type'] as String) : null,
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The authorization token for this account. This token should be kept a secret, so no sharing.
final Omittable<String?> authToken;

/// The date that this account was created, in GMT in RFC 2822 format
final Omittable<String?> dateCreated;

/// The date that this account was last updated, in GMT in RFC 2822 format.
final Omittable<String?> dateUpdated;

/// A human readable description of this account, up to 64 characters long. By default the FriendlyName is your email address.
final Omittable<String?> friendlyName;

/// The unique 34 character id that represents the parent of this account. The OwnerAccountSid of a parent account is it's own sid.
final Omittable<String?> ownerAccountSid;

/// A 34 character string that uniquely identifies this resource.
final Omittable<String?> sid;

final AccountEnumStatus? status;

/// A Map of various subresources available for the given Account Instance
final Omittable<Map<String,dynamic>?> subresourceUris;

final AccountEnumType? type;

/// The URI for this resource, relative to `https://api.twilio.com`
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (authToken.isPresent) 'auth_token': authToken.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (ownerAccountSid.isPresent) 'owner_account_sid': ownerAccountSid.value,
  if (sid.isPresent) 'sid': sid.value,
  if (status != null) 'status': status?.toJson(),
  if (subresourceUris.isPresent) 'subresource_uris': subresourceUris.value,
  if (type != null) 'type': type?.toJson(),
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'auth_token', 'date_created', 'date_updated', 'friendly_name', 'owner_account_sid', 'sid', 'status', 'subresource_uris', 'type', 'uri'}.contains(key)); } 
Account copyWith({Omittable<String?>? authToken, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? friendlyName, Omittable<String?>? ownerAccountSid, Omittable<String?>? sid, AccountEnumStatus? Function()? status, Omittable<Map<String,dynamic>?>? subresourceUris, AccountEnumType? Function()? type, Omittable<String?>? uri, }) { return Account(
  authToken: authToken ?? this.authToken,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  friendlyName: friendlyName ?? this.friendlyName,
  ownerAccountSid: ownerAccountSid ?? this.ownerAccountSid,
  sid: sid ?? this.sid,
  status: status != null ? status() : this.status,
  subresourceUris: subresourceUris ?? this.subresourceUris,
  type: type != null ? type() : this.type,
  uri: uri ?? this.uri,
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
