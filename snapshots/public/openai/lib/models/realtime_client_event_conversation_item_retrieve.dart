// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Send this event when you want to retrieve the server's representation of a specific item in the conversation history. This is useful, for example, to inspect user audio after noise cancellation and VAD.
/// The server will respond with a `conversation.item.retrieved` event,
/// unless the item does not exist in the conversation history, in which case the
/// server will respond with an error.
/// 
@immutable final class RealtimeClientEventConversationItemRetrieve {const RealtimeClientEventConversationItemRetrieve({required this.type, required this.itemId, this.eventId, });

factory RealtimeClientEventConversationItemRetrieve.fromJson(Map<String, dynamic> json) { return RealtimeClientEventConversationItemRetrieve(
  eventId: json['event_id'] as String?,
  type: json['type'] as String,
  itemId: json['item_id'] as String,
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `conversation.item.retrieve`.
final String type;

/// The ID of the item to retrieve.
final String itemId;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type,
  'item_id': itemId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('item_id') && json['item_id'] is String; } 
RealtimeClientEventConversationItemRetrieve copyWith({String? Function()? eventId, String? type, String? itemId, }) { return RealtimeClientEventConversationItemRetrieve(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeClientEventConversationItemRetrieve &&
          eventId == other.eventId &&
          type == other.type &&
          itemId == other.itemId; } 
@override int get hashCode { return Object.hash(eventId, type, itemId); } 
@override String toString() { return 'RealtimeClientEventConversationItemRetrieve(eventId: $eventId, type: $type, itemId: $itemId)'; } 
 }
