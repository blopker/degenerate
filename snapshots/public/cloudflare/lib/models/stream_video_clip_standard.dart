// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_clipped_from_video_uid.dart';import 'stream_creator.dart';import 'stream_end_time_seconds.dart';import 'stream_max_duration_seconds.dart';import 'stream_require_signed_ur_ls.dart';import 'stream_start_time_seconds.dart';import 'stream_thumbnail_timestamp_pct.dart';import 'stream_watermark_at_upload2.dart';@immutable final class StreamVideoClipStandard {const StreamVideoClipStandard({required this.clippedFromVideoUid, required this.endTimeSeconds, required this.startTimeSeconds, this.allowedOrigins, this.creator, this.maxDurationSeconds, this.requireSignedUrLs, this.thumbnailTimestampPct, this.watermark, });

factory StreamVideoClipStandard.fromJson(Map<String, dynamic> json) { return StreamVideoClipStandard(
  allowedOrigins: (json['allowedOrigins'] as List<dynamic>?)?.map((e) => e as String).toList(),
  clippedFromVideoUid: StreamClippedFromVideoUid.fromJson(json['clippedFromVideoUID'] as String),
  creator: json['creator'] != null ? StreamCreator.fromJson(json['creator'] as String) : null,
  endTimeSeconds: StreamEndTimeSeconds.fromJson(json['endTimeSeconds'] as num),
  maxDurationSeconds: json['maxDurationSeconds'] != null ? StreamMaxDurationSeconds.fromJson(json['maxDurationSeconds'] as num) : null,
  requireSignedUrLs: json['requireSignedURLs'] != null ? StreamRequireSignedUrLs.fromJson(json['requireSignedURLs'] as bool) : null,
  startTimeSeconds: StreamStartTimeSeconds.fromJson(json['startTimeSeconds'] as num),
  thumbnailTimestampPct: json['thumbnailTimestampPct'] != null ? StreamThumbnailTimestampPct.fromJson(json['thumbnailTimestampPct'] as num) : null,
  watermark: json['watermark'] != null ? StreamWatermarkAtUpload2.fromJson(json['watermark'] as Map<String, dynamic>) : null,
); }

/// Lists the origins allowed to display the video. Enter allowed origin domains in an array and use `*` for wildcard subdomains. Empty arrays allow the video to be viewed on any origin.
final List<String>? allowedOrigins;

/// The unique video identifier (UID).
final StreamClippedFromVideoUid clippedFromVideoUid;

/// A user-defined identifier for the media creator.
final StreamCreator? creator;

/// Specifies the end time for the video clip in seconds.
final StreamEndTimeSeconds endTimeSeconds;

/// The maximum duration in seconds for a video upload. Can be set for a video that is not yet uploaded to limit its duration. Uploads that exceed the specified duration will fail during processing. A value of `-1` means the value is unknown.
final StreamMaxDurationSeconds? maxDurationSeconds;

/// Indicates whether the video can be a accessed using the UID. When set to `true`, a signed token must be generated with a signing key to view the video.
final StreamRequireSignedUrLs? requireSignedUrLs;

/// Specifies the start time for the video clip in seconds.
final StreamStartTimeSeconds startTimeSeconds;

/// The timestamp for a thumbnail image calculated as a percentage value of the video's duration. To convert from a second-wise timestamp to a percentage, divide the desired timestamp by the total duration of the video.  If this value is not set, the default thumbnail image is taken from 0s of the video.
final StreamThumbnailTimestampPct? thumbnailTimestampPct;

final StreamWatermarkAtUpload2? watermark;

Map<String, dynamic> toJson() { return {
  'allowedOrigins': ?allowedOrigins,
  'clippedFromVideoUID': clippedFromVideoUid.toJson(),
  if (creator != null) 'creator': creator?.toJson(),
  'endTimeSeconds': endTimeSeconds.toJson(),
  if (maxDurationSeconds != null) 'maxDurationSeconds': maxDurationSeconds?.toJson(),
  if (requireSignedUrLs != null) 'requireSignedURLs': requireSignedUrLs?.toJson(),
  'startTimeSeconds': startTimeSeconds.toJson(),
  if (thumbnailTimestampPct != null) 'thumbnailTimestampPct': thumbnailTimestampPct?.toJson(),
  if (watermark != null) 'watermark': watermark?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('clippedFromVideoUID') &&
      json.containsKey('endTimeSeconds') &&
      json.containsKey('startTimeSeconds'); } 
StreamVideoClipStandard copyWith({List<String> Function()? allowedOrigins, StreamClippedFromVideoUid? clippedFromVideoUid, StreamCreator Function()? creator, StreamEndTimeSeconds? endTimeSeconds, StreamMaxDurationSeconds Function()? maxDurationSeconds, StreamRequireSignedUrLs Function()? requireSignedUrLs, StreamStartTimeSeconds? startTimeSeconds, StreamThumbnailTimestampPct Function()? thumbnailTimestampPct, StreamWatermarkAtUpload2 Function()? watermark, }) { return StreamVideoClipStandard(
  allowedOrigins: allowedOrigins != null ? allowedOrigins() : this.allowedOrigins,
  clippedFromVideoUid: clippedFromVideoUid ?? this.clippedFromVideoUid,
  creator: creator != null ? creator() : this.creator,
  endTimeSeconds: endTimeSeconds ?? this.endTimeSeconds,
  maxDurationSeconds: maxDurationSeconds != null ? maxDurationSeconds() : this.maxDurationSeconds,
  requireSignedUrLs: requireSignedUrLs != null ? requireSignedUrLs() : this.requireSignedUrLs,
  startTimeSeconds: startTimeSeconds ?? this.startTimeSeconds,
  thumbnailTimestampPct: thumbnailTimestampPct != null ? thumbnailTimestampPct() : this.thumbnailTimestampPct,
  watermark: watermark != null ? watermark() : this.watermark,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamVideoClipStandard &&
          listEquals(allowedOrigins, other.allowedOrigins) &&
          clippedFromVideoUid == other.clippedFromVideoUid &&
          creator == other.creator &&
          endTimeSeconds == other.endTimeSeconds &&
          maxDurationSeconds == other.maxDurationSeconds &&
          requireSignedUrLs == other.requireSignedUrLs &&
          startTimeSeconds == other.startTimeSeconds &&
          thumbnailTimestampPct == other.thumbnailTimestampPct &&
          watermark == other.watermark; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedOrigins ?? const []), clippedFromVideoUid, creator, endTimeSeconds, maxDurationSeconds, requireSignedUrLs, startTimeSeconds, thumbnailTimestampPct, watermark); } 
@override String toString() { return 'StreamVideoClipStandard(allowedOrigins: $allowedOrigins, clippedFromVideoUid: $clippedFromVideoUid, creator: $creator, endTimeSeconds: $endTimeSeconds, maxDurationSeconds: $maxDurationSeconds, requireSignedUrLs: $requireSignedUrLs, startTimeSeconds: $startTimeSeconds, thumbnailTimestampPct: $thumbnailTimestampPct, watermark: $watermark)'; } 
 }
