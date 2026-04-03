// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configuration for turn detection. Can be set to `null` to turn off. Server
/// VAD means that the model will detect the start and end of speech based on
/// audio volume and respond at the end of user speech.
/// 
@immutable final class RealtimeTranscriptionSessionCreateResponseGaAudioInputTurnDetection {const RealtimeTranscriptionSessionCreateResponseGaAudioInputTurnDetection({this.type, this.threshold, this.prefixPaddingMs, this.silenceDurationMs, });

factory RealtimeTranscriptionSessionCreateResponseGaAudioInputTurnDetection.fromJson(Map<String, dynamic> json) { return RealtimeTranscriptionSessionCreateResponseGaAudioInputTurnDetection(
  type: json['type'] as String?,
  threshold: json['threshold'] != null ? (json['threshold'] as num).toDouble() : null,
  prefixPaddingMs: json['prefix_padding_ms'] != null ? (json['prefix_padding_ms'] as num).toInt() : null,
  silenceDurationMs: json['silence_duration_ms'] != null ? (json['silence_duration_ms'] as num).toInt() : null,
); }

/// Type of turn detection, only `server_vad` is currently supported.
/// 
final String? type;

/// Activation threshold for VAD (0.0 to 1.0), this defaults to 0.5. A
/// higher threshold will require louder audio to activate the model, and
/// thus might perform better in noisy environments.
/// 
final double? threshold;

/// Amount of audio to include before the VAD detected speech (in
/// milliseconds). Defaults to 300ms.
/// 
final int? prefixPaddingMs;

/// Duration of silence to detect speech stop (in milliseconds). Defaults
/// to 500ms. With shorter values the model will respond more quickly,
/// but may jump in on short pauses from the user.
/// 
final int? silenceDurationMs;

Map<String, dynamic> toJson() { return {
  'type': ?type,
  'threshold': ?threshold,
  'prefix_padding_ms': ?prefixPaddingMs,
  'silence_duration_ms': ?silenceDurationMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'threshold', 'prefix_padding_ms', 'silence_duration_ms'}.contains(key)); } 
RealtimeTranscriptionSessionCreateResponseGaAudioInputTurnDetection copyWith({String Function()? type, double Function()? threshold, int Function()? prefixPaddingMs, int Function()? silenceDurationMs, }) { return RealtimeTranscriptionSessionCreateResponseGaAudioInputTurnDetection(
  type: type != null ? type() : this.type,
  threshold: threshold != null ? threshold() : this.threshold,
  prefixPaddingMs: prefixPaddingMs != null ? prefixPaddingMs() : this.prefixPaddingMs,
  silenceDurationMs: silenceDurationMs != null ? silenceDurationMs() : this.silenceDurationMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeTranscriptionSessionCreateResponseGaAudioInputTurnDetection &&
          type == other.type &&
          threshold == other.threshold &&
          prefixPaddingMs == other.prefixPaddingMs &&
          silenceDurationMs == other.silenceDurationMs; } 
@override int get hashCode { return Object.hash(type, threshold, prefixPaddingMs, silenceDurationMs); } 
@override String toString() { return 'RealtimeTranscriptionSessionCreateResponseGaAudioInputTurnDetection(type: $type, threshold: $threshold, prefixPaddingMs: $prefixPaddingMs, silenceDurationMs: $silenceDurationMs)'; } 
 }
