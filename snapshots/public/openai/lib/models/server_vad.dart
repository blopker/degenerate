// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Server-side voice activity detection (VAD) which flips on when user speech is detected and off after a period of silence.
@immutable final class ServerVad {const ServerVad({this.type = 'server_vad', this.threshold, this.prefixPaddingMs, this.silenceDurationMs, this.createResponse = true, this.interruptResponse = true, this.idleTimeoutMs, });

factory ServerVad.fromJson(Map<String, dynamic> json) { return ServerVad(
  type: json['type'] as String,
  threshold: json['threshold'] != null ? (json['threshold'] as num).toDouble() : null,
  prefixPaddingMs: json['prefix_padding_ms'] != null ? (json['prefix_padding_ms'] as num).toInt() : null,
  silenceDurationMs: json['silence_duration_ms'] != null ? (json['silence_duration_ms'] as num).toInt() : null,
  createResponse: json.containsKey('create_response') ? json['create_response'] as bool : true,
  interruptResponse: json.containsKey('interrupt_response') ? json['interrupt_response'] as bool : true,
  idleTimeoutMs: json['idle_timeout_ms'] != null ? (json['idle_timeout_ms'] as num).toInt() : null,
); }

/// Type of turn detection, `server_vad` to turn on simple Server VAD.
/// 
final String type;

/// Used only for `server_vad` mode. Activation threshold for VAD (0.0 to 1.0), this defaults to 0.5. A
/// higher threshold will require louder audio to activate the model, and
/// thus might perform better in noisy environments.
/// 
final double? threshold;

/// Used only for `server_vad` mode. Amount of audio to include before the VAD detected speech (in
/// milliseconds). Defaults to 300ms.
/// 
final int? prefixPaddingMs;

/// Used only for `server_vad` mode. Duration of silence to detect speech stop (in milliseconds). Defaults
/// to 500ms. With shorter values the model will respond more quickly,
/// but may jump in on short pauses from the user.
/// 
final int? silenceDurationMs;

/// Whether or not to automatically generate a response when a VAD stop event occurs. If `interrupt_response` is set to `false` this may fail to create a response if the model is already responding.
/// 
/// If both `create_response` and `interrupt_response` are set to `false`, the model will never respond automatically but VAD events will still be emitted.
/// 
final bool createResponse;

/// Whether or not to automatically interrupt (cancel) any ongoing response with output to the default
/// conversation (i.e. `conversation` of `auto`) when a VAD start event occurs. If `true` then the response will be cancelled, otherwise it will continue until complete.
/// 
/// If both `create_response` and `interrupt_response` are set to `false`, the model will never respond automatically but VAD events will still be emitted.
/// 
final bool interruptResponse;

/// Optional timeout after which a model response will be triggered automatically. This is
/// useful for situations in which a long pause from the user is unexpected, such as a phone
/// call. The model will effectively prompt the user to continue the conversation based
/// on the current context.
/// 
/// The timeout value will be applied after the last model response's audio has finished playing,
/// i.e. it's set to the `response.done` time plus audio playback duration.
/// 
/// An `input_audio_buffer.timeout_triggered` event (plus events
/// associated with the Response) will be emitted when the timeout is reached.
/// Idle timeout is currently only supported for `server_vad` mode.
/// 
final int? idleTimeoutMs;

Map<String, dynamic> toJson() { return {
  'type': type,
  'threshold': ?threshold,
  'prefix_padding_ms': ?prefixPaddingMs,
  'silence_duration_ms': ?silenceDurationMs,
  'create_response': createResponse,
  'interrupt_response': interruptResponse,
  'idle_timeout_ms': ?idleTimeoutMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
ServerVad copyWith({String? type, double Function()? threshold, int Function()? prefixPaddingMs, int Function()? silenceDurationMs, bool Function()? createResponse, bool Function()? interruptResponse, int? Function()? idleTimeoutMs, }) { return ServerVad(
  type: type ?? this.type,
  threshold: threshold != null ? threshold() : this.threshold,
  prefixPaddingMs: prefixPaddingMs != null ? prefixPaddingMs() : this.prefixPaddingMs,
  silenceDurationMs: silenceDurationMs != null ? silenceDurationMs() : this.silenceDurationMs,
  createResponse: createResponse != null ? createResponse() : this.createResponse,
  interruptResponse: interruptResponse != null ? interruptResponse() : this.interruptResponse,
  idleTimeoutMs: idleTimeoutMs != null ? idleTimeoutMs() : this.idleTimeoutMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ServerVad &&
          type == other.type &&
          threshold == other.threshold &&
          prefixPaddingMs == other.prefixPaddingMs &&
          silenceDurationMs == other.silenceDurationMs &&
          createResponse == other.createResponse &&
          interruptResponse == other.interruptResponse &&
          idleTimeoutMs == other.idleTimeoutMs; } 
@override int get hashCode { return Object.hash(type, threshold, prefixPaddingMs, silenceDurationMs, createResponse, interruptResponse, idleTimeoutMs); } 
@override String toString() { return 'ServerVad(type: $type, threshold: $threshold, prefixPaddingMs: $prefixPaddingMs, silenceDurationMs: $silenceDurationMs, createResponse: $createResponse, interruptResponse: $interruptResponse, idleTimeoutMs: $idleTimeoutMs)'; } 
 }
