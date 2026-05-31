// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_conversation_item.dart';/// Returned when a conversation item is created. There are several scenarios that produce this event:
///   - The server is generating a Response, which if successful will produce
///     either one or two Items, which will be of type `message`
///     (role `assistant`) or type `function_call`.
///   - The input audio buffer has been committed, either by the client or the
///     server (in `server_vad` mode). The server will take the content of the
///     input audio buffer and add it to a new user message Item.
///   - The client has sent a `conversation.item.create` event to add a new Item
///     to the Conversation.
/// 
@immutable final class RealtimeServerEventConversationItemCreated {const RealtimeServerEventConversationItemCreated({required this.eventId, required this.type, required this.item, this.previousItemId, });

factory RealtimeServerEventConversationItemCreated.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemCreated(
  eventId: json['event_id'] as String,
  type: json['type'] as String,
  previousItemId: json['previous_item_id'] as String?,
  item: RealtimeConversationItem.fromJson(json['item'] as Map<String, dynamic>),
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `conversation.item.created`.
final String type;

/// The ID of the preceding item in the Conversation context, allows the
/// client to understand the order of the conversation. Can be `null` if the
/// item has no predecessor.
/// 
final String? previousItemId;

final RealtimeConversationItem item;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type,
  'previous_item_id': ?previousItemId,
  'item': item.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('item'); } 
RealtimeServerEventConversationItemCreated copyWith({String? eventId, String? type, String? Function()? previousItemId, RealtimeConversationItem? item, }) { return RealtimeServerEventConversationItemCreated(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  previousItemId: previousItemId != null ? previousItemId() : this.previousItemId,
  item: item ?? this.item,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventConversationItemCreated &&
          eventId == other.eventId &&
          type == other.type &&
          previousItemId == other.previousItemId &&
          item == other.item; } 
@override int get hashCode { return Object.hash(eventId, type, previousItemId, item); } 
@override String toString() { return 'RealtimeServerEventConversationItemCreated(eventId: $eventId, type: $type, previousItemId: $previousItemId, item: $item)'; } 
 }
