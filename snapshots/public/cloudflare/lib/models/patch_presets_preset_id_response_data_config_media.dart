// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_presets_preset_id_response_data_config_media_audio.dart';import 'patch_presets_preset_id_response_data_config_media_screenshare.dart';import 'patch_presets_preset_id_response_data_config_media_video.dart';/// Media configuration options. eg: Video quality
@immutable final class PatchPresetsPresetIdResponseDataConfigMedia {const PatchPresetsPresetIdResponseDataConfigMedia({required this.screenshare, required this.video, this.audio, });

factory PatchPresetsPresetIdResponseDataConfigMedia.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseDataConfigMedia(
  audio: json['audio'] != null ? PatchPresetsPresetIdResponseDataConfigMediaAudio.fromJson(json['audio'] as Map<String, dynamic>) : null,
  screenshare: PatchPresetsPresetIdResponseDataConfigMediaScreenshare.fromJson(json['screenshare'] as Map<String, dynamic>),
  video: PatchPresetsPresetIdResponseDataConfigMediaVideo.fromJson(json['video'] as Map<String, dynamic>),
); }

/// Control options for Audio quality.
final PatchPresetsPresetIdResponseDataConfigMediaAudio? audio;

/// Configuration options for participant screen shares
final PatchPresetsPresetIdResponseDataConfigMediaScreenshare screenshare;

/// Configuration options for participant videos
final PatchPresetsPresetIdResponseDataConfigMediaVideo video;

Map<String, dynamic> toJson() { return {
  if (audio != null) 'audio': audio?.toJson(),
  'screenshare': screenshare.toJson(),
  'video': video.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('screenshare') &&
      json.containsKey('video'); } 
PatchPresetsPresetIdResponseDataConfigMedia copyWith({PatchPresetsPresetIdResponseDataConfigMediaAudio? Function()? audio, PatchPresetsPresetIdResponseDataConfigMediaScreenshare? screenshare, PatchPresetsPresetIdResponseDataConfigMediaVideo? video, }) { return PatchPresetsPresetIdResponseDataConfigMedia(
  audio: audio != null ? audio() : this.audio,
  screenshare: screenshare ?? this.screenshare,
  video: video ?? this.video,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseDataConfigMedia &&
          audio == other.audio &&
          screenshare == other.screenshare &&
          video == other.video; } 
@override int get hashCode { return Object.hash(audio, screenshare, video); } 
@override String toString() { return 'PatchPresetsPresetIdResponseDataConfigMedia(audio: $audio, screenshare: $screenshare, video: $video)'; } 
 }
