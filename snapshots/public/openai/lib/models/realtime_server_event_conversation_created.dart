// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_server_event_conversation_created_conversation.dart';/// Returned when a conversation is created. Emitted right after session creation.
/// 
@immutable final class RealtimeServerEventConversationCreated {const RealtimeServerEventConversationCreated({required this.eventId, required this.type, required this.conversation, });

factory RealtimeServerEventConversationCreated.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationCreated(
  eventId: json['event_id'] as String,
  type: json['type'] as String,
  conversation: RealtimeServerEventConversationCreatedConversation.fromJson(json['conversation'] as Map<String, dynamic>),
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `conversation.created`.
final String type;

/// The conversation resource.
final RealtimeServerEventConversationCreatedConversation conversation;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type,
  'conversation': conversation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('conversation'); } 
RealtimeServerEventConversationCreated copyWith({String? eventId, String? type, RealtimeServerEventConversationCreatedConversation? conversation, }) { return RealtimeServerEventConversationCreated(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  conversation: conversation ?? this.conversation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventConversationCreated &&
          eventId == other.eventId &&
          type == other.type &&
          conversation == other.conversation; } 
@override int get hashCode { return Object.hash(eventId, type, conversation); } 
@override String toString() { return 'RealtimeServerEventConversationCreated(eventId: $eventId, type: $type, conversation: $conversation)'; } 
 }
