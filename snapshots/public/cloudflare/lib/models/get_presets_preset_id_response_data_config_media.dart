// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_presets_preset_id_response_data_config_media_audio.dart';import 'get_presets_preset_id_response_data_config_media_screenshare.dart';import 'get_presets_preset_id_response_data_config_media_video.dart';/// Media configuration options. eg: Video quality
@immutable final class GetPresetsPresetIdResponseDataConfigMedia {const GetPresetsPresetIdResponseDataConfigMedia({required this.screenshare, required this.video, this.audio, });

factory GetPresetsPresetIdResponseDataConfigMedia.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataConfigMedia(
  audio: json['audio'] != null ? GetPresetsPresetIdResponseDataConfigMediaAudio.fromJson(json['audio'] as Map<String, dynamic>) : null,
  screenshare: GetPresetsPresetIdResponseDataConfigMediaScreenshare.fromJson(json['screenshare'] as Map<String, dynamic>),
  video: GetPresetsPresetIdResponseDataConfigMediaVideo.fromJson(json['video'] as Map<String, dynamic>),
); }

/// Control options for Audio quality.
final GetPresetsPresetIdResponseDataConfigMediaAudio? audio;

/// Configuration options for participant screen shares
final GetPresetsPresetIdResponseDataConfigMediaScreenshare screenshare;

/// Configuration options for participant videos
final GetPresetsPresetIdResponseDataConfigMediaVideo video;

Map<String, dynamic> toJson() { return {
  if (audio != null) 'audio': audio?.toJson(),
  'screenshare': screenshare.toJson(),
  'video': video.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('screenshare') &&
      json.containsKey('video'); } 
GetPresetsPresetIdResponseDataConfigMedia copyWith({GetPresetsPresetIdResponseDataConfigMediaAudio? Function()? audio, GetPresetsPresetIdResponseDataConfigMediaScreenshare? screenshare, GetPresetsPresetIdResponseDataConfigMediaVideo? video, }) { return GetPresetsPresetIdResponseDataConfigMedia(
  audio: audio != null ? audio() : this.audio,
  screenshare: screenshare ?? this.screenshare,
  video: video ?? this.video,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataConfigMedia &&
          audio == other.audio &&
          screenshare == other.screenshare &&
          video == other.video; } 
@override int get hashCode { return Object.hash(audio, screenshare, video); } 
@override String toString() { return 'GetPresetsPresetIdResponseDataConfigMedia(audio: $audio, screenshare: $screenshare, video: $video)'; } 
 }
