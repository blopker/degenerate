// GENERATED CODE - DO NOT MODIFY BY HAND

/// The event type, must be `input_audio_buffer.cleared`.
final class RealtimeServerEventInputAudioBufferClearedType {const RealtimeServerEventInputAudioBufferClearedType._(this.value);

factory RealtimeServerEventInputAudioBufferClearedType.fromJson(String json) { return switch (json) {
  'input_audio_buffer.cleared' => inputAudioBufferCleared,
  _ => RealtimeServerEventInputAudioBufferClearedType._(json),
}; }

static const RealtimeServerEventInputAudioBufferClearedType inputAudioBufferCleared = RealtimeServerEventInputAudioBufferClearedType._('input_audio_buffer.cleared');

static const List<RealtimeServerEventInputAudioBufferClearedType> values = [inputAudioBufferCleared];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventInputAudioBufferClearedType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeServerEventInputAudioBufferClearedType($value)'; } 
 }
/// Returned when the input audio buffer is cleared by the client with a
/// `input_audio_buffer.clear` event.
/// 
final class RealtimeServerEventInputAudioBufferCleared {const RealtimeServerEventInputAudioBufferCleared({required this.eventId, required this.type, });

factory RealtimeServerEventInputAudioBufferCleared.fromJson(Map<String, dynamic> json) { return RealtimeServerEventInputAudioBufferCleared(
  eventId: json['event_id'] as String,
  type: RealtimeServerEventInputAudioBufferClearedType.fromJson(json['type'] as String),
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `input_audio_buffer.cleared`.
final RealtimeServerEventInputAudioBufferClearedType type;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type'); } 
RealtimeServerEventInputAudioBufferCleared copyWith({String? eventId, RealtimeServerEventInputAudioBufferClearedType? type, }) { return RealtimeServerEventInputAudioBufferCleared(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventInputAudioBufferCleared &&
          eventId == other.eventId &&
          type == other.type; } 
@override int get hashCode { return Object.hash(eventId, type); } 
@override String toString() { return 'RealtimeServerEventInputAudioBufferCleared(eventId: $eventId, type: $type)'; } 
 }
