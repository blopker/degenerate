// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_audio_config.dart';import 'realtimekit_interactive_config.dart';import 'realtimekit_livestreaming_config.dart';import 'realtimekit_realtimekit_bucket_config.dart';import 'realtimekit_storage_config.dart';import 'realtimekit_video_config.dart';final class StartRecordingRequest {const StartRecordingRequest({this.allowMultipleRecordings = false, this.audioConfig, this.fileNamePrefix, this.interactiveConfig, this.maxSeconds, this.meetingId, this.realtimekitBucketConfig, this.rtmpOutConfig, this.storageConfig, this.url, this.videoConfig, });

factory StartRecordingRequest.fromJson(Map<String, dynamic> json) { return StartRecordingRequest(
  allowMultipleRecordings: json.containsKey('allow_multiple_recordings') ? json['allow_multiple_recordings'] as bool : false,
  audioConfig: json['audio_config'] != null ? RealtimekitAudioConfig.fromJson(json['audio_config'] as Map<String, dynamic>) : null,
  fileNamePrefix: json['file_name_prefix'] as String?,
  interactiveConfig: json['interactive_config'] != null ? RealtimekitInteractiveConfig.fromJson(json['interactive_config'] as Map<String, dynamic>) : null,
  maxSeconds: json['max_seconds'] != null ? (json['max_seconds'] as num).toInt() : null,
  meetingId: json['meeting_id'] as String?,
  realtimekitBucketConfig: json['realtimekit_bucket_config'] != null ? RealtimekitRealtimekitBucketConfig.fromJson(json['realtimekit_bucket_config'] as Map<String, dynamic>) : null,
  rtmpOutConfig: json['rtmp_out_config'] != null ? RealtimekitLivestreamingConfig.fromJson(json['rtmp_out_config'] as Map<String, dynamic>) : null,
  storageConfig: json['storage_config'] != null ? RealtimekitStorageConfig.fromJson(json['storage_config'] as Map<String, dynamic>) : null,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
  videoConfig: json['video_config'] != null ? RealtimekitVideoConfig.fromJson(json['video_config'] as Map<String, dynamic>) : null,
); }

/// By default, a meeting allows only one recording to run at a time. Enabling the `allow_multiple_recordings` parameter to true allows you to initiate multiple recordings concurrently in the same meeting. This allows you to record separate videos of the same meeting with different configurations, such as portrait mode or landscape mode.
final bool allowMultipleRecordings;

final RealtimekitAudioConfig? audioConfig;

/// Update the recording file name.
final String? fileNamePrefix;

final RealtimekitInteractiveConfig? interactiveConfig;

/// Specifies the maximum duration for recording in seconds, ranging from a minimum of 60 seconds to a maximum of 24 hours.
final int? maxSeconds;

/// ID of the meeting to record.
final String? meetingId;

final RealtimekitRealtimekitBucketConfig? realtimekitBucketConfig;

final RealtimekitLivestreamingConfig? rtmpOutConfig;

final RealtimekitStorageConfig? storageConfig;

/// Pass a custom url to record arbitary screen
final Uri? url;

final RealtimekitVideoConfig? videoConfig;

Map<String, dynamic> toJson() { return {
  'allow_multiple_recordings': allowMultipleRecordings,
  if (audioConfig != null) 'audio_config': audioConfig?.toJson(),
  'file_name_prefix': ?fileNamePrefix,
  if (interactiveConfig != null) 'interactive_config': interactiveConfig?.toJson(),
  'max_seconds': ?maxSeconds,
  'meeting_id': ?meetingId,
  if (realtimekitBucketConfig != null) 'realtimekit_bucket_config': realtimekitBucketConfig?.toJson(),
  if (rtmpOutConfig != null) 'rtmp_out_config': rtmpOutConfig?.toJson(),
  if (storageConfig != null) 'storage_config': storageConfig?.toJson(),
  if (url != null) 'url': url?.toString(),
  if (videoConfig != null) 'video_config': videoConfig?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allow_multiple_recordings', 'audio_config', 'file_name_prefix', 'interactive_config', 'max_seconds', 'meeting_id', 'realtimekit_bucket_config', 'rtmp_out_config', 'storage_config', 'url', 'video_config'}.contains(key)); } 
StartRecordingRequest copyWith({bool Function()? allowMultipleRecordings, RealtimekitAudioConfig Function()? audioConfig, String Function()? fileNamePrefix, RealtimekitInteractiveConfig Function()? interactiveConfig, int Function()? maxSeconds, String Function()? meetingId, RealtimekitRealtimekitBucketConfig Function()? realtimekitBucketConfig, RealtimekitLivestreamingConfig Function()? rtmpOutConfig, RealtimekitStorageConfig Function()? storageConfig, Uri Function()? url, RealtimekitVideoConfig Function()? videoConfig, }) { return StartRecordingRequest(
  allowMultipleRecordings: allowMultipleRecordings != null ? allowMultipleRecordings() : this.allowMultipleRecordings,
  audioConfig: audioConfig != null ? audioConfig() : this.audioConfig,
  fileNamePrefix: fileNamePrefix != null ? fileNamePrefix() : this.fileNamePrefix,
  interactiveConfig: interactiveConfig != null ? interactiveConfig() : this.interactiveConfig,
  maxSeconds: maxSeconds != null ? maxSeconds() : this.maxSeconds,
  meetingId: meetingId != null ? meetingId() : this.meetingId,
  realtimekitBucketConfig: realtimekitBucketConfig != null ? realtimekitBucketConfig() : this.realtimekitBucketConfig,
  rtmpOutConfig: rtmpOutConfig != null ? rtmpOutConfig() : this.rtmpOutConfig,
  storageConfig: storageConfig != null ? storageConfig() : this.storageConfig,
  url: url != null ? url() : this.url,
  videoConfig: videoConfig != null ? videoConfig() : this.videoConfig,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StartRecordingRequest &&
          allowMultipleRecordings == other.allowMultipleRecordings &&
          audioConfig == other.audioConfig &&
          fileNamePrefix == other.fileNamePrefix &&
          interactiveConfig == other.interactiveConfig &&
          maxSeconds == other.maxSeconds &&
          meetingId == other.meetingId &&
          realtimekitBucketConfig == other.realtimekitBucketConfig &&
          rtmpOutConfig == other.rtmpOutConfig &&
          storageConfig == other.storageConfig &&
          url == other.url &&
          videoConfig == other.videoConfig; } 
@override int get hashCode { return Object.hash(allowMultipleRecordings, audioConfig, fileNamePrefix, interactiveConfig, maxSeconds, meetingId, realtimekitBucketConfig, rtmpOutConfig, storageConfig, url, videoConfig); } 
@override String toString() { return 'StartRecordingRequest(allowMultipleRecordings: $allowMultipleRecordings, audioConfig: $audioConfig, fileNamePrefix: $fileNamePrefix, interactiveConfig: $interactiveConfig, maxSeconds: $maxSeconds, meetingId: $meetingId, realtimekitBucketConfig: $realtimekitBucketConfig, rtmpOutConfig: $rtmpOutConfig, storageConfig: $storageConfig, url: $url, videoConfig: $videoConfig)'; } 
 }
