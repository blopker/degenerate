// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_presets_preset_id_response_data_permissions_media_audio.dart';import 'get_presets_preset_id_response_data_permissions_media_screenshare.dart';import 'get_presets_preset_id_response_data_permissions_media_video.dart';/// Media permissions
@immutable final class GetPresetsPresetIdResponseDataPermissionsMedia {const GetPresetsPresetIdResponseDataPermissionsMedia({required this.audio, required this.screenshare, required this.video, });

factory GetPresetsPresetIdResponseDataPermissionsMedia.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataPermissionsMedia(
  audio: GetPresetsPresetIdResponseDataPermissionsMediaAudio.fromJson(json['audio'] as Map<String, dynamic>),
  screenshare: GetPresetsPresetIdResponseDataPermissionsMediaScreenshare.fromJson(json['screenshare'] as Map<String, dynamic>),
  video: GetPresetsPresetIdResponseDataPermissionsMediaVideo.fromJson(json['video'] as Map<String, dynamic>),
); }

/// Audio permissions
final GetPresetsPresetIdResponseDataPermissionsMediaAudio audio;

/// Screenshare permissions
final GetPresetsPresetIdResponseDataPermissionsMediaScreenshare screenshare;

/// Video permissions
final GetPresetsPresetIdResponseDataPermissionsMediaVideo video;

Map<String, dynamic> toJson() { return {
  'audio': audio.toJson(),
  'screenshare': screenshare.toJson(),
  'video': video.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('audio') &&
      json.containsKey('screenshare') &&
      json.containsKey('video'); } 
GetPresetsPresetIdResponseDataPermissionsMedia copyWith({GetPresetsPresetIdResponseDataPermissionsMediaAudio? audio, GetPresetsPresetIdResponseDataPermissionsMediaScreenshare? screenshare, GetPresetsPresetIdResponseDataPermissionsMediaVideo? video, }) { return GetPresetsPresetIdResponseDataPermissionsMedia(
  audio: audio ?? this.audio,
  screenshare: screenshare ?? this.screenshare,
  video: video ?? this.video,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataPermissionsMedia &&
          audio == other.audio &&
          screenshare == other.screenshare &&
          video == other.video; } 
@override int get hashCode { return Object.hash(audio, screenshare, video); } 
@override String toString() { return 'GetPresetsPresetIdResponseDataPermissionsMedia(audio: $audio, screenshare: $screenshare, video: $video)'; } 
 }
