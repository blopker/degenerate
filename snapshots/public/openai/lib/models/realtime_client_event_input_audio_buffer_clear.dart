// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The event type, must be `input_audio_buffer.clear`.
@immutable final class RealtimeClientEventInputAudioBufferClearType {const RealtimeClientEventInputAudioBufferClearType._(this.value);

factory RealtimeClientEventInputAudioBufferClearType.fromJson(String json) { return switch (json) {
  'input_audio_buffer.clear' => inputAudioBufferClear,
  _ => RealtimeClientEventInputAudioBufferClearType._(json),
}; }

static const RealtimeClientEventInputAudioBufferClearType inputAudioBufferClear = RealtimeClientEventInputAudioBufferClearType._('input_audio_buffer.clear');

static const List<RealtimeClientEventInputAudioBufferClearType> values = [inputAudioBufferClear];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventInputAudioBufferClearType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeClientEventInputAudioBufferClearType($value)'; } 
 }
/// Send this event to clear the audio bytes in the buffer. The server will
/// respond with an `input_audio_buffer.cleared` event.
/// 
@immutable final class RealtimeClientEventInputAudioBufferClear {const RealtimeClientEventInputAudioBufferClear({required this.type, this.eventId, });

factory RealtimeClientEventInputAudioBufferClear.fromJson(Map<String, dynamic> json) { return RealtimeClientEventInputAudioBufferClear(
  eventId: json['event_id'] as String?,
  type: RealtimeClientEventInputAudioBufferClearType.fromJson(json['type'] as String),
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `input_audio_buffer.clear`.
final RealtimeClientEventInputAudioBufferClearType type;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RealtimeClientEventInputAudioBufferClear copyWith({String Function()? eventId, RealtimeClientEventInputAudioBufferClearType? type, }) { return RealtimeClientEventInputAudioBufferClear(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeClientEventInputAudioBufferClear &&
          eventId == other.eventId &&
          type == other.type; } 
@override int get hashCode { return Object.hash(eventId, type); } 
@override String toString() { return 'RealtimeClientEventInputAudioBufferClear(eventId: $eventId, type: $type)'; } 
 }
