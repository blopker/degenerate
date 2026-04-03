// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The event type, must be `conversation.item.delete`.
@immutable final class RealtimeClientEventConversationItemDeleteType {const RealtimeClientEventConversationItemDeleteType._(this.value);

factory RealtimeClientEventConversationItemDeleteType.fromJson(String json) { return switch (json) {
  'conversation.item.delete' => conversationItemDelete,
  _ => RealtimeClientEventConversationItemDeleteType._(json),
}; }

static const RealtimeClientEventConversationItemDeleteType conversationItemDelete = RealtimeClientEventConversationItemDeleteType._('conversation.item.delete');

static const List<RealtimeClientEventConversationItemDeleteType> values = [conversationItemDelete];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventConversationItemDeleteType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeClientEventConversationItemDeleteType($value)'; } 
 }
/// Send this event when you want to remove any item from the conversation
/// history. The server will respond with a `conversation.item.deleted` event,
/// unless the item does not exist in the conversation history, in which case the
/// server will respond with an error.
/// 
@immutable final class RealtimeClientEventConversationItemDelete {const RealtimeClientEventConversationItemDelete({required this.type, required this.itemId, this.eventId, });

factory RealtimeClientEventConversationItemDelete.fromJson(Map<String, dynamic> json) { return RealtimeClientEventConversationItemDelete(
  eventId: json['event_id'] as String?,
  type: RealtimeClientEventConversationItemDeleteType.fromJson(json['type'] as String),
  itemId: json['item_id'] as String,
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `conversation.item.delete`.
final RealtimeClientEventConversationItemDeleteType type;

/// The ID of the item to delete.
final String itemId;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type.toJson(),
  'item_id': itemId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('item_id') && json['item_id'] is String; } 
RealtimeClientEventConversationItemDelete copyWith({String Function()? eventId, RealtimeClientEventConversationItemDeleteType? type, String? itemId, }) { return RealtimeClientEventConversationItemDelete(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeClientEventConversationItemDelete &&
          eventId == other.eventId &&
          type == other.type &&
          itemId == other.itemId; } 
@override int get hashCode { return Object.hash(eventId, type, itemId); } 
@override String toString() { return 'RealtimeClientEventConversationItemDelete(eventId: $eventId, type: $type, itemId: $itemId)'; } 
 }
