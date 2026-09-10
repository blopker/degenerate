// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_presets_response_data_config_media_audio.dart';import 'post_presets_response_data_config_media_screenshare.dart';import 'post_presets_response_data_config_media_video.dart';/// Media configuration options. eg: Video quality
@immutable final class PostPresetsResponseDataConfigMedia {const PostPresetsResponseDataConfigMedia({required this.screenshare, required this.video, this.audio, });

factory PostPresetsResponseDataConfigMedia.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataConfigMedia(
  audio: json['audio'] != null ? PostPresetsResponseDataConfigMediaAudio.fromJson(json['audio'] as Map<String, dynamic>) : null,
  screenshare: PostPresetsResponseDataConfigMediaScreenshare.fromJson(json['screenshare'] as Map<String, dynamic>),
  video: PostPresetsResponseDataConfigMediaVideo.fromJson(json['video'] as Map<String, dynamic>),
); }

/// Control options for Audio quality.
final PostPresetsResponseDataConfigMediaAudio? audio;

/// Configuration options for participant screen shares
final PostPresetsResponseDataConfigMediaScreenshare screenshare;

/// Configuration options for participant videos
final PostPresetsResponseDataConfigMediaVideo video;

Map<String, dynamic> toJson() { return {
  if (audio != null) 'audio': audio?.toJson(),
  'screenshare': screenshare.toJson(),
  'video': video.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('screenshare') &&
      json.containsKey('video'); } 
PostPresetsResponseDataConfigMedia copyWith({PostPresetsResponseDataConfigMediaAudio? Function()? audio, PostPresetsResponseDataConfigMediaScreenshare? screenshare, PostPresetsResponseDataConfigMediaVideo? video, }) { return PostPresetsResponseDataConfigMedia(
  audio: audio != null ? audio() : this.audio,
  screenshare: screenshare ?? this.screenshare,
  video: video ?? this.video,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataConfigMedia &&
          audio == other.audio &&
          screenshare == other.screenshare &&
          video == other.video; } 
@override int get hashCode { return Object.hash(audio, screenshare, video); } 
@override String toString() { return 'PostPresetsResponseDataConfigMedia(audio: $audio, screenshare: $screenshare, video: $video)'; } 
 }
