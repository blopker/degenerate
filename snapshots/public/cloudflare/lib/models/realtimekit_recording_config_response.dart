// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_audio_config.dart';import 'realtimekit_livestreaming_config.dart';import 'realtimekit_realtimekit_bucket_config.dart';import 'realtimekit_storage_config_response.dart';import 'realtimekit_video_config.dart';/// Recording Configurations to be used for this meeting. This level of configs takes higher preference over App level configs on the RealtimeKit developer portal.
/// 
@immutable final class RealtimekitRecordingConfigResponse {const RealtimekitRecordingConfigResponse({this.audioConfig, this.fileNamePrefix, this.liveStreamingConfig, this.maxSeconds, this.realtimekitBucketConfig, this.storageConfig = const Omittable.absent(), this.videoConfig, });

factory RealtimekitRecordingConfigResponse.fromJson(Map<String, dynamic> json) { return RealtimekitRecordingConfigResponse(
  audioConfig: json['audio_config'] != null ? RealtimekitAudioConfig.fromJson(json['audio_config'] as Map<String, dynamic>) : null,
  fileNamePrefix: json['file_name_prefix'] as String?,
  liveStreamingConfig: json['live_streaming_config'] != null ? RealtimekitLivestreamingConfig.fromJson(json['live_streaming_config'] as Map<String, dynamic>) : null,
  maxSeconds: json['max_seconds'] != null ? (json['max_seconds'] as num).toDouble() : null,
  realtimekitBucketConfig: json['realtimekit_bucket_config'] != null ? RealtimekitRealtimekitBucketConfig.fromJson(json['realtimekit_bucket_config'] as Map<String, dynamic>) : null,
  storageConfig: json.containsKey('storage_config') ? Omittable(json['storage_config'] != null ? RealtimekitStorageConfigResponse.fromJson(json['storage_config'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  videoConfig: json['video_config'] != null ? RealtimekitVideoConfig.fromJson(json['video_config'] as Map<String, dynamic>) : null,
); }

final RealtimekitAudioConfig? audioConfig;

/// Adds a prefix to the beginning of the file name of the recording.
final String? fileNamePrefix;

final RealtimekitLivestreamingConfig? liveStreamingConfig;

/// Specifies the maximum duration for recording in seconds, ranging from a minimum of 60 seconds to a maximum of 24 hours.
final double? maxSeconds;

final RealtimekitRealtimekitBucketConfig? realtimekitBucketConfig;

final Omittable<RealtimekitStorageConfigResponse?> storageConfig;

final RealtimekitVideoConfig? videoConfig;

Map<String, dynamic> toJson() { return {
  if (audioConfig != null) 'audio_config': audioConfig?.toJson(),
  'file_name_prefix': ?fileNamePrefix,
  if (liveStreamingConfig != null) 'live_streaming_config': liveStreamingConfig?.toJson(),
  'max_seconds': ?maxSeconds,
  if (realtimekitBucketConfig != null) 'realtimekit_bucket_config': realtimekitBucketConfig?.toJson(),
  if (storageConfig.isPresent) 'storage_config': storageConfig.value?.toJson(),
  if (videoConfig != null) 'video_config': videoConfig?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'audio_config', 'file_name_prefix', 'live_streaming_config', 'max_seconds', 'realtimekit_bucket_config', 'storage_config', 'video_config'}.contains(key)); } 
RealtimekitRecordingConfigResponse copyWith({RealtimekitAudioConfig? Function()? audioConfig, String? Function()? fileNamePrefix, RealtimekitLivestreamingConfig? Function()? liveStreamingConfig, double? Function()? maxSeconds, RealtimekitRealtimekitBucketConfig? Function()? realtimekitBucketConfig, Omittable<RealtimekitStorageConfigResponse?>? storageConfig, RealtimekitVideoConfig? Function()? videoConfig, }) { return RealtimekitRecordingConfigResponse(
  audioConfig: audioConfig != null ? audioConfig() : this.audioConfig,
  fileNamePrefix: fileNamePrefix != null ? fileNamePrefix() : this.fileNamePrefix,
  liveStreamingConfig: liveStreamingConfig != null ? liveStreamingConfig() : this.liveStreamingConfig,
  maxSeconds: maxSeconds != null ? maxSeconds() : this.maxSeconds,
  realtimekitBucketConfig: realtimekitBucketConfig != null ? realtimekitBucketConfig() : this.realtimekitBucketConfig,
  storageConfig: storageConfig ?? this.storageConfig,
  videoConfig: videoConfig != null ? videoConfig() : this.videoConfig,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitRecordingConfigResponse &&
          audioConfig == other.audioConfig &&
          fileNamePrefix == other.fileNamePrefix &&
          liveStreamingConfig == other.liveStreamingConfig &&
          maxSeconds == other.maxSeconds &&
          realtimekitBucketConfig == other.realtimekitBucketConfig &&
          storageConfig == other.storageConfig &&
          videoConfig == other.videoConfig; } 
@override int get hashCode { return Object.hash(audioConfig, fileNamePrefix, liveStreamingConfig, maxSeconds, realtimekitBucketConfig, storageConfig, videoConfig); } 
@override String toString() { return 'RealtimekitRecordingConfigResponse(audioConfig: $audioConfig, fileNamePrefix: $fileNamePrefix, liveStreamingConfig: $liveStreamingConfig, maxSeconds: $maxSeconds, realtimekitBucketConfig: $realtimekitBucketConfig, storageConfig: $storageConfig, videoConfig: $videoConfig)'; } 
 }
