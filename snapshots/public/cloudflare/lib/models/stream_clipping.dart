// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_clipped_from_video_uid.dart';import 'stream_creator.dart';import 'stream_end_time_seconds.dart';import 'stream_live_input_modified.dart';import 'stream_max_duration_seconds.dart';import 'stream_media_state.dart';import 'stream_playback.dart';import 'stream_preview.dart';import 'stream_require_signed_ur_ls.dart';import 'stream_start_time_seconds.dart';import 'stream_thumbnail_timestamp_pct.dart';import 'stream_watermark_at_upload2.dart';/// The date and time the clip was created.
extension type StreamClippingCreated(DateTime value) {
factory StreamClippingCreated.fromJson(String json) => StreamClippingCreated(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
@immutable final class StreamClipping {const StreamClipping({this.allowedOrigins, this.clippedFromVideoUid, this.created, this.creator, this.endTimeSeconds, this.maxDurationSeconds, this.meta, this.modified, this.playback, this.preview, this.requireSignedUrLs, this.startTimeSeconds, this.status, this.thumbnailTimestampPct, this.watermark, });

factory StreamClipping.fromJson(Map<String, dynamic> json) { return StreamClipping(
  allowedOrigins: (json['allowedOrigins'] as List<dynamic>?)?.map((e) => e as String).toList(),
  clippedFromVideoUid: json['clippedFromVideoUID'] != null ? StreamClippedFromVideoUid.fromJson(json['clippedFromVideoUID'] as String) : null,
  created: json['created'] != null ? StreamClippingCreated.fromJson(json['created'] as String) : null,
  creator: json['creator'] != null ? StreamCreator.fromJson(json['creator'] as String) : null,
  endTimeSeconds: json['endTimeSeconds'] != null ? StreamEndTimeSeconds.fromJson(json['endTimeSeconds'] as num) : null,
  maxDurationSeconds: json['maxDurationSeconds'] != null ? StreamMaxDurationSeconds.fromJson(json['maxDurationSeconds'] as num) : null,
  meta: json['meta'] as Map<String, dynamic>?,
  modified: json['modified'] != null ? StreamLiveInputModified.fromJson(json['modified'] as String) : null,
  playback: json['playback'] != null ? StreamPlayback.fromJson(json['playback'] as Map<String, dynamic>) : null,
  preview: json['preview'] != null ? StreamPreview.fromJson(json['preview'] as String) : null,
  requireSignedUrLs: json['requireSignedURLs'] != null ? StreamRequireSignedUrLs.fromJson(json['requireSignedURLs'] as bool) : null,
  startTimeSeconds: json['startTimeSeconds'] != null ? StreamStartTimeSeconds.fromJson(json['startTimeSeconds'] as num) : null,
  status: json['status'] != null ? StreamMediaState.fromJson(json['status'] as String) : null,
  thumbnailTimestampPct: json['thumbnailTimestampPct'] != null ? StreamThumbnailTimestampPct.fromJson(json['thumbnailTimestampPct'] as num) : null,
  watermark: json['watermark'] != null ? StreamWatermarkAtUpload2.fromJson(json['watermark'] as Map<String, dynamic>) : null,
); }

/// Lists the origins allowed to display the video. Enter allowed origin domains in an array and use `*` for wildcard subdomains. Empty arrays allow the video to be viewed on any origin.
final List<String>? allowedOrigins;

/// The unique video identifier (UID).
final StreamClippedFromVideoUid? clippedFromVideoUid;

final StreamClippingCreated? created;

final StreamCreator? creator;

final StreamEndTimeSeconds? endTimeSeconds;

final StreamMaxDurationSeconds? maxDurationSeconds;

final Map<String,dynamic>? meta;

final StreamLiveInputModified? modified;

final StreamPlayback? playback;

final StreamPreview? preview;

final StreamRequireSignedUrLs? requireSignedUrLs;

final StreamStartTimeSeconds? startTimeSeconds;

final StreamMediaState? status;

final StreamThumbnailTimestampPct? thumbnailTimestampPct;

final StreamWatermarkAtUpload2? watermark;

Map<String, dynamic> toJson() { return {
  'allowedOrigins': ?allowedOrigins,
  if (clippedFromVideoUid != null) 'clippedFromVideoUID': clippedFromVideoUid?.toJson(),
  if (created != null) 'created': created?.toJson(),
  if (creator != null) 'creator': creator?.toJson(),
  if (endTimeSeconds != null) 'endTimeSeconds': endTimeSeconds?.toJson(),
  if (maxDurationSeconds != null) 'maxDurationSeconds': maxDurationSeconds?.toJson(),
  'meta': ?meta,
  if (modified != null) 'modified': modified?.toJson(),
  if (playback != null) 'playback': playback?.toJson(),
  if (preview != null) 'preview': preview?.toJson(),
  if (requireSignedUrLs != null) 'requireSignedURLs': requireSignedUrLs?.toJson(),
  if (startTimeSeconds != null) 'startTimeSeconds': startTimeSeconds?.toJson(),
  if (status != null) 'status': status?.toJson(),
  if (thumbnailTimestampPct != null) 'thumbnailTimestampPct': thumbnailTimestampPct?.toJson(),
  if (watermark != null) 'watermark': watermark?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowedOrigins', 'clippedFromVideoUID', 'created', 'creator', 'endTimeSeconds', 'maxDurationSeconds', 'meta', 'modified', 'playback', 'preview', 'requireSignedURLs', 'startTimeSeconds', 'status', 'thumbnailTimestampPct', 'watermark'}.contains(key)); } 
StreamClipping copyWith({List<String> Function()? allowedOrigins, StreamClippedFromVideoUid Function()? clippedFromVideoUid, StreamClippingCreated Function()? created, StreamCreator Function()? creator, StreamEndTimeSeconds Function()? endTimeSeconds, StreamMaxDurationSeconds Function()? maxDurationSeconds, Map<String, dynamic> Function()? meta, StreamLiveInputModified Function()? modified, StreamPlayback Function()? playback, StreamPreview Function()? preview, StreamRequireSignedUrLs Function()? requireSignedUrLs, StreamStartTimeSeconds Function()? startTimeSeconds, StreamMediaState Function()? status, StreamThumbnailTimestampPct Function()? thumbnailTimestampPct, StreamWatermarkAtUpload2 Function()? watermark, }) { return StreamClipping(
  allowedOrigins: allowedOrigins != null ? allowedOrigins() : this.allowedOrigins,
  clippedFromVideoUid: clippedFromVideoUid != null ? clippedFromVideoUid() : this.clippedFromVideoUid,
  created: created != null ? created() : this.created,
  creator: creator != null ? creator() : this.creator,
  endTimeSeconds: endTimeSeconds != null ? endTimeSeconds() : this.endTimeSeconds,
  maxDurationSeconds: maxDurationSeconds != null ? maxDurationSeconds() : this.maxDurationSeconds,
  meta: meta != null ? meta() : this.meta,
  modified: modified != null ? modified() : this.modified,
  playback: playback != null ? playback() : this.playback,
  preview: preview != null ? preview() : this.preview,
  requireSignedUrLs: requireSignedUrLs != null ? requireSignedUrLs() : this.requireSignedUrLs,
  startTimeSeconds: startTimeSeconds != null ? startTimeSeconds() : this.startTimeSeconds,
  status: status != null ? status() : this.status,
  thumbnailTimestampPct: thumbnailTimestampPct != null ? thumbnailTimestampPct() : this.thumbnailTimestampPct,
  watermark: watermark != null ? watermark() : this.watermark,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamClipping &&
          listEquals(allowedOrigins, other.allowedOrigins) &&
          clippedFromVideoUid == other.clippedFromVideoUid &&
          created == other.created &&
          creator == other.creator &&
          endTimeSeconds == other.endTimeSeconds &&
          maxDurationSeconds == other.maxDurationSeconds &&
          meta == other.meta &&
          modified == other.modified &&
          playback == other.playback &&
          preview == other.preview &&
          requireSignedUrLs == other.requireSignedUrLs &&
          startTimeSeconds == other.startTimeSeconds &&
          status == other.status &&
          thumbnailTimestampPct == other.thumbnailTimestampPct &&
          watermark == other.watermark; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowedOrigins ?? const []), clippedFromVideoUid, created, creator, endTimeSeconds, maxDurationSeconds, meta, modified, playback, preview, requireSignedUrLs, startTimeSeconds, status, thumbnailTimestampPct, watermark); } 
@override String toString() { return 'StreamClipping(allowedOrigins: $allowedOrigins, clippedFromVideoUid: $clippedFromVideoUid, created: $created, creator: $creator, endTimeSeconds: $endTimeSeconds, maxDurationSeconds: $maxDurationSeconds, meta: $meta, modified: $modified, playback: $playback, preview: $preview, requireSignedUrLs: $requireSignedUrLs, startTimeSeconds: $startTimeSeconds, status: $status, thumbnailTimestampPct: $thumbnailTimestampPct, watermark: $watermark)'; } 
 }
