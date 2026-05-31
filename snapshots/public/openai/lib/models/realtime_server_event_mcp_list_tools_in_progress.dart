// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Returned when listing MCP tools is in progress for an item.
@immutable final class RealtimeServerEventMcpListToolsInProgress {const RealtimeServerEventMcpListToolsInProgress({required this.eventId, required this.type, required this.itemId, });

factory RealtimeServerEventMcpListToolsInProgress.fromJson(Map<String, dynamic> json) { return RealtimeServerEventMcpListToolsInProgress(
  eventId: json['event_id'] as String,
  type: json['type'] as String,
  itemId: json['item_id'] as String,
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `mcp_list_tools.in_progress`.
final String type;

/// The ID of the MCP list tools item.
final String itemId;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type,
  'item_id': itemId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('item_id') && json['item_id'] is String; } 
RealtimeServerEventMcpListToolsInProgress copyWith({String? eventId, String? type, String? itemId, }) { return RealtimeServerEventMcpListToolsInProgress(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventMcpListToolsInProgress &&
          eventId == other.eventId &&
          type == other.type &&
          itemId == other.itemId; } 
@override int get hashCode { return Object.hash(eventId, type, itemId); } 
@override String toString() { return 'RealtimeServerEventMcpListToolsInProgress(eventId: $eventId, type: $type, itemId: $itemId)'; } 
 }
