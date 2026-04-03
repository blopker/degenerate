// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_preset_permissions_media_audio.dart';import 'realtimekit_preset_permissions_media_screenshare.dart';import 'realtimekit_preset_permissions_media_video.dart';/// Media permissions
@immutable final class RealtimekitPresetPermissionsMedia {const RealtimekitPresetPermissionsMedia({required this.audio, required this.screenshare, required this.video, });

factory RealtimekitPresetPermissionsMedia.fromJson(Map<String, dynamic> json) { return RealtimekitPresetPermissionsMedia(
  audio: RealtimekitPresetPermissionsMediaAudio.fromJson(json['audio'] as Map<String, dynamic>),
  screenshare: RealtimekitPresetPermissionsMediaScreenshare.fromJson(json['screenshare'] as Map<String, dynamic>),
  video: RealtimekitPresetPermissionsMediaVideo.fromJson(json['video'] as Map<String, dynamic>),
); }

/// Audio permissions
final RealtimekitPresetPermissionsMediaAudio audio;

/// Screenshare permissions
final RealtimekitPresetPermissionsMediaScreenshare screenshare;

/// Video permissions
final RealtimekitPresetPermissionsMediaVideo video;

Map<String, dynamic> toJson() { return {
  'audio': audio.toJson(),
  'screenshare': screenshare.toJson(),
  'video': video.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('audio') &&
      json.containsKey('screenshare') &&
      json.containsKey('video'); } 
RealtimekitPresetPermissionsMedia copyWith({RealtimekitPresetPermissionsMediaAudio? audio, RealtimekitPresetPermissionsMediaScreenshare? screenshare, RealtimekitPresetPermissionsMediaVideo? video, }) { return RealtimekitPresetPermissionsMedia(
  audio: audio ?? this.audio,
  screenshare: screenshare ?? this.screenshare,
  video: video ?? this.video,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitPresetPermissionsMedia &&
          audio == other.audio &&
          screenshare == other.screenshare &&
          video == other.video; } 
@override int get hashCode { return Object.hash(audio, screenshare, video); } 
@override String toString() { return 'RealtimekitPresetPermissionsMedia(audio: $audio, screenshare: $screenshare, video: $video)'; } 
 }
