// GENERATED CODE - DO NOT MODIFY BY HAND

import 'stream_identifier.dart';import 'stream_scheduled_deletion.dart';import 'stream_watermarks.dart';final class StreamDirectUploadResponseResult {const StreamDirectUploadResponseResult({this.scheduledDeletion, this.uid, this.uploadUrl, this.watermark, });

factory StreamDirectUploadResponseResult.fromJson(Map<String, dynamic> json) { return StreamDirectUploadResponseResult(
  scheduledDeletion: json['scheduledDeletion'] != null ? StreamScheduledDeletion.fromJson(json['scheduledDeletion'] as String) : null,
  uid: json['uid'] != null ? StreamIdentifier.fromJson(json['uid'] as String) : null,
  uploadUrl: json['uploadURL'] as String?,
  watermark: json['watermark'] != null ? StreamWatermarks.fromJson(json['watermark'] as Map<String, dynamic>) : null,
); }

final StreamScheduledDeletion? scheduledDeletion;

final StreamIdentifier? uid;

/// The URL an unauthenticated upload can use for a single `HTTP POST multipart/form-data` request.
final String? uploadUrl;

final StreamWatermarks? watermark;

Map<String, dynamic> toJson() { return {
  if (scheduledDeletion != null) 'scheduledDeletion': scheduledDeletion?.toJson(),
  if (uid != null) 'uid': uid?.toJson(),
  'uploadURL': ?uploadUrl,
  if (watermark != null) 'watermark': watermark?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'scheduledDeletion', 'uid', 'uploadURL', 'watermark'}.contains(key)); } 
StreamDirectUploadResponseResult copyWith({StreamScheduledDeletion Function()? scheduledDeletion, StreamIdentifier Function()? uid, String Function()? uploadUrl, StreamWatermarks Function()? watermark, }) { return StreamDirectUploadResponseResult(
  scheduledDeletion: scheduledDeletion != null ? scheduledDeletion() : this.scheduledDeletion,
  uid: uid != null ? uid() : this.uid,
  uploadUrl: uploadUrl != null ? uploadUrl() : this.uploadUrl,
  watermark: watermark != null ? watermark() : this.watermark,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamDirectUploadResponseResult &&
          scheduledDeletion == other.scheduledDeletion &&
          uid == other.uid &&
          uploadUrl == other.uploadUrl &&
          watermark == other.watermark; } 
@override int get hashCode { return Object.hash(scheduledDeletion, uid, uploadUrl, watermark); } 
@override String toString() { return 'StreamDirectUploadResponseResult(scheduledDeletion: $scheduledDeletion, uid: $uid, uploadUrl: $uploadUrl, watermark: $watermark)'; } 
 }
