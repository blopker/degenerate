// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountMessageMedia {const AccountMessageMedia({this.accountSid = const Omittable.absent(), this.contentType = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.parentSid = const Omittable.absent(), this.sid = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountMessageMedia.fromJson(Map<String, dynamic> json) { return AccountMessageMedia(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  contentType: json.containsKey('content_type') ? Omittable(json['content_type'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  parentSid: json.containsKey('parent_sid') ? Omittable(json['parent_sid'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) associated with this Media resource.
final Omittable<String?> accountSid;

/// The default [MIME type](https://en.wikipedia.org/wiki/Internet_media_type) of the media, for example `image/jpeg`, `image/png`, or `image/gif`.
final Omittable<String?> contentType;

/// The date and time in GMT when this Media resource was created, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateCreated;

/// The date and time in GMT when this Media resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final Omittable<String?> dateUpdated;

/// The SID of the Message resource that is associated with this Media resource.
final Omittable<String?> parentSid;

/// The unique string that identifies this Media resource.
final Omittable<String?> sid;

/// The URI of this Media resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (contentType.isPresent) 'content_type': contentType.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (parentSid.isPresent) 'parent_sid': parentSid.value,
  if (sid.isPresent) 'sid': sid.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'content_type', 'date_created', 'date_updated', 'parent_sid', 'sid', 'uri'}.contains(key)); } 
AccountMessageMedia copyWith({Omittable<String?>? accountSid, Omittable<String?>? contentType, Omittable<String?>? dateCreated, Omittable<String?>? dateUpdated, Omittable<String?>? parentSid, Omittable<String?>? sid, Omittable<String?>? uri, }) { return AccountMessageMedia(
  accountSid: accountSid ?? this.accountSid,
  contentType: contentType ?? this.contentType,
  dateCreated: dateCreated ?? this.dateCreated,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  parentSid: parentSid ?? this.parentSid,
  sid: sid ?? this.sid,
  uri: uri ?? this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountMessageMedia &&
          accountSid == other.accountSid &&
          contentType == other.contentType &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated &&
          parentSid == other.parentSid &&
          sid == other.sid &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, contentType, dateCreated, dateUpdated, parentSid, sid, uri); } 
@override String toString() { return 'AccountMessageMedia(accountSid: $accountSid, contentType: $contentType, dateCreated: $dateCreated, dateUpdated: $dateUpdated, parentSid: $parentSid, sid: $sid, uri: $uri)'; } 
 }
