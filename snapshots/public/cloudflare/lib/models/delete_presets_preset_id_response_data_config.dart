// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_presets_preset_id_response_data_config_max_video_streams.dart';import 'delete_presets_preset_id_response_data_config_media.dart';/// Type of the meeting
@immutable final class DeletePresetsPresetIdResponseDataConfigViewType {const DeletePresetsPresetIdResponseDataConfigViewType._(this.value);

factory DeletePresetsPresetIdResponseDataConfigViewType.fromJson(String json) { return switch (json) {
  'GROUP_CALL' => groupCall,
  'WEBINAR' => webinar,
  'AUDIO_ROOM' => audioRoom,
  _ => DeletePresetsPresetIdResponseDataConfigViewType._(json),
}; }

static const DeletePresetsPresetIdResponseDataConfigViewType groupCall = DeletePresetsPresetIdResponseDataConfigViewType._('GROUP_CALL');

static const DeletePresetsPresetIdResponseDataConfigViewType webinar = DeletePresetsPresetIdResponseDataConfigViewType._('WEBINAR');

static const DeletePresetsPresetIdResponseDataConfigViewType audioRoom = DeletePresetsPresetIdResponseDataConfigViewType._('AUDIO_ROOM');

static const List<DeletePresetsPresetIdResponseDataConfigViewType> values = [groupCall, webinar, audioRoom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePresetsPresetIdResponseDataConfigViewType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataConfigViewType($value)'; } 
 }
@immutable final class DeletePresetsPresetIdResponseDataConfig {const DeletePresetsPresetIdResponseDataConfig({required this.maxScreenshareCount, required this.maxVideoStreams, required this.media, required this.viewType, });

factory DeletePresetsPresetIdResponseDataConfig.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataConfig(
  maxScreenshareCount: (json['max_screenshare_count'] as num).toInt(),
  maxVideoStreams: DeletePresetsPresetIdResponseDataConfigMaxVideoStreams.fromJson(json['max_video_streams'] as Map<String, dynamic>),
  media: DeletePresetsPresetIdResponseDataConfigMedia.fromJson(json['media'] as Map<String, dynamic>),
  viewType: DeletePresetsPresetIdResponseDataConfigViewType.fromJson(json['view_type'] as String),
); }

/// Maximum number of screen shares that can be active at a given time
final int maxScreenshareCount;

/// Maximum number of streams that are visible on a device
final DeletePresetsPresetIdResponseDataConfigMaxVideoStreams maxVideoStreams;

/// Media configuration options. eg: Video quality
final DeletePresetsPresetIdResponseDataConfigMedia media;

/// Type of the meeting
final DeletePresetsPresetIdResponseDataConfigViewType viewType;

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
DeletePresetsPresetIdResponseDataConfig copyWith({int? maxScreenshareCount, DeletePresetsPresetIdResponseDataConfigMaxVideoStreams? maxVideoStreams, DeletePresetsPresetIdResponseDataConfigMedia? media, DeletePresetsPresetIdResponseDataConfigViewType? viewType, }) { return DeletePresetsPresetIdResponseDataConfig(
  maxScreenshareCount: maxScreenshareCount ?? this.maxScreenshareCount,
  maxVideoStreams: maxVideoStreams ?? this.maxVideoStreams,
  media: media ?? this.media,
  viewType: viewType ?? this.viewType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataConfig &&
          maxScreenshareCount == other.maxScreenshareCount &&
          maxVideoStreams == other.maxVideoStreams &&
          media == other.media &&
          viewType == other.viewType; } 
@override int get hashCode { return Object.hash(maxScreenshareCount, maxVideoStreams, media, viewType); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataConfig(maxScreenshareCount: $maxScreenshareCount, maxVideoStreams: $maxVideoStreams, media: $media, viewType: $viewType)'; } 
 }
