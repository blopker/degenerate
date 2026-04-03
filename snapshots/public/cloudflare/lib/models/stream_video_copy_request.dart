// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_creator.dart';import 'stream_require_signed_ur_ls.dart';import 'stream_scheduled_deletion.dart';import 'stream_thumbnail_timestamp_pct.dart';import 'stream_watermark_at_upload.dart';@immutable final class StreamVideoCopyRequest {const StreamVideoCopyRequest({required this.url, this.allowedOrigins, this.creator, this.meta, this.requireSignedUrLs, this.scheduledDeletion, this.thumbnailTimestampPct, this.watermark, });

factory StreamVideoCopyRequest.fromJson(Map<String, dynamic> json) { return StreamVideoCopyRequest(
  allowedOrigins: (json['allowedOrigins'] as List<dynamic>?)?.map((e) => e as String).toList(),
  creator: json['creator'] != null ? StreamCreator.fromJson(json['creator'] as String) : null,
  meta: (json['meta'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  requireSignedUrLs: json['requireSignedURLs'] != null ? StreamRequireSignedUrLs.fromJson(json['requireSignedURLs'] as bool) : null,
  scheduledDeletion: json['scheduledDeletion'] != null ? StreamScheduledDeletion.fromJson(json['scheduledDeletion'] as String) : null,
  thumbnailTimestampPct: json['thumbnailTimestampPct'] != null ? StreamThumbnailTimestampPct.fromJson(json['thumbnailTimestampPct'] as num) : null,
  url: Uri.parse(json['url'] as String),
  watermark: json['watermark'] != null ? StreamWatermarkAtUpload.fromJson(json['watermark'] as Map<String, dynamic>) : null,
); }

/// Lists the origins allowed to display the video. Enter allowed origin domains in an array and use `*` for wildcard subdomains. Empty arrays allow the video to be viewed on any origin.
final List<String>? allowedOrigins;

/// A user-defined identifier for the media creator.
final StreamCreator? creator;

/// A user modifiable key-value store used to reference other systems of record for managing videos.
final Map<String,dynamic>? meta;

/// Indicates whether the video can be a accessed using the UID. When set to `true`, a signed token must be generated with a signing key to view the video.
final StreamRequireSignedUrLs? requireSignedUrLs;

/// Indicates the date and time at which the video will be deleted. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion. If specified, must be at least 30 days from upload time.
final StreamScheduledDeletion? scheduledDeletion;

/// The timestamp for a thumbnail image calculated as a percentage value of the video's duration. To convert from a second-wise timestamp to a percentage, divide the desired timestamp by the total duration of the video.  If this value is not set, the default thumbnail image is taken from 0s of the video.
final StreamThumbnailTimestampPct? thumbnailTimestampPct;

/// A video's URL. The server must be publicly routable and support `HTTP HEAD` requests and `HTTP GET` range requests. The server should respond to `HTTP HEAD` requests with a `content-range` header that includes the size of the file.
final Uri url;

final StreamWatermarkAtUpload? watermark;

Map<String, dynamic> toJson() { return {
  'allowedOrigins': ?allowedOrigins,
  if (creator != null) 'creator': creator?.toJson(),
  'meta': ?meta,
  if (requireSignedUrLs != null) 'requireSignedURLs': requireSignedUrLs?.toJson(),
  if (scheduledDeletion != null) 'scheduledDeletion': scheduledDeletion?.toJson(),
  if (thumbnailTimestampPct != null) 'thumbnailTimestampPct': thumbnailTimestampPct?.toJson(),
  'url': url.toString(),
  if (watermark != null) 'watermark': watermark?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String; } 
StreamVideoCopyRequest copyWith({List<String> Function()? allowedOrigins, StreamCreator Function()? creator, Map<String, dynamic> Function()? meta, StreamRequireSignedUrLs Function()? requireSignedUrLs, StreamScheduledDeletion Function()? scheduledDeletion, StreamThumbnailTimestampPct Function()? thumbnailTimestampPct, Uri? url, StreamWatermarkAtUpload Function()? watermark, }) { return StreamVideoCopyRequest(
  allowedOrigins: allowedOrigins != null ? allowedOrigins() : this.allowedOrigins,
  creator: creator != null ? creator() : this.creator,
  meta: meta != null ? meta() : this.meta,
  requireSignedUrLs: requireSignedUrLs != null ? requireSignedUrLs() : this.requireSignedUrLs,
  scheduledDeletion: scheduledDeletion != null ? scheduledDeletion() : this.scheduledDeletion,
  thumbnailTimestampPct: thumbnailTimestampPct != null ? thumbnailTimestampPct() : this.thumbnailTimestampPct,
  url: url ?? this.url,
  watermark: watermark != null ? watermark() : this.watermark,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamVideoCopyRequest &&
          listEquals(allowedOrigins, other.allowedOrigins) &&
          creator == other.creator &&
          meta == other.meta &&
          requireSignedUrLs == other.requireSignedUrLs &&
          scheduledDeletion == other.scheduledDeletion &&
          thumbnailTimestampPct == other.thumbnailTimestampPct &&
          url == other.url &&
          watermark == other.watermark; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedOrigins ?? const []), creator, meta, requireSignedUrLs, scheduledDeletion, thumbnailTimestampPct, url, watermark); } 
@override String toString() { return 'StreamVideoCopyRequest(allowedOrigins: $allowedOrigins, creator: $creator, meta: $meta, requireSignedUrLs: $requireSignedUrLs, scheduledDeletion: $scheduledDeletion, thumbnailTimestampPct: $thumbnailTimestampPct, url: $url, watermark: $watermark)'; } 
 }
