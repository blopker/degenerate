// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_presets_preset_id_response_data_config_max_video_streams.dart';import 'patch_presets_preset_id_response_data_config_media.dart';/// Type of the meeting
@immutable final class PatchPresetsPresetIdResponseDataConfigViewType {const PatchPresetsPresetIdResponseDataConfigViewType._(this.value);

factory PatchPresetsPresetIdResponseDataConfigViewType.fromJson(String json) { return switch (json) {
  'GROUP_CALL' => groupCall,
  'WEBINAR' => webinar,
  'AUDIO_ROOM' => audioRoom,
  _ => PatchPresetsPresetIdResponseDataConfigViewType._(json),
}; }

static const PatchPresetsPresetIdResponseDataConfigViewType groupCall = PatchPresetsPresetIdResponseDataConfigViewType._('GROUP_CALL');

static const PatchPresetsPresetIdResponseDataConfigViewType webinar = PatchPresetsPresetIdResponseDataConfigViewType._('WEBINAR');

static const PatchPresetsPresetIdResponseDataConfigViewType audioRoom = PatchPresetsPresetIdResponseDataConfigViewType._('AUDIO_ROOM');

static const List<PatchPresetsPresetIdResponseDataConfigViewType> values = [groupCall, webinar, audioRoom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchPresetsPresetIdResponseDataConfigViewType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataConfigViewType($value)'; } 
 }
@immutable final class PatchPresetsPresetIdResponseDataConfig {const PatchPresetsPresetIdResponseDataConfig({required this.maxScreenshareCount, required this.maxVideoStreams, required this.media, required this.viewType, });

factory PatchPresetsPresetIdResponseDataConfig.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataConfig(
  maxScreenshareCount: (json['max_screenshare_count'] as num).toInt(),
  maxVideoStreams: PatchPresetsPresetIdResponseDataConfigMaxVideoStreams.fromJson(json['max_video_streams'] as Map<String, dynamic>),
  media: PatchPresetsPresetIdResponseDataConfigMedia.fromJson(json['media'] as Map<String, dynamic>),
  viewType: PatchPresetsPresetIdResponseDataConfigViewType.fromJson(json['view_type'] as String),
); }

/// Maximum number of screen shares that can be active at a given time
final int maxScreenshareCount;

/// Maximum number of streams that are visible on a device
final PatchPresetsPresetIdResponseDataConfigMaxVideoStreams maxVideoStreams;

/// Media configuration options. eg: Video quality
final PatchPresetsPresetIdResponseDataConfigMedia media;

/// Type of the meeting
final PatchPresetsPresetIdResponseDataConfigViewType viewType;

Map<String, dynamic> toJson() { return {
  'max_screenshare_count': maxScreenshareCount,
  'max_video_streams': maxVideoStreams.toJson(),
  'media': media.toJson(),
  'view_type': viewType.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('max_screenshare_count') && json['max_screenshare_count'] is num &&
      json.containsKey('max_video_streams') &&
      json.containsKey('media') &&
      json.containsKey('view_type'); } 
PatchPresetsPresetIdResponseDataConfig copyWith({int? maxScreenshareCount, PatchPresetsPresetIdResponseDataConfigMaxVideoStreams? maxVideoStreams, PatchPresetsPresetIdResponseDataConfigMedia? media, PatchPresetsPresetIdResponseDataConfigViewType? viewType, }) { return PatchPresetsPresetIdResponseDataConfig(
  maxScreenshareCount: maxScreenshareCount ?? this.maxScreenshareCount,
  maxVideoStreams: maxVideoStreams ?? this.maxVideoStreams,
  media: media ?? this.media,
  viewType: viewType ?? this.viewType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataConfig &&
          maxScreenshareCount == other.maxScreenshareCount &&
          maxVideoStreams == other.maxVideoStreams &&
          media == other.media &&
          viewType == other.viewType; } 
@override int get hashCode { return Object.hash(maxScreenshareCount, maxVideoStreams, media, viewType); } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataConfig(maxScreenshareCount: $maxScreenshareCount, maxVideoStreams: $maxVideoStreams, media: $media, viewType: $viewType)'; } 
 }
