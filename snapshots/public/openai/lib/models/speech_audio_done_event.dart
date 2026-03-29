// GENERATED CODE - DO NOT MODIFY BY HAND

import 'speech_audio_done_event_usage.dart';/// The type of the event. Always `speech.audio.done`.
/// 
final class SpeechAudioDoneEventType {const SpeechAudioDoneEventType._(this.value);

factory SpeechAudioDoneEventType.fromJson(String json) { return switch (json) {
  'speech.audio.done' => speechAudioDone,
  _ => SpeechAudioDoneEventType._(json),
}; }

static const SpeechAudioDoneEventType speechAudioDone = SpeechAudioDoneEventType._('speech.audio.done');

static const List<SpeechAudioDoneEventType> values = [speechAudioDone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpeechAudioDoneEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpeechAudioDoneEventType($value)'; } 
 }
/// Emitted when the speech synthesis is complete and all audio has been streamed.
final class SpeechAudioDoneEvent {const SpeechAudioDoneEvent({required this.type, required this.usage, });

factory SpeechAudioDoneEvent.fromJson(Map<String, dynamic> json) { return SpeechAudioDoneEvent(
  type: SpeechAudioDoneEventType.fromJson(json['type'] as String),
  usage: SpeechAudioDoneEventUsage.fromJson(json['usage'] as Map<String, dynamic>),
); }

/// The type of the event. Always `speech.audio.done`.
/// 
final SpeechAudioDoneEventType type;

/// Token usage statistics for the request.
/// 
final SpeechAudioDoneEventUsage usage;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'usage': usage.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('usage'); } 
SpeechAudioDoneEvent copyWith({SpeechAudioDoneEventType? type, SpeechAudioDoneEventUsage? usage, }) { return SpeechAudioDoneEvent(
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
