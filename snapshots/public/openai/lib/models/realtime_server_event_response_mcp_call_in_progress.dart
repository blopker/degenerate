// GENERATED CODE - DO NOT MODIFY BY HAND

/// The event type, must be `response.mcp_call.in_progress`.
final class RealtimeServerEventResponseMcpCallInProgressType {const RealtimeServerEventResponseMcpCallInProgressType._(this.value);

factory RealtimeServerEventResponseMcpCallInProgressType.fromJson(String json) { return switch (json) {
  'response.mcp_call.in_progress' => responseMcpCallInProgress,
  _ => RealtimeServerEventResponseMcpCallInProgressType._(json),
}; }

static const RealtimeServerEventResponseMcpCallInProgressType responseMcpCallInProgress = RealtimeServerEventResponseMcpCallInProgressType._('response.mcp_call.in_progress');

static const List<RealtimeServerEventResponseMcpCallInProgressType> values = [responseMcpCallInProgress];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseMcpCallInProgressType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseMcpCallInProgressType($value)'; } 
 }
/// Returned when an MCP tool call has started and is in progress.
final class RealtimeServerEventResponseMcpCallInProgress {const RealtimeServerEventResponseMcpCallInProgress({required this.eventId, required this.type, required this.outputIndex, required this.itemId, });

factory RealtimeServerEventResponseMcpCallInProgress.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseMcpCallInProgress(
  eventId: json['event_id'] as String,
  type: RealtimeServerEventResponseMcpCallInProgressType.fromJson(json['type'] as String),
  outputIndex: (json['output_index'] as num).toInt(),
  itemId: json['item_id'] as String,
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `response.mcp_call.in_progress`.
final RealtimeServerEventResponseMcpCallInProgressType type;

/// The index of the output item in the response.
final int outputIndex;

/// The ID of the MCP tool call item.
final String itemId;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type.toJson(),
  'output_index': outputIndex,
  'item_id': itemId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('item_id') && json['item_id'] is String; } 
RealtimeServerEventResponseMcpCallInProgress copyWith({String? eventId, RealtimeServerEventResponseMcpCallInProgressType? type, int? outputIndex, String? itemId, }) { return RealtimeServerEventResponseMcpCallInProgress(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  outputIndex: outputIndex ?? this.outputIndex,
  itemId: itemId ?? this.itemId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventResponseMcpCallInProgress &&
          eventId == other.eventId &&
          type == other.type &&
          outputIndex == other.outputIndex &&
          itemId == other.itemId; } 
@override int get hashCode { return Object.hash(eventId, type, outputIndex, itemId); } 
@override String toString() { return 'RealtimeServerEventResponseMcpCallInProgress(eventId: $eventId, type: $type, outputIndex: $outputIndex, itemId: $itemId)'; } 
 }
