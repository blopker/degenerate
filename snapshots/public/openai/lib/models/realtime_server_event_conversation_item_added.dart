// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_conversation_item.dart';/// Sent by the server when an Item is added to the default Conversation. This can happen in several cases:
/// - When the client sends a `conversation.item.create` event.
/// - When the input audio buffer is committed. In this case the item will be a user message containing the audio from the buffer.
/// - When the model is generating a Response. In this case the `conversation.item.added` event will be sent when the model starts generating a specific Item, and thus it will not yet have any content (and `status` will be `in_progress`).
/// 
/// The event will include the full content of the Item (except when model is generating a Response) except for audio data, which can be retrieved separately with a `conversation.item.retrieve` event if necessary.
/// 
@immutable final class RealtimeServerEventConversationItemAdded {const RealtimeServerEventConversationItemAdded({required this.eventId, required this.type, required this.item, this.previousItemId, });

factory RealtimeServerEventConversationItemAdded.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemAdded(
  eventId: json['event_id'] as String,
  type: json['type'] as String,
  previousItemId: json['previous_item_id'] as String?,
  item: RealtimeConversationItem.fromJson(json['item'] as Map<String, dynamic>),
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `conversation.item.added`.
final String type;

/// The ID of the item that precedes this one, if any. This is used to
/// maintain ordering when items are inserted.
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
RealtimeServerEventConversationItemAdded copyWith({String? eventId, String? type, String? Function()? previousItemId, RealtimeConversationItem? item, }) { return RealtimeServerEventConversationItemAdded(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  previousItemId: previousItemId != null ? previousItemId() : this.previousItemId,
  item: item ?? this.item,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventConversationItemAdded &&
          eventId == other.eventId &&
          type == other.type &&
          previousItemId == other.previousItemId &&
          item == other.item; } 
@override int get hashCode { return Object.hash(eventId, type, previousItemId, item); } 
@override String toString() { return 'RealtimeServerEventConversationItemAdded(eventId: $eventId, type: $type, previousItemId: $previousItemId, item: $item)'; } 
 }
