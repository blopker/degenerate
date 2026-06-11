// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_presets_preset_id_response_data_permissions_media_audio.dart';import 'delete_presets_preset_id_response_data_permissions_media_screenshare.dart';import 'delete_presets_preset_id_response_data_permissions_media_video.dart';/// Media permissions
@immutable final class DeletePresetsPresetIdResponseDataPermissionsMedia {const DeletePresetsPresetIdResponseDataPermissionsMedia({required this.audio, required this.screenshare, required this.video, });

factory DeletePresetsPresetIdResponseDataPermissionsMedia.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataPermissionsMedia(
  audio: DeletePresetsPresetIdResponseDataPermissionsMediaAudio.fromJson(json['audio'] as Map<String, dynamic>),
  screenshare: DeletePresetsPresetIdResponseDataPermissionsMediaScreenshare.fromJson(json['screenshare'] as Map<String, dynamic>),
  video: DeletePresetsPresetIdResponseDataPermissionsMediaVideo.fromJson(json['video'] as Map<String, dynamic>),
); }

/// Audio permissions
final DeletePresetsPresetIdResponseDataPermissionsMediaAudio audio;

/// Screenshare permissions
final DeletePresetsPresetIdResponseDataPermissionsMediaScreenshare screenshare;

/// Video permissions
final DeletePresetsPresetIdResponseDataPermissionsMediaVideo video;

Map<String, dynamic> toJson() { return {
  'audio': audio.toJson(),
  'screenshare': screenshare.toJson(),
  'video': video.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('audio') &&
      json.containsKey('screenshare') &&
      json.containsKey('video'); } 
DeletePresetsPresetIdResponseDataPermissionsMedia copyWith({DeletePresetsPresetIdResponseDataPermissionsMediaAudio? audio, DeletePresetsPresetIdResponseDataPermissionsMediaScreenshare? screenshare, DeletePresetsPresetIdResponseDataPermissionsMediaVideo? video, }) { return DeletePresetsPresetIdResponseDataPermissionsMedia(
  audio: audio ?? this.audio,
  screenshare: screenshare ?? this.screenshare,
  video: video ?? this.video,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataPermissionsMedia &&
          audio == other.audio &&
          screenshare == other.screenshare &&
          video == other.video; } 
@override int get hashCode { return Object.hash(audio, screenshare, video); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsMedia(audio: $audio, screenshare: $screenshare, video: $video)'; } 
 }
