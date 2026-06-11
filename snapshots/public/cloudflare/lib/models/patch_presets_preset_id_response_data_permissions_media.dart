// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_presets_preset_id_response_data_permissions_media_audio.dart';import 'patch_presets_preset_id_response_data_permissions_media_screenshare.dart';import 'patch_presets_preset_id_response_data_permissions_media_video.dart';/// Media permissions
@immutable final class PatchPresetsPresetIdResponseDataPermissionsMedia {const PatchPresetsPresetIdResponseDataPermissionsMedia({required this.audio, required this.screenshare, required this.video, });

factory PatchPresetsPresetIdResponseDataPermissionsMedia.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataPermissionsMedia(
  audio: PatchPresetsPresetIdResponseDataPermissionsMediaAudio.fromJson(json['audio'] as Map<String, dynamic>),
  screenshare: PatchPresetsPresetIdResponseDataPermissionsMediaScreenshare.fromJson(json['screenshare'] as Map<String, dynamic>),
  video: PatchPresetsPresetIdResponseDataPermissionsMediaVideo.fromJson(json['video'] as Map<String, dynamic>),
); }

/// Audio permissions
final PatchPresetsPresetIdResponseDataPermissionsMediaAudio audio;

/// Screenshare permissions
final PatchPresetsPresetIdResponseDataPermissionsMediaScreenshare screenshare;

/// Video permissions
final PatchPresetsPresetIdResponseDataPermissionsMediaVideo video;

Map<String, dynamic> toJson() { return {
  'audio': audio.toJson(),
  'screenshare': screenshare.toJson(),
  'video': video.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('audio') &&
      json.containsKey('screenshare') &&
      json.containsKey('video'); } 
PatchPresetsPresetIdResponseDataPermissionsMedia copyWith({PatchPresetsPresetIdResponseDataPermissionsMediaAudio? audio, PatchPresetsPresetIdResponseDataPermissionsMediaScreenshare? screenshare, PatchPresetsPresetIdResponseDataPermissionsMediaVideo? video, }) { return PatchPresetsPresetIdResponseDataPermissionsMedia(
  audio: audio ?? this.audio,
  screenshare: screenshare ?? this.screenshare,
  video: video ?? this.video,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataPermissionsMedia &&
          audio == other.audio &&
          screenshare == other.screenshare &&
          video == other.video; } 
@override int get hashCode { return Object.hash(audio, screenshare, video); } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataPermissionsMedia(audio: $audio, screenshare: $screenshare, video: $video)'; } 
 }
