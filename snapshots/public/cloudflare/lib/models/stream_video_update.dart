// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_creator.dart';import 'stream_max_duration_seconds.dart';import 'stream_one_time_upload_expiry.dart';import 'stream_require_signed_ur_ls.dart';import 'stream_scheduled_deletion.dart';import 'stream_thumbnail_timestamp_pct.dart';@immutable final class StreamVideoUpdate {const StreamVideoUpdate({this.allowedOrigins, this.creator, this.maxDurationSeconds, this.meta, this.requireSignedUrLs, this.scheduledDeletion, this.thumbnailTimestampPct, this.uploadExpiry, });

factory StreamVideoUpdate.fromJson(Map<String, dynamic> json) { return StreamVideoUpdate(
  allowedOrigins: (json['allowedOrigins'] as List<dynamic>?)?.map((e) => e as String).toList(),
  creator: json['creator'] != null ? StreamCreator.fromJson(json['creator'] as String) : null,
  maxDurationSeconds: json['maxDurationSeconds'] != null ? StreamMaxDurationSeconds.fromJson(json['maxDurationSeconds'] as num) : null,
  meta: (json['meta'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  requireSignedUrLs: json['requireSignedURLs'] != null ? StreamRequireSignedUrLs.fromJson(json['requireSignedURLs'] as bool) : null,
  scheduledDeletion: json['scheduledDeletion'] != null ? StreamScheduledDeletion.fromJson(json['scheduledDeletion'] as String) : null,
  thumbnailTimestampPct: json['thumbnailTimestampPct'] != null ? StreamThumbnailTimestampPct.fromJson(json['thumbnailTimestampPct'] as num) : null,
  uploadExpiry: json['uploadExpiry'] != null ? StreamOneTimeUploadExpiry.fromJson(json['uploadExpiry'] as String) : null,
); }

/// Lists the origins allowed to display the video. Enter allowed origin domains in an array and use `*` for wildcard subdomains. Empty arrays allow the video to be viewed on any origin.
final List<String>? allowedOrigins;

/// A user-defined identifier for the media creator.
final StreamCreator? creator;

/// The maximum duration in seconds for a video upload. Can be set for a video that is not yet uploaded to limit its duration. Uploads that exceed the specified duration will fail during processing. A value of `-1` means the value is unknown.
final StreamMaxDurationSeconds? maxDurationSeconds;

/// A user modifiable key-value store used to reference other systems of record for managing videos.
final Map<String,dynamic>? meta;

/// Indicates whether the video can be a accessed using the UID. When set to `true`, a signed token must be generated with a signing key to view the video.
final StreamRequireSignedUrLs? requireSignedUrLs;

/// Indicates the date and time at which the video will be deleted. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion. If specified, must be at least 30 days from upload time.
final StreamScheduledDeletion? scheduledDeletion;

/// The timestamp for a thumbnail image calculated as a percentage value of the video's duration. To convert from a second-wise timestamp to a percentage, divide the desired timestamp by the total duration of the video.  If this value is not set, the default thumbnail image is taken from 0s of the video.
final StreamThumbnailTimestampPct? thumbnailTimestampPct;

/// The date and time when the video upload URL is no longer valid for direct user uploads.
final StreamOneTimeUploadExpiry? uploadExpiry;

Map<String, dynamic> toJson() { return {
  'allowedOrigins': ?allowedOrigins,
  if (creator != null) 'creator': creator?.toJson(),
  if (maxDurationSeconds != null) 'maxDurationSeconds': maxDurationSeconds?.toJson(),
  'meta': ?meta,
  if (requireSignedUrLs != null) 'requireSignedURLs': requireSignedUrLs?.toJson(),
  if (scheduledDeletion != null) 'scheduledDeletion': scheduledDeletion?.toJson(),
  if (thumbnailTimestampPct != null) 'thumbnailTimestampPct': thumbnailTimestampPct?.toJson(),
  if (uploadExpiry != null) 'uploadExpiry': uploadExpiry?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowedOrigins', 'creator', 'maxDurationSeconds', 'meta', 'requireSignedURLs', 'scheduledDeletion', 'thumbnailTimestampPct', 'uploadExpiry'}.contains(key)); } 
StreamVideoUpdate copyWith({List<String> Function()? allowedOrigins, StreamCreator Function()? creator, StreamMaxDurationSeconds Function()? maxDurationSeconds, Map<String, dynamic> Function()? meta, StreamRequireSignedUrLs Function()? requireSignedUrLs, StreamScheduledDeletion Function()? scheduledDeletion, StreamThumbnailTimestampPct Function()? thumbnailTimestampPct, StreamOneTimeUploadExpiry Function()? uploadExpiry, }) { return StreamVideoUpdate(
  allowedOrigins: allowedOrigins != null ? allowedOrigins() : this.allowedOrigins,
  creator: creator != null ? creator() : this.creator,
  maxDurationSeconds: maxDurationSeconds != null ? maxDurationSeconds() : this.maxDurationSeconds,
  meta: meta != null ? meta() : this.meta,
  requireSignedUrLs: requireSignedUrLs != null ? requireSignedUrLs() : this.requireSignedUrLs,
  scheduledDeletion: scheduledDeletion != null ? scheduledDeletion() : this.scheduledDeletion,
  thumbnailTimestampPct: thumbnailTimestampPct != null ? thumbnailTimestampPct() : this.thumbnailTimestampPct,
  uploadExpiry: uploadExpiry != null ? uploadExpiry() : this.uploadExpiry,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamVideoUpdate &&
          listEquals(allowedOrigins, other.allowedOrigins) &&
          creator == other.creator &&
          maxDurationSeconds == other.maxDurationSeconds &&
          meta == other.meta &&
          requireSignedUrLs == other.requireSignedUrLs &&
          scheduledDeletion == other.scheduledDeletion &&
          thumbnailTimestampPct == other.thumbnailTimestampPct &&
          uploadExpiry == other.uploadExpiry; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedOrigins ?? const []), creator, maxDurationSeconds, meta, requireSignedUrLs, scheduledDeletion, thumbnailTimestampPct, uploadExpiry); } 
@override String toString() { return 'StreamVideoUpdate(allowedOrigins: $allowedOrigins, creator: $creator, maxDurationSeconds: $maxDurationSeconds, meta: $meta, requireSignedUrLs: $requireSignedUrLs, scheduledDeletion: $scheduledDeletion, thumbnailTimestampPct: $thumbnailTimestampPct, uploadExpiry: $uploadExpiry)'; } 
 }
