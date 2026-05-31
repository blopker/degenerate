// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'speech_audio_done_event_usage.dart';/// Emitted when the speech synthesis is complete and all audio has been streamed.
@immutable final class SpeechAudioDoneEvent {const SpeechAudioDoneEvent({required this.type, required this.usage, });

factory SpeechAudioDoneEvent.fromJson(Map<String, dynamic> json) { return SpeechAudioDoneEvent(
  type: json['type'] as String,
  usage: SpeechAudioDoneEventUsage.fromJson(json['usage'] as Map<String, dynamic>),
); }

/// The type of the event. Always `speech.audio.done`.
/// 
final String type;

/// Token usage statistics for the request.
/// 
final SpeechAudioDoneEventUsage usage;

Map<String, dynamic> toJson() { return {
  'type': type,
  'usage': usage.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('usage'); } 
SpeechAudioDoneEvent copyWith({String? type, SpeechAudioDoneEventUsage? usage, }) { return SpeechAudioDoneEvent(
  type: type ?? this.type,
  usage: usage ?? this.usage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpeechAudioDoneEvent &&
          type == other.type &&
          usage == other.usage; } 
@override int get hashCode { return Object.hash(type, usage); } 
@override String toString() { return 'SpeechAudioDoneEvent(type: $type, usage: $usage)'; } 
 }
