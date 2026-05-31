// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Returned in `server_vad` mode when the server detects the end of speech in
/// the audio buffer. The server will also send an `conversation.item.created`
/// event with the user message item that is created from the audio buffer.
/// 
@immutable final class RealtimeServerEventInputAudioBufferSpeechStopped {const RealtimeServerEventInputAudioBufferSpeechStopped({required this.eventId, required this.type, required this.audioEndMs, required this.itemId, });

factory RealtimeServerEventInputAudioBufferSpeechStopped.fromJson(Map<String, dynamic> json) { return RealtimeServerEventInputAudioBufferSpeechStopped(
  eventId: json['event_id'] as String,
  type: json['type'] as String,
  audioEndMs: (json['audio_end_ms'] as num).toInt(),
  itemId: json['item_id'] as String,
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `input_audio_buffer.speech_stopped`.
final String type;

/// Milliseconds since the session started when speech stopped. This will
/// correspond to the end of audio sent to the model, and thus includes the
/// `min_silence_duration_ms` configured in the Session.
/// 
final int audioEndMs;

/// The ID of the user message item that will be created.
final String itemId;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type,
  'audio_end_ms': audioEndMs,
  'item_id': itemId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('audio_end_ms') && json['audio_end_ms'] is num &&
      json.containsKey('item_id') && json['item_id'] is String; } 
RealtimeServerEventInputAudioBufferSpeechStopped copyWith({String? eventId, String? type, int? audioEndMs, String? itemId, }) { return RealtimeServerEventInputAudioBufferSpeechStopped(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  audioEndMs: audioEndMs ?? this.audioEndMs,
  itemId: itemId ?? this.itemId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventInputAudioBufferSpeechStopped &&
          eventId == other.eventId &&
          type == other.type &&
          audioEndMs == other.audioEndMs &&
          itemId == other.itemId; } 
@override int get hashCode { return Object.hash(eventId, type, audioEndMs, itemId); } 
@override String toString() { return 'RealtimeServerEventInputAudioBufferSpeechStopped(eventId: $eventId, type: $type, audioEndMs: $audioEndMs, itemId: $itemId)'; } 
 }
