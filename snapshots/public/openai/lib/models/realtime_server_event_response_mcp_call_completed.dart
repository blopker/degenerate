// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Returned when an MCP tool call has completed successfully.
@immutable final class RealtimeServerEventResponseMcpCallCompleted {const RealtimeServerEventResponseMcpCallCompleted({required this.eventId, required this.type, required this.outputIndex, required this.itemId, });

factory RealtimeServerEventResponseMcpCallCompleted.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseMcpCallCompleted(
  eventId: json['event_id'] as String,
  type: json['type'] as String,
  outputIndex: (json['output_index'] as num).toInt(),
  itemId: json['item_id'] as String,
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `response.mcp_call.completed`.
final String type;

/// The index of the output item in the response.
final int outputIndex;

/// The ID of the MCP tool call item.
final String itemId;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type,
  'output_index': outputIndex,
  'item_id': itemId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('item_id') && json['item_id'] is String; } 
RealtimeServerEventResponseMcpCallCompleted copyWith({String? eventId, String? type, int? outputIndex, String? itemId, }) { return RealtimeServerEventResponseMcpCallCompleted(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  outputIndex: outputIndex ?? this.outputIndex,
  itemId: itemId ?? this.itemId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventResponseMcpCallCompleted &&
          eventId == other.eventId &&
          type == other.type &&
          outputIndex == other.outputIndex &&
          itemId == other.itemId; } 
@override int get hashCode { return Object.hash(eventId, type, outputIndex, itemId); } 
@override String toString() { return 'RealtimeServerEventResponseMcpCallCompleted(eventId: $eventId, type: $type, outputIndex: $outputIndex, itemId: $itemId)'; } 
 }
