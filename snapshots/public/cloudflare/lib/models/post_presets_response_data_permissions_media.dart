// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_presets_response_data_permissions_media_audio.dart';import 'post_presets_response_data_permissions_media_screenshare.dart';import 'post_presets_response_data_permissions_media_video.dart';/// Media permissions
@immutable final class PostPresetsResponseDataPermissionsMedia {const PostPresetsResponseDataPermissionsMedia({required this.audio, required this.screenshare, required this.video, });

factory PostPresetsResponseDataPermissionsMedia.fromJson(Map<String, dynamic> json) { return PostPresetsResponseDataPermissionsMedia(
  audio: PostPresetsResponseDataPermissionsMediaAudio.fromJson(json['audio'] as Map<String, dynamic>),
  screenshare: PostPresetsResponseDataPermissionsMediaScreenshare.fromJson(json['screenshare'] as Map<String, dynamic>),
  video: PostPresetsResponseDataPermissionsMediaVideo.fromJson(json['video'] as Map<String, dynamic>),
); }

/// Audio permissions
final PostPresetsResponseDataPermissionsMediaAudio audio;

/// Screenshare permissions
final PostPresetsResponseDataPermissionsMediaScreenshare screenshare;

/// Video permissions
final PostPresetsResponseDataPermissionsMediaVideo video;

Map<String, dynamic> toJson() { return {
  'audio': audio.toJson(),
  'screenshare': screenshare.toJson(),
  'video': video.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('audio') &&
      json.containsKey('screenshare') &&
      json.containsKey('video'); } 
PostPresetsResponseDataPermissionsMedia copyWith({PostPresetsResponseDataPermissionsMediaAudio? audio, PostPresetsResponseDataPermissionsMediaScreenshare? screenshare, PostPresetsResponseDataPermissionsMediaVideo? video, }) { return PostPresetsResponseDataPermissionsMedia(
  audio: audio ?? this.audio,
  screenshare: screenshare ?? this.screenshare,
  video: video ?? this.video,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPresetsResponseDataPermissionsMedia &&
          audio == other.audio &&
          screenshare == other.screenshare &&
          video == other.video; } 
@override int get hashCode { return Object.hash(audio, screenshare, video); } 
@override String toString() { return 'PostPresetsResponseDataPermissionsMedia(audio: $audio, screenshare: $screenshare, video: $video)'; } 
 }
