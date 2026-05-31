// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Send this event to clear the audio bytes in the buffer. The server will
/// respond with an `input_audio_buffer.cleared` event.
/// 
@immutable final class RealtimeClientEventInputAudioBufferClear {const RealtimeClientEventInputAudioBufferClear({required this.type, this.eventId, });

factory RealtimeClientEventInputAudioBufferClear.fromJson(Map<String, dynamic> json) { return RealtimeClientEventInputAudioBufferClear(
  eventId: json['event_id'] as String?,
  type: json['type'] as String,
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `input_audio_buffer.clear`.
final String type;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
RealtimeClientEventInputAudioBufferClear copyWith({String Function()? eventId, String? type, }) { return RealtimeClientEventInputAudioBufferClear(
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
