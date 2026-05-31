// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// **WebRTC/SIP Only:** Emitted when the output audio buffer has been completely drained on the server,
/// and no more audio is forthcoming. This event is emitted after the full response
/// data has been sent to the client (`response.done`).
/// [Learn more](/docs/guides/realtime-conversations#client-and-server-events-for-audio-in-webrtc).
/// 
@immutable final class RealtimeServerEventOutputAudioBufferStopped {const RealtimeServerEventOutputAudioBufferStopped({required this.eventId, required this.type, required this.responseId, });

factory RealtimeServerEventOutputAudioBufferStopped.fromJson(Map<String, dynamic> json) { return RealtimeServerEventOutputAudioBufferStopped(
  eventId: json['event_id'] as String,
  type: json['type'] as String,
  responseId: json['response_id'] as String,
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `output_audio_buffer.stopped`.
final String type;

/// The unique ID of the response that produced the audio.
final String responseId;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type,
  'response_id': responseId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('response_id') && json['response_id'] is String; } 
RealtimeServerEventOutputAudioBufferStopped copyWith({String? eventId, String? type, String? responseId, }) { return RealtimeServerEventOutputAudioBufferStopped(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  responseId: responseId ?? this.responseId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventOutputAudioBufferStopped &&
          eventId == other.eventId &&
          type == other.type &&
          responseId == other.responseId; } 
@override int get hashCode { return Object.hash(eventId, type, responseId); } 
@override String toString() { return 'RealtimeServerEventOutputAudioBufferStopped(eventId: $eventId, type: $type, responseId: $responseId)'; } 
 }
