// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_conversation_item.dart';/// Add a new Item to the Conversation's context, including messages, function
/// calls, and function call responses. This event can be used both to populate a
/// "history" of the conversation and to add new items mid-stream, but has the
/// current limitation that it cannot populate assistant audio messages.
/// 
/// If successful, the server will respond with a `conversation.item.created`
/// event, otherwise an `error` event will be sent.
/// 
@immutable final class RealtimeClientEventConversationItemCreate {const RealtimeClientEventConversationItemCreate({required this.type, required this.item, this.eventId, this.previousItemId, });

factory RealtimeClientEventConversationItemCreate.fromJson(Map<String, dynamic> json) { return RealtimeClientEventConversationItemCreate(
  eventId: json['event_id'] as String?,
  type: json['type'] as String,
  previousItemId: json['previous_item_id'] as String?,
  item: RealtimeConversationItem.fromJson(json['item'] as Map<String, dynamic>),
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `conversation.item.create`.
final String type;

/// The ID of the preceding item after which the new item will be inserted. If not set, the new item will be appended to the end of the conversation.
/// 
/// If set to `root`, the new item will be added to the beginning of the conversation.
/// 
/// If set to an existing ID, it allows an item to be inserted mid-conversation. If the ID cannot be found, an error will be returned and the item will not be added.
/// 
final String? previousItemId;

final RealtimeConversationItem item;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type,
  'previous_item_id': ?previousItemId,
  'item': item.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('item'); } 
RealtimeClientEventConversationItemCreate copyWith({String Function()? eventId, String? type, String Function()? previousItemId, RealtimeConversationItem? item, }) { return RealtimeClientEventConversationItemCreate(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
  previousItemId: previousItemId != null ? previousItemId() : this.previousItemId,
  item: item ?? this.item,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeClientEventConversationItemCreate &&
          eventId == other.eventId &&
          type == other.type &&
          previousItemId == other.previousItemId &&
          item == other.item; } 
@override int get hashCode { return Object.hash(eventId, type, previousItemId, item); } 
@override String toString() { return 'RealtimeClientEventConversationItemCreate(eventId: $eventId, type: $type, previousItemId: $previousItemId, item: $item)'; } 
 }
