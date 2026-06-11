// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_presets_preset_id_response_data_config_max_video_streams.dart';import 'get_presets_preset_id_response_data_config_media.dart';/// Type of the meeting
@immutable final class GetPresetsPresetIdResponseDataConfigViewType {const GetPresetsPresetIdResponseDataConfigViewType._(this.value);

factory GetPresetsPresetIdResponseDataConfigViewType.fromJson(String json) { return switch (json) {
  'GROUP_CALL' => groupCall,
  'WEBINAR' => webinar,
  'AUDIO_ROOM' => audioRoom,
  _ => GetPresetsPresetIdResponseDataConfigViewType._(json),
}; }

static const GetPresetsPresetIdResponseDataConfigViewType groupCall = GetPresetsPresetIdResponseDataConfigViewType._('GROUP_CALL');

static const GetPresetsPresetIdResponseDataConfigViewType webinar = GetPresetsPresetIdResponseDataConfigViewType._('WEBINAR');

static const GetPresetsPresetIdResponseDataConfigViewType audioRoom = GetPresetsPresetIdResponseDataConfigViewType._('AUDIO_ROOM');

static const List<GetPresetsPresetIdResponseDataConfigViewType> values = [groupCall, webinar, audioRoom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPresetsPresetIdResponseDataConfigViewType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetPresetsPresetIdResponseDataConfigViewType($value)'; } 
 }
@immutable final class GetPresetsPresetIdResponseDataConfig {const GetPresetsPresetIdResponseDataConfig({required this.maxScreenshareCount, required this.maxVideoStreams, required this.media, required this.viewType, });

factory GetPresetsPresetIdResponseDataConfig.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataConfig(
  maxScreenshareCount: (json['max_screenshare_count'] as num).toInt(),
  maxVideoStreams: GetPresetsPresetIdResponseDataConfigMaxVideoStreams.fromJson(json['max_video_streams'] as Map<String, dynamic>),
  media: GetPresetsPresetIdResponseDataConfigMedia.fromJson(json['media'] as Map<String, dynamic>),
  viewType: GetPresetsPresetIdResponseDataConfigViewType.fromJson(json['view_type'] as String),
); }

/// Maximum number of screen shares that can be active at a given time
final int maxScreenshareCount;

/// Maximum number of streams that are visible on a device
final GetPresetsPresetIdResponseDataConfigMaxVideoStreams maxVideoStreams;

/// Media configuration options. eg: Video quality
final GetPresetsPresetIdResponseDataConfigMedia media;

/// Type of the meeting
final GetPresetsPresetIdResponseDataConfigViewType viewType;

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
GetPresetsPresetIdResponseDataConfig copyWith({int? maxScreenshareCount, GetPresetsPresetIdResponseDataConfigMaxVideoStreams? maxVideoStreams, GetPresetsPresetIdResponseDataConfigMedia? media, GetPresetsPresetIdResponseDataConfigViewType? viewType, }) { return GetPresetsPresetIdResponseDataConfig(
  maxScreenshareCount: maxScreenshareCount ?? this.maxScreenshareCount,
  maxVideoStreams: maxVideoStreams ?? this.maxVideoStreams,
  media: media ?? this.media,
  viewType: viewType ?? this.viewType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataConfig &&
          maxScreenshareCount == other.maxScreenshareCount &&
          maxVideoStreams == other.maxVideoStreams &&
          media == other.media &&
          viewType == other.viewType; } 
@override int get hashCode { return Object.hash(maxScreenshareCount, maxVideoStreams, media, viewType); } 
@override String toString() { return 'GetPresetsPresetIdResponseDataConfig(maxScreenshareCount: $maxScreenshareCount, maxVideoStreams: $maxVideoStreams, media: $media, viewType: $viewType)'; } 
 }
