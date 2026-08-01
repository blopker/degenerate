// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountNewKey {const AccountNewKey({this.sid = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.secret = const Omittable.absent(), });

factory AccountNewKey.fromJson(Map<String, dynamic> json) { return AccountNewKey(
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  secret: json.containsKey('secret') ? Omittable(json['secret'] as String?) : const Omittable.absent(),
); }

/// The unique string that that we created to identify the NewKey resource. You will use this as the basic-auth `user` when authenticating to the API.
final Omittable<String?> sid;

/// The string that you assigned to describe the resource.
final Omittable<String?> friendlyName;

/// The date and time in GMT that the API Key was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT that the new API Key was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The secret your application uses to sign Access Tokens and to authenticate to the REST API (you will use this as the basic-auth `password`).  **Note that for security reasons, this field is ONLY returned when the API Key is first created.**
final Omittable<String?> secret;

Map<String, dynamic> toJson() { return {
  if (sid.isPresent) 'sid': sid.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (secret.isPresent) 'secret': secret.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'sid', 'friendly_name', 'date_created', 'date_updated', 'secret'}.contains(key)); } 
AccountNewKey copyWith({Omittable<String?>? sid, Omittable<String?>? friendlyName, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? secret, }) { return AccountNewKey(
  sid: sid ?? this.sid,
  friendlyName: friendlyName ?? this.friendlyName,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  secret: secret ?? this.secret,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountNewKey &&
          sid == other.sid &&
          friendlyName == other.friendlyName &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          secret == other.secret; } 
@override int get hashCode { return Object.hash(sid, friendlyName, dateCreated, dateUpdated, secret); } 
@override String toString() { return 'AccountNewKey(sid: $sid, friendlyName: $friendlyName, dateCreated: $dateCreated, dateUpdated: $dateUpdated, secret: $secret)'; } 
 }
