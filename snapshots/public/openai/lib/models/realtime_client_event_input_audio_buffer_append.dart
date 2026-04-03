// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The event type, must be `input_audio_buffer.append`.
@immutable final class RealtimeClientEventInputAudioBufferAppendType {const RealtimeClientEventInputAudioBufferAppendType._(this.value);

factory RealtimeClientEventInputAudioBufferAppendType.fromJson(String json) { return switch (json) {
  'input_audio_buffer.append' => inputAudioBufferAppend,
  _ => RealtimeClientEventInputAudioBufferAppendType._(json),
}; }

static const RealtimeClientEventInputAudioBufferAppendType inputAudioBufferAppend = RealtimeClientEventInputAudioBufferAppendType._('input_audio_buffer.append');

static const List<RealtimeClientEventInputAudioBufferAppendType> values = [inputAudioBufferAppend];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventInputAudioBufferAppendType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeClientEventInputAudioBufferAppendType($value)'; } 
 }
/// Send this event to append audio bytes to the input audio buffer. The audio
/// buffer is temporary storage you can write to and later commit. A "commit" will create a new
/// user message item in the conversation history from the buffer content and clear the buffer.
/// Input audio transcription (if enabled) will be generated when the buffer is committed.
/// 
/// If VAD is enabled the audio buffer is used to detect speech and the server will decide
/// when to commit. When Server VAD is disabled, you must commit the audio buffer
/// manually. Input audio noise reduction operates on writes to the audio buffer.
/// 
/// The client may choose how much audio to place in each event up to a maximum
/// of 15 MiB, for example streaming smaller chunks from the client may allow the
/// VAD to be more responsive. Unlike most other client events, the server will
/// not send a confirmation response to this event.
/// 
@immutable final class RealtimeClientEventInputAudioBufferAppend {const RealtimeClientEventInputAudioBufferAppend({required this.type, required this.audio, this.eventId, });

factory RealtimeClientEventInputAudioBufferAppend.fromJson(Map<String, dynamic> json) { return RealtimeClientEventInputAudioBufferAppend(
  eventId: json['event_id'] as String?,
  type: RealtimeClientEventInputAudioBufferAppendType.fromJson(json['type'] as String),
  audio: json['audio'] as String,
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `input_audio_buffer.append`.
final RealtimeClientEventInputAudioBufferAppendType type;

/// Base64-encoded audio bytes. This must be in the format specified by the
/// `input_audio_format` field in the session configuration.
/// 
final String audio;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type.toJson(),
  'audio': audio,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('audio') && json['audio'] is String; } 
RealtimeClientEventInputAudioBufferAppend copyWith({String Function()? eventId, RealtimeClientEventInputAudioBufferAppendType? type, String? audio, }) { return RealtimeClientEventInputAudioBufferAppend(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
  audio: audio ?? this.audio,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeClientEventInputAudioBufferAppend &&
          eventId == other.eventId &&
          type == other.type &&
          audio == other.audio; } 
@override int get hashCode { return Object.hash(eventId, type, audio); } 
@override String toString() { return 'RealtimeClientEventInputAudioBufferAppend(eventId: $eventId, type: $type, audio: $audio)'; } 
 }
