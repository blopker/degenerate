// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_presets_preset_id_response_data_config_media_audio.dart';import 'delete_presets_preset_id_response_data_config_media_screenshare.dart';import 'delete_presets_preset_id_response_data_config_media_video.dart';/// Media configuration options. eg: Video quality
@immutable final class DeletePresetsPresetIdResponseDataConfigMedia {const DeletePresetsPresetIdResponseDataConfigMedia({required this.screenshare, required this.video, this.audio, });

factory DeletePresetsPresetIdResponseDataConfigMedia.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataConfigMedia(
  audio: json['audio'] != null ? DeletePresetsPresetIdResponseDataConfigMediaAudio.fromJson(json['audio'] as Map<String, dynamic>) : null,
  screenshare: DeletePresetsPresetIdResponseDataConfigMediaScreenshare.fromJson(json['screenshare'] as Map<String, dynamic>),
  video: DeletePresetsPresetIdResponseDataConfigMediaVideo.fromJson(json['video'] as Map<String, dynamic>),
); }

/// Control options for Audio quality.
final DeletePresetsPresetIdResponseDataConfigMediaAudio? audio;

/// Configuration options for participant screen shares
final DeletePresetsPresetIdResponseDataConfigMediaScreenshare screenshare;

/// Configuration options for participant videos
final DeletePresetsPresetIdResponseDataConfigMediaVideo video;

Map<String, dynamic> toJson() { return {
  if (audio != null) 'audio': audio?.toJson(),
  'screenshare': screenshare.toJson(),
  'video': video.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('screenshare') &&
      json.containsKey('video'); } 
DeletePresetsPresetIdResponseDataConfigMedia copyWith({DeletePresetsPresetIdResponseDataConfigMediaAudio Function()? audio, DeletePresetsPresetIdResponseDataConfigMediaScreenshare? screenshare, DeletePresetsPresetIdResponseDataConfigMediaVideo? video, }) { return DeletePresetsPresetIdResponseDataConfigMedia(
  audio: audio != null ? audio() : this.audio,
  screenshare: screenshare ?? this.screenshare,
  video: video ?? this.video,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataConfigMedia &&
          audio == other.audio &&
          screenshare == other.screenshare &&
          video == other.video; } 
@override int get hashCode { return Object.hash(audio, screenshare, video); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataConfigMedia(audio: $audio, screenshare: $screenshare, video: $video)'; } 
 }
