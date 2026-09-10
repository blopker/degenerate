// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Send this event when you want to remove any item from the conversation
/// history. The server will respond with a `conversation.item.deleted` event,
/// unless the item does not exist in the conversation history, in which case the
/// server will respond with an error.
/// 
@immutable final class RealtimeClientEventConversationItemDelete {const RealtimeClientEventConversationItemDelete({required this.type, required this.itemId, this.eventId, });

factory RealtimeClientEventConversationItemDelete.fromJson(Map<String, dynamic> json) { return RealtimeClientEventConversationItemDelete(
  eventId: json['event_id'] as String?,
  type: json['type'] as String,
  itemId: json['item_id'] as String,
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `conversation.item.delete`.
final String type;

/// The ID of the item to delete.
final String itemId;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type,
  'item_id': itemId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('item_id') && json['item_id'] is String; } 
RealtimeClientEventConversationItemDelete copyWith({String? Function()? eventId, String? type, String? itemId, }) { return RealtimeClientEventConversationItemDelete(
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
