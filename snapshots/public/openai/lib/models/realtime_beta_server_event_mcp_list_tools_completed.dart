// GENERATED CODE - DO NOT MODIFY BY HAND

/// The event type, must be `mcp_list_tools.completed`.
final class RealtimeBetaServerEventMcpListToolsCompletedType {const RealtimeBetaServerEventMcpListToolsCompletedType._(this.value);

factory RealtimeBetaServerEventMcpListToolsCompletedType.fromJson(String json) { return switch (json) {
  'mcp_list_tools.completed' => mcpListToolsCompleted,
  _ => RealtimeBetaServerEventMcpListToolsCompletedType._(json),
}; }

static const RealtimeBetaServerEventMcpListToolsCompletedType mcpListToolsCompleted = RealtimeBetaServerEventMcpListToolsCompletedType._('mcp_list_tools.completed');

static const List<RealtimeBetaServerEventMcpListToolsCompletedType> values = [mcpListToolsCompleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaServerEventMcpListToolsCompletedType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaServerEventMcpListToolsCompletedType($value)'; } 
 }
/// Returned when listing MCP tools has completed for an item.
final class RealtimeBetaServerEventMcpListToolsCompleted {const RealtimeBetaServerEventMcpListToolsCompleted({required this.eventId, required this.type, required this.itemId, });

factory RealtimeBetaServerEventMcpListToolsCompleted.fromJson(Map<String, dynamic> json) { return RealtimeBetaServerEventMcpListToolsCompleted(
  eventId: json['event_id'] as String,
  type: RealtimeBetaServerEventMcpListToolsCompletedType.fromJson(json['type'] as String),
  itemId: json['item_id'] as String,
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `mcp_list_tools.completed`.
final RealtimeBetaServerEventMcpListToolsCompletedType type;

/// The ID of the MCP list tools item.
final String itemId;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type.toJson(),
  'item_id': itemId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') &&
      json.containsKey('item_id') && json['item_id'] is String; } 
RealtimeBetaServerEventMcpListToolsCompleted copyWith({String? eventId, RealtimeBetaServerEventMcpListToolsCompletedType? type, String? itemId, }) { return RealtimeBetaServerEventMcpListToolsCompleted(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaServerEventMcpListToolsCompleted &&
          eventId == other.eventId &&
          type == other.type &&
          itemId == other.itemId; } 
@override int get hashCode { return Object.hash(eventId, type, itemId); } 
@override String toString() { return 'RealtimeBetaServerEventMcpListToolsCompleted(eventId: $eventId, type: $type, itemId: $itemId)'; } 
 }
