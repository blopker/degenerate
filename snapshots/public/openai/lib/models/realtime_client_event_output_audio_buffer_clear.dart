// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// **WebRTC/SIP Only:** Emit to cut off the current audio response. This will trigger the server to
/// stop generating audio and emit a `output_audio_buffer.cleared` event. This
/// event should be preceded by a `response.cancel` client event to stop the
/// generation of the current response.
/// [Learn more](/docs/guides/realtime-conversations#client-and-server-events-for-audio-in-webrtc).
/// 
@immutable final class RealtimeClientEventOutputAudioBufferClear {const RealtimeClientEventOutputAudioBufferClear({required this.type, this.eventId, });

factory RealtimeClientEventOutputAudioBufferClear.fromJson(Map<String, dynamic> json) { return RealtimeClientEventOutputAudioBufferClear(
  eventId: json['event_id'] as String?,
  type: json['type'] as String,
); }

/// The unique ID of the client event used for error handling.
final String? eventId;

/// The event type, must be `output_audio_buffer.clear`.
final String type;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
RealtimeClientEventOutputAudioBufferClear copyWith({String Function()? eventId, String? type, }) { return RealtimeClientEventOutputAudioBufferClear(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeClientEventOutputAudioBufferClear &&
          eventId == other.eventId &&
          type == other.type; } 
@override int get hashCode { return Object.hash(eventId, type); } 
@override String toString() { return 'RealtimeClientEventOutputAudioBufferClear(eventId: $eventId, type: $type)'; } 
 }
