// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'audio_transcription.dart';import 'pcm_audio_format.dart';import 'pcma_audio_format.dart';import 'pcmu_audio_format.dart';import 'realtime_audio_formats.dart';import 'realtime_session_create_response_ga_audio_input_noise_reduction.dart';import 'realtime_turn_detection.dart';@immutable final class RealtimeSessionCreateResponseGaAudioInput {const RealtimeSessionCreateResponseGaAudioInput({this.format, this.transcription, this.noiseReduction, this.turnDetection, });

factory RealtimeSessionCreateResponseGaAudioInput.fromJson(Map<String, dynamic> json) { return RealtimeSessionCreateResponseGaAudioInput(
  format: json['format'] != null ? OneOf3.parse(json['format'], fromA: (v) => PcmAudioFormat.fromJson(v as Map<String, dynamic>), fromB: (v) => PcmuAudioFormat.fromJson(v as Map<String, dynamic>), fromC: (v) => PcmaAudioFormat.fromJson(v as Map<String, dynamic>),) : null,
  transcription: json['transcription'] != null ? AudioTranscription.fromJson(json['transcription'] as Map<String, dynamic>) : null,
  noiseReduction: json['noise_reduction'] != null ? RealtimeSessionCreateResponseGaAudioInputNoiseReduction.fromJson(json['noise_reduction'] as Map<String, dynamic>) : null,
  turnDetection: json['turn_detection'] != null ? RealtimeTurnDetection.fromJson(json['turn_detection'] as Map<String, dynamic>) : null,
); }

/// The format of the input audio.
final RealtimeAudioFormats? format;

/// Configuration for input audio transcription, defaults to off and can be set to `null` to turn off once on. Input audio transcription is not native to the model, since the model consumes audio directly. Transcription runs asynchronously through [the /audio/transcriptions endpoint](/docs/api-reference/audio/createTranscription) and should be treated as guidance of input audio content rather than precisely what the model heard. The client can optionally set the language and prompt for transcription, these offer additional guidance to the transcription service.
/// 
final AudioTranscription? transcription;

/// Configuration for input audio noise reduction. This can be set to `null` to turn off.
/// Noise reduction filters audio added to the input audio buffer before it is sent to VAD and the model.
/// Filtering the audio can improve VAD and turn detection accuracy (reducing false positives) and model performance by improving perception of the input audio.
/// 
final RealtimeSessionCreateResponseGaAudioInputNoiseReduction? noiseReduction;

final RealtimeTurnDetection? turnDetection;

Map<String, dynamic> toJson() { return {
  if (format != null) 'format': format?.toJson(),
  if (transcription != null) 'transcription': transcription?.toJson(),
  if (noiseReduction != null) 'noise_reduction': noiseReduction?.toJson(),
  if (turnDetection != null) 'turn_detection': turnDetection?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'format', 'transcription', 'noise_reduction', 'turn_detection'}.contains(key)); } 
RealtimeSessionCreateResponseGaAudioInput copyWith({RealtimeAudioFormats Function()? format, AudioTranscription Function()? transcription, RealtimeSessionCreateResponseGaAudioInputNoiseReduction Function()? noiseReduction, RealtimeTurnDetection Function()? turnDetection, }) { return RealtimeSessionCreateResponseGaAudioInput(
  format: format != null ? format() : this.format,
  transcription: transcription != null ? transcription() : this.transcription,
  noiseReduction: noiseReduction != null ? noiseReduction() : this.noiseReduction,
  turnDetection: turnDetection != null ? turnDetection() : this.turnDetection,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeSessionCreateResponseGaAudioInput &&
          format == other.format &&
          transcription == other.transcription &&
          noiseReduction == other.noiseReduction &&
          turnDetection == other.turnDetection; } 
@override int get hashCode { return Object.hash(format, transcription, noiseReduction, turnDetection); } 
@override String toString() { return 'RealtimeSessionCreateResponseGaAudioInput(format: $format, transcription: $transcription, noiseReduction: $noiseReduction, turnDetection: $turnDetection)'; } 
 }
