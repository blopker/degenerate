// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Send this event to commit the user input audio buffer, which will create a  new user message item in the conversation. This event will produce an error  if the input audio buffer is empty. When in Server VAD mode, the client does  not need to send this event, the server will commit the audio buffer  automatically.
/// 
/// Committing the input audio buffer will trigger input audio transcription  (if enabled in session configuration), but it will not create a response  from the model. The server will respond with an `input_audio_buffer.committed` event.
/// 
@immutable final class RealtimeClientEventInputAudioBufferCommit {const RealtimeClientEventInputAudioBufferCommit({required this.type, this.eventId, });

factory RealtimeClientEventInputAudioBufferCommit.fromJson(Map<String, dynamic> json) { return RealtimeClientEventInputAudioBufferCommit(
  eventId: json['event_id'] as String?,
  type: json['type'] as String,
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `input_audio_buffer.commit`.
final String type;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
RealtimeClientEventInputAudioBufferCommit copyWith({String Function()? eventId, String? type, }) { return RealtimeClientEventInputAudioBufferCommit(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeClientEventInputAudioBufferCommit &&
          eventId == other.eventId &&
          type == other.type; } 
@override int get hashCode { return Object.hash(eventId, type); } 
@override String toString() { return 'RealtimeClientEventInputAudioBufferCommit(eventId: $eventId, type: $type)'; } 
 }
