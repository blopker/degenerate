// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// **WebRTC/SIP Only:** Emitted when the server begins streaming audio to the client. This event is
/// emitted after an audio content part has been added (`response.content_part.added`)
/// to the response.
/// [Learn more](/docs/guides/realtime-conversations#client-and-server-events-for-audio-in-webrtc).
/// 
@immutable final class RealtimeServerEventOutputAudioBufferStarted {const RealtimeServerEventOutputAudioBufferStarted({required this.eventId, required this.type, required this.responseId, });

factory RealtimeServerEventOutputAudioBufferStarted.fromJson(Map<String, dynamic> json) { return RealtimeServerEventOutputAudioBufferStarted(
  eventId: json['event_id'] as String,
  type: json['type'] as String,
  responseId: json['response_id'] as String,
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `output_audio_buffer.started`.
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
RealtimeServerEventOutputAudioBufferStarted copyWith({String? eventId, String? type, String? responseId, }) { return RealtimeServerEventOutputAudioBufferStarted(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  responseId: responseId ?? this.responseId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventOutputAudioBufferStarted &&
          eventId == other.eventId &&
          type == other.type &&
          responseId == other.responseId; } 
@override int get hashCode { return Object.hash(eventId, type, responseId); } 
@override String toString() { return 'RealtimeServerEventOutputAudioBufferStarted(eventId: $eventId, type: $type, responseId: $responseId)'; } 
 }
