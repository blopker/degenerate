// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_presets_response_data_config_max_video_streams.dart';import 'post_presets_response_data_config_media.dart';/// Type of the meeting
@immutable final class PostPresetsResponseDataConfigViewType {const PostPresetsResponseDataConfigViewType._(this.value);

factory PostPresetsResponseDataConfigViewType.fromJson(String json) { return switch (json) {
  'GROUP_CALL' => groupCall,
  'WEBINAR' => webinar,
  'AUDIO_ROOM' => audioRoom,
  _ => PostPresetsResponseDataConfigViewType._(json),
}; }

static const PostPresetsResponseDataConfigViewType groupCall = PostPresetsResponseDataConfigViewType._('GROUP_CALL');

static const PostPresetsResponseDataConfigViewType webinar = PostPresetsResponseDataConfigViewType._('WEBINAR');

static const PostPresetsResponseDataConfigViewType audioRoom = PostPresetsResponseDataConfigViewType._('AUDIO_ROOM');

static const List<PostPresetsResponseDataConfigViewType> values = [groupCall, webinar, audioRoom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPresetsResponseDataConfigViewType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPresetsResponseDataConfigViewType($value)'; } 
 }
@immutable final class PostPresetsResponseDataConfig {const PostPresetsResponseDataConfig({required this.maxScreenshareCount, required this.maxVideoStreams, required this.media, required this.viewType, });

factory PostPresetsResponseDataConfig.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataConfig(
  maxScreenshareCount: (json['max_screenshare_count'] as num).toInt(),
  maxVideoStreams: PostPresetsResponseDataConfigMaxVideoStreams.fromJson(json['max_video_streams'] as Map<String, dynamic>),
  media: PostPresetsResponseDataConfigMedia.fromJson(json['media'] as Map<String, dynamic>),
  viewType: PostPresetsResponseDataConfigViewType.fromJson(json['view_type'] as String),
); }

/// Maximum number of screen shares that can be active at a given time
final int maxScreenshareCount;

/// Maximum number of streams that are visible on a device
final PostPresetsResponseDataConfigMaxVideoStreams maxVideoStreams;

/// Media configuration options. eg: Video quality
final PostPresetsResponseDataConfigMedia media;

/// Type of the meeting
final PostPresetsResponseDataConfigViewType viewType;

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
PostPresetsResponseDataConfig copyWith({int? maxScreenshareCount, PostPresetsResponseDataConfigMaxVideoStreams? maxVideoStreams, PostPresetsResponseDataConfigMedia? media, PostPresetsResponseDataConfigViewType? viewType, }) { return PostPresetsResponseDataConfig(
  maxScreenshareCount: maxScreenshareCount ?? this.maxScreenshareCount,
  maxVideoStreams: maxVideoStreams ?? this.maxVideoStreams,
  media: media ?? this.media,
  viewType: viewType ?? this.viewType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataConfig &&
          maxScreenshareCount == other.maxScreenshareCount &&
          maxVideoStreams == other.maxVideoStreams &&
          media == other.media &&
          viewType == other.viewType; } 
@override int get hashCode { return Object.hash(maxScreenshareCount, maxVideoStreams, media, viewType); } 
@override String toString() { return 'PostPresetsResponseDataConfig(maxScreenshareCount: $maxScreenshareCount, maxVideoStreams: $maxVideoStreams, media: $media, viewType: $viewType)'; } 
 }
