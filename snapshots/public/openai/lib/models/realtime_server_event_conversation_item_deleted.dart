// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Returned when an item in the conversation is deleted by the client with a
/// `conversation.item.delete` event. This event is used to synchronize the
/// server's understanding of the conversation history with the client's view.
/// 
@immutable final class RealtimeServerEventConversationItemDeleted {const RealtimeServerEventConversationItemDeleted({required this.eventId, required this.type, required this.itemId, });

factory RealtimeServerEventConversationItemDeleted.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemDeleted(
  eventId: json['event_id'] as String,
  type: json['type'] as String,
  itemId: json['item_id'] as String,
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `conversation.item.deleted`.
final String type;

/// The ID of the item that was deleted.
final String itemId;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type,
  'item_id': itemId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('item_id') && json['item_id'] is String; } 
RealtimeServerEventConversationItemDeleted copyWith({String? eventId, String? type, String? itemId, }) { return RealtimeServerEventConversationItemDeleted(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventConversationItemDeleted &&
          eventId == other.eventId &&
          type == other.type &&
          itemId == other.itemId; } 
@override int get hashCode { return Object.hash(eventId, type, itemId); } 
@override String toString() { return 'RealtimeServerEventConversationItemDeleted(eventId: $eventId, type: $type, itemId: $itemId)'; } 
 }
