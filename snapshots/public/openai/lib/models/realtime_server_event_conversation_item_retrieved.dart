// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_conversation_item.dart';/// Returned when a conversation item is retrieved with `conversation.item.retrieve`. This is provided as a way to fetch the server's representation of an item, for example to get access to the post-processed audio data after noise cancellation and VAD. It includes the full content of the Item, including audio data.
/// 
@immutable final class RealtimeServerEventConversationItemRetrieved {const RealtimeServerEventConversationItemRetrieved({required this.eventId, required this.type, required this.item, });

factory RealtimeServerEventConversationItemRetrieved.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemRetrieved(
  eventId: json['event_id'] as String,
  type: json['type'] as String,
  item: RealtimeConversationItem.fromJson(json['item'] as Map<String, dynamic>),
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `conversation.item.retrieved`.
final String type;

final RealtimeConversationItem item;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type,
  'item': item.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('item'); } 
RealtimeServerEventConversationItemRetrieved copyWith({String? eventId, String? type, RealtimeConversationItem? item, }) { return RealtimeServerEventConversationItemRetrieved(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  item: item ?? this.item,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventConversationItemRetrieved &&
          eventId == other.eventId &&
          type == other.type &&
          item == other.item; } 
@override int get hashCode { return Object.hash(eventId, type, item); } 
@override String toString() { return 'RealtimeServerEventConversationItemRetrieved(eventId: $eventId, type: $type, item: $item)'; } 
 }
