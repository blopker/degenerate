// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountMessageMedia {const AccountMessageMedia({this.accountSid, this.contentType, this.dateCreated, this.dateUpdated, this.parentSid, this.sid, this.uri, });

factory AccountMessageMedia.fromJson(Map<String, dynamic> json) { return AccountMessageMedia(
  accountSid: json['account_sid'] as String?,
  contentType: json['content_type'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
  parentSid: json['parent_sid'] as String?,
  sid: json['sid'] as String?,
  uri: json['uri'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) associated with this Media resource.
final String? accountSid;

/// The default [MIME type](https://en.wikipedia.org/wiki/Internet_media_type) of the media, for example `image/jpeg`, `image/png`, or `image/gif`.
final String? contentType;

/// The date and time in GMT when this Media resource was created, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateCreated;

/// The date and time in GMT when this Media resource was last updated, specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
final String? dateUpdated;

/// The SID of the Message resource that is associated with this Media resource.
final String? parentSid;

/// The unique string that identifies this Media resource.
final String? sid;

/// The URI of this Media resource, relative to `https://api.twilio.com`.
final String? uri;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'content_type': ?contentType,
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
  'parent_sid': ?parentSid,
  'sid': ?sid,
  'uri': ?uri,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'content_type', 'date_created', 'date_updated', 'parent_sid', 'sid', 'uri'}.contains(key)); } 
AccountMessageMedia copyWith({String? Function()? accountSid, String? Function()? contentType, String? Function()? dateCreated, String? Function()? dateUpdated, String? Function()? parentSid, String? Function()? sid, String? Function()? uri, }) { return AccountMessageMedia(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  contentType: contentType != null ? contentType() : this.contentType,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
  parentSid: parentSid != null ? parentSid() : this.parentSid,
  sid: sid != null ? sid() : this.sid,
  uri: uri != null ? uri() : this.uri,
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
