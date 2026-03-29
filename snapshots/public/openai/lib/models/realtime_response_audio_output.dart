// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pcm_audio_format.dart';import 'pcma_audio_format.dart';import 'pcmu_audio_format.dart';import 'realtime_audio_formats.dart';import 'voice_ids_shared.dart';final class RealtimeResponseAudioOutput {const RealtimeResponseAudioOutput({this.format, this.voice, });

factory RealtimeResponseAudioOutput.fromJson(Map<String, dynamic> json) { return RealtimeResponseAudioOutput(
  format: json['format'] != null ? OneOf3.parse(json['format'], fromA: (v) => PcmAudioFormat.fromJson(v as Map<String, dynamic>), fromB: (v) => PcmuAudioFormat.fromJson(v as Map<String, dynamic>), fromC: (v) => PcmaAudioFormat.fromJson(v as Map<String, dynamic>),) : null,
  voice: json['voice'] != null ? OneOf2.parse(json['voice'], fromA: (v) => v as String, fromB: (v) => VoiceIdsSharedVariant2.fromJson(v as String),) : null,
); }

/// The format of the output audio.
final RealtimeAudioFormats? format;

/// The voice the model uses to respond. Voice cannot be changed during the
/// session once the model has responded with audio at least once. Current
/// voice options are `alloy`, `ash`, `ballad`, `coral`, `echo`, `sage`,
/// `shimmer`, `verse`, `marin`, and `cedar`. We recommend `marin` and `cedar` for
/// best quality.
/// 
final VoiceIdsShared? voice;

Map<String, dynamic> toJson() { return {
  if (format != null) 'format': format?.toJson(),
  if (voice != null) 'voice': voice?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'format', 'voice'}.contains(key)); } 
RealtimeResponseAudioOutput copyWith({RealtimeAudioFormats Function()? format, VoiceIdsShared Function()? voice, }) { return RealtimeResponseAudioOutput(
  format: format != null ? format() : this.format,
  voice: voice != null ? voice() : this.voice,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeResponseAudioOutput &&
          format == other.format &&
          voice == other.voice; } 
@override int get hashCode { return Object.hash(format, voice); } 
@override String toString() { return 'RealtimeResponseAudioOutput(format: $format, voice: $voice)'; } 
 }
