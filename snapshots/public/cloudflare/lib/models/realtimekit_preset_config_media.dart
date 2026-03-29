// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_preset_config_media_audio.dart';import 'realtimekit_preset_config_media_screenshare.dart';import 'realtimekit_preset_config_media_video.dart';/// Media configuration options. eg: Video quality
final class RealtimekitPresetConfigMedia {const RealtimekitPresetConfigMedia({this.audio, required this.screenshare, required this.video, });

factory RealtimekitPresetConfigMedia.fromJson(Map<String, dynamic> json) { return RealtimekitPresetConfigMedia(
  audio: json['audio'] != null ? RealtimekitPresetConfigMediaAudio.fromJson(json['audio'] as Map<String, dynamic>) : null,
  screenshare: RealtimekitPresetConfigMediaScreenshare.fromJson(json['screenshare'] as Map<String, dynamic>),
  video: RealtimekitPresetConfigMediaVideo.fromJson(json['video'] as Map<String, dynamic>),
); }

/// Control options for Audio quality.
final RealtimekitPresetConfigMediaAudio? audio;

/// Configuration options for participant screen shares
final RealtimekitPresetConfigMediaScreenshare screenshare;

/// Configuration options for participant videos
final RealtimekitPresetConfigMediaVideo video;

Map<String, dynamic> toJson() { return {
  if (audio != null) 'audio': audio?.toJson(),
  'screenshare': screenshare.toJson(),
  'video': video.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('screenshare') &&
      json.containsKey('video'); } 
RealtimekitPresetConfigMedia copyWith({RealtimekitPresetConfigMediaAudio Function()? audio, RealtimekitPresetConfigMediaScreenshare? screenshare, RealtimekitPresetConfigMediaVideo? video, }) { return RealtimekitPresetConfigMedia(
  audio: audio != null ? audio() : this.audio,
  screenshare: screenshare ?? this.screenshare,
  video: video ?? this.video,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitPresetConfigMedia &&
          audio == other.audio &&
          screenshare == other.screenshare &&
          video == other.video; } 
@override int get hashCode { return Object.hash(audio, screenshare, video); } 
@override String toString() { return 'RealtimekitPresetConfigMedia(audio: $audio, screenshare: $screenshare, video: $video)'; } 
 }
