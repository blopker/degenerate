// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_update_preset_permissions_media_audio.dart';import 'realtimekit_update_preset_permissions_media_screenshare.dart';import 'realtimekit_update_preset_permissions_media_video.dart';/// Media permissions
final class RealtimekitUpdatePresetPermissionsMedia {const RealtimekitUpdatePresetPermissionsMedia({this.audio, this.screenshare, this.video, });

factory RealtimekitUpdatePresetPermissionsMedia.fromJson(Map<String, dynamic> json) { return RealtimekitUpdatePresetPermissionsMedia(
  audio: json['audio'] != null ? RealtimekitUpdatePresetPermissionsMediaAudio.fromJson(json['audio'] as Map<String, dynamic>) : null,
  screenshare: json['screenshare'] != null ? RealtimekitUpdatePresetPermissionsMediaScreenshare.fromJson(json['screenshare'] as Map<String, dynamic>) : null,
  video: json['video'] != null ? RealtimekitUpdatePresetPermissionsMediaVideo.fromJson(json['video'] as Map<String, dynamic>) : null,
); }

/// Audio permissions
final RealtimekitUpdatePresetPermissionsMediaAudio? audio;

/// Screenshare permissions
final RealtimekitUpdatePresetPermissionsMediaScreenshare? screenshare;

/// Video permissions
final RealtimekitUpdatePresetPermissionsMediaVideo? video;

Map<String, dynamic> toJson() { return {
  if (audio != null) 'audio': audio?.toJson(),
  if (screenshare != null) 'screenshare': screenshare?.toJson(),
  if (video != null) 'video': video?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimekitUpdatePresetPermissionsMedia copyWith({RealtimekitUpdatePresetPermissionsMediaAudio Function()? audio, RealtimekitUpdatePresetPermissionsMediaScreenshare Function()? screenshare, RealtimekitUpdatePresetPermissionsMediaVideo Function()? video, }) { return RealtimekitUpdatePresetPermissionsMedia(
  audio: audio != null ? audio() : this.audio,
  screenshare: screenshare != null ? screenshare() : this.screenshare,
  video: video != null ? video() : this.video,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitUpdatePresetPermissionsMedia &&
          audio == other.audio &&
          screenshare == other.screenshare &&
          video == other.video; } 
@override int get hashCode { return Object.hash(audio, screenshare, video); } 
@override String toString() { return 'RealtimekitUpdatePresetPermissionsMedia(audio: $audio, screenshare: $screenshare, video: $video)'; } 
 }
