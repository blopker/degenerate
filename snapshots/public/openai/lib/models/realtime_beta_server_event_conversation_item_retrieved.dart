// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_conversation_item.dart';/// The event type, must be `conversation.item.retrieved`.
@immutable final class RealtimeBetaServerEventConversationItemRetrievedType {const RealtimeBetaServerEventConversationItemRetrievedType._(this.value);

factory RealtimeBetaServerEventConversationItemRetrievedType.fromJson(String json) { return switch (json) {
  'conversation.item.retrieved' => conversationItemRetrieved,
  _ => RealtimeBetaServerEventConversationItemRetrievedType._(json),
}; }

static const RealtimeBetaServerEventConversationItemRetrievedType conversationItemRetrieved = RealtimeBetaServerEventConversationItemRetrievedType._('conversation.item.retrieved');

static const List<RealtimeBetaServerEventConversationItemRetrievedType> values = [conversationItemRetrieved];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaServerEventConversationItemRetrievedType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaServerEventConversationItemRetrievedType($value)'; } 
 }
/// Returned when a conversation item is retrieved with `conversation.item.retrieve`.
/// 
@immutable final class RealtimeBetaServerEventConversationItemRetrieved {const RealtimeBetaServerEventConversationItemRetrieved({required this.eventId, required this.type, required this.item, });

factory RealtimeBetaServerEventConversationItemRetrieved.fromJson(Map<String, dynamic> json) { return RealtimeBetaServerEventConversationItemRetrieved(
  eventId: json['event_id'] as String,
  type: RealtimeBetaServerEventConversationItemRetrievedType.fromJson(json['type'] as String),
  item: RealtimeConversationItem.fromJson(json['item'] as Map<String, dynamic>),
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `conversation.item.retrieved`.
final RealtimeBetaServerEventConversationItemRetrievedType type;

final RealtimeConversationItem item;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type.toJson(),
  'item': item.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') &&
      json.containsKey('item'); } 
RealtimeBetaServerEventConversationItemRetrieved copyWith({String? eventId, RealtimeBetaServerEventConversationItemRetrievedType? type, RealtimeConversationItem? item, }) { return RealtimeBetaServerEventConversationItemRetrieved(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  item: item ?? this.item,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaServerEventConversationItemRetrieved &&
          eventId == other.eventId &&
          type == other.type &&
          item == other.item; } 
@override int get hashCode { return Object.hash(eventId, type, item); } 
@override String toString() { return 'RealtimeBetaServerEventConversationItemRetrieved(eventId: $eventId, type: $type, item: $item)'; } 
 }
