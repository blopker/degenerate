// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Returned when the input audio buffer is cleared by the client with a
/// `input_audio_buffer.clear` event.
/// 
@immutable final class RealtimeServerEventInputAudioBufferCleared {const RealtimeServerEventInputAudioBufferCleared({required this.eventId, required this.type, });

factory RealtimeServerEventInputAudioBufferCleared.fromJson(Map<String, dynamic> json) { return RealtimeServerEventInputAudioBufferCleared(
  eventId: json['event_id'] as String,
  type: json['type'] as String,
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `input_audio_buffer.cleared`.
final String type;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') && json['type'] is String; } 
RealtimeServerEventInputAudioBufferCleared copyWith({String? eventId, String? type, }) { return RealtimeServerEventInputAudioBufferCleared(
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
