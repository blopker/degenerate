// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_server_event_conversation_created_conversation.dart';/// The event type, must be `conversation.created`.
@immutable final class RealtimeServerEventConversationCreatedType {const RealtimeServerEventConversationCreatedType._(this.value);

factory RealtimeServerEventConversationCreatedType.fromJson(String json) { return switch (json) {
  'conversation.created' => conversationCreated,
  _ => RealtimeServerEventConversationCreatedType._(json),
}; }

static const RealtimeServerEventConversationCreatedType conversationCreated = RealtimeServerEventConversationCreatedType._('conversation.created');

static const List<RealtimeServerEventConversationCreatedType> values = [conversationCreated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventConversationCreatedType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeServerEventConversationCreatedType($value)'; } 
 }
/// Returned when a conversation is created. Emitted right after session creation.
/// 
@immutable final class RealtimeServerEventConversationCreated {const RealtimeServerEventConversationCreated({required this.eventId, required this.type, required this.conversation, });

factory RealtimeServerEventConversationCreated.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationCreated(
  eventId: json['event_id'] as String,
  type: RealtimeServerEventConversationCreatedType.fromJson(json['type'] as String),
  conversation: RealtimeServerEventConversationCreatedConversation.fromJson(json['conversation'] as Map<String, dynamic>),
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `conversation.created`.
final RealtimeServerEventConversationCreatedType type;

/// The conversation resource.
final RealtimeServerEventConversationCreatedConversation conversation;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type.toJson(),
  'conversation': conversation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') &&
      json.containsKey('conversation'); } 
RealtimeServerEventConversationCreated copyWith({String? eventId, RealtimeServerEventConversationCreatedType? type, RealtimeServerEventConversationCreatedConversation? conversation, }) { return RealtimeServerEventConversationCreated(
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
