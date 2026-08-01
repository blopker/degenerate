// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountSipSipCredentialListSipCredential {const AccountSipSipCredentialListSipCredential({this.sid = const Omittable.absent(), this.accountSid = const Omittable.absent(), this.credentialListSid = const Omittable.absent(), this.username = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountSipSipCredentialListSipCredential.fromJson(Map<String, dynamic> json) { return AccountSipSipCredentialListSipCredential(
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  credentialListSid: json.containsKey('credential_list_sid') ? Omittable(json['credential_list_sid'] as String?) : const Omittable.absent(),
  username: json.containsKey('username') ? Omittable(json['username'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// A 34 character string that uniquely identifies this resource.
final Omittable<String?> sid;

/// The unique id of the Account that is responsible for this resource.
final Omittable<String?> accountSid;

/// The unique id that identifies the credential list that includes this credential.
final Omittable<String?> credentialListSid;

/// The username for this credential.
final Omittable<String?> username;

/// The date that this resource was created, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final Omittable<String?> dateCreated;

/// The date that this resource was last updated, given as GMT in [RFC 2822](https://www.php.net/manual/en/class.datetime.php#datetime.constants.rfc2822) format.
final Omittable<String?> dateUpdated;

/// The URI for this resource, relative to `https://api.twilio.com`
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (sid.isPresent) 'sid': sid.value,
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (credentialListSid.isPresent) 'credential_list_sid': credentialListSid.value,
  if (username.isPresent) 'username': username.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'sid', 'account_sid', 'credential_list_sid', 'username', 'date_created', 'date_updated', 'uri'}.contains(key)); } 
AccountSipSipCredentialListSipCredential copyWith({Omittable<String?>? sid, Omittable<String?>? accountSid, Omittable<String?>? credentialListSid, Omittable<String?>? username, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? uri, }) { return AccountSipSipCredentialListSipCredential(
  sid: sid ?? this.sid,
  accountSid: accountSid ?? this.accountSid,
  credentialListSid: credentialListSid ?? this.credentialListSid,
  username: username ?? this.username,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  uri: uri ?? this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSipSipCredentialListSipCredential &&
          sid == other.sid &&
          accountSid == other.accountSid &&
          credentialListSid == other.credentialListSid &&
          username == other.username &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(sid, accountSid, credentialListSid, username, dateCreated, dateUpdated, uri); } 
@override String toString() { return 'AccountSipSipCredentialListSipCredential(sid: $sid, accountSid: $accountSid, credentialListSid: $credentialListSid, username: $username, dateCreated: $dateCreated, dateUpdated: $dateUpdated, uri: $uri)'; } 
 }
