// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pcm_audio_format.dart';import 'pcma_audio_format.dart';import 'pcmu_audio_format.dart';import 'realtime_audio_formats.dart';import 'voice_ids_shared.dart';final class RealtimeSessionCreateResponseAudioOutput {const RealtimeSessionCreateResponseAudioOutput({this.format, this.voice, this.speed, });

factory RealtimeSessionCreateResponseAudioOutput.fromJson(Map<String, dynamic> json) { return RealtimeSessionCreateResponseAudioOutput(
  format: json['format'] != null ? OneOf3.parse(json['format'], fromA: (v) => PcmAudioFormat.fromJson(v as Map<String, dynamic>), fromB: (v) => PcmuAudioFormat.fromJson(v as Map<String, dynamic>), fromC: (v) => PcmaAudioFormat.fromJson(v as Map<String, dynamic>),) : null,
  voice: json['voice'] != null ? OneOf2.parse(json['voice'], fromA: (v) => v as String, fromB: (v) => VoiceIdsSharedVariant2.fromJson(v as String),) : null,
  speed: json['speed'] != null ? (json['speed'] as num).toDouble() : null,
); }

final RealtimeAudioFormats? format;

final VoiceIdsShared? voice;

final double? speed;

Map<String, dynamic> toJson() { return {
  if (format != null) 'format': format?.toJson(),
  if (voice != null) 'voice': voice?.toJson(),
  'speed': ?speed,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimeSessionCreateResponseAudioOutput copyWith({RealtimeAudioFormats Function()? format, VoiceIdsShared Function()? voice, double Function()? speed, }) { return RealtimeSessionCreateResponseAudioOutput(
  format: format != null ? format() : this.format,
  voice: voice != null ? voice() : this.voice,
  speed: speed != null ? speed() : this.speed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeSessionCreateResponseAudioOutput &&
          format == other.format &&
          voice == other.voice &&
          speed == other.speed; } 
@override int get hashCode { return Object.hash(format, voice, speed); } 
@override String toString() { return 'RealtimeSessionCreateResponseAudioOutput(format: $format, voice: $voice, speed: $speed)'; } 
 }
