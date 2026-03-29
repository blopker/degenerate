// GENERATED CODE - DO NOT MODIFY BY HAND

/// The type of the event. Always 'response.mcp_call_arguments.done'.
final class ResponseMcpCallArgumentsDoneEventType {const ResponseMcpCallArgumentsDoneEventType._(this.value);

factory ResponseMcpCallArgumentsDoneEventType.fromJson(String json) { return switch (json) {
  'response.mcp_call_arguments.done' => responseMcpCallArgumentsDone,
  _ => ResponseMcpCallArgumentsDoneEventType._(json),
}; }

static const ResponseMcpCallArgumentsDoneEventType responseMcpCallArgumentsDone = ResponseMcpCallArgumentsDoneEventType._('response.mcp_call_arguments.done');

static const List<ResponseMcpCallArgumentsDoneEventType> values = [responseMcpCallArgumentsDone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseMcpCallArgumentsDoneEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseMcpCallArgumentsDoneEventType($value)'; } 
 }
/// Emitted when the arguments for an MCP tool call are finalized.
/// 
final class ResponseMcpCallArgumentsDoneEvent {const ResponseMcpCallArgumentsDoneEvent({required this.type, required this.outputIndex, required this.itemId, required this.arguments, required this.sequenceNumber, });

factory ResponseMcpCallArgumentsDoneEvent.fromJson(Map<String, dynamic> json) { return ResponseMcpCallArgumentsDoneEvent(
  type: ResponseMcpCallArgumentsDoneEventType.fromJson(json['type'] as String),
  outputIndex: (json['output_index'] as num).toInt(),
  itemId: json['item_id'] as String,
  arguments: json['arguments'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always 'response.mcp_call_arguments.done'.
final ResponseMcpCallArgumentsDoneEventType type;

/// The index of the output item in the response's output array.
final int outputIndex;

/// The unique identifier of the MCP tool call item being processed.
final String itemId;

/// A JSON string containing the finalized arguments for the MCP tool call.
/// 
final String arguments;

/// The sequence number of this event.
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'output_index': outputIndex,
  'item_id': itemId,
  'arguments': arguments,
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('arguments') && json['arguments'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseMcpCallArgumentsDoneEvent copyWith({ResponseMcpCallArgumentsDoneEventType? type, int? outputIndex, String? itemId, String? arguments, int? sequenceNumber, }) { return ResponseMcpCallArgumentsDoneEvent(
  type: type ?? this.type,
  outputIndex: outputIndex ?? this.outputIndex,
  itemId: itemId ?? this.itemId,
  arguments: arguments ?? this.arguments,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseMcpCallArgumentsDoneEvent &&
          type == other.type &&
          outputIndex == other.outputIndex &&
          itemId == other.itemId &&
          arguments == other.arguments &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, outputIndex, itemId, arguments, sequenceNumber); } 
@override String toString() { return 'ResponseMcpCallArgumentsDoneEvent(type: $type, outputIndex: $outputIndex, itemId: $itemId, arguments: $arguments, sequenceNumber: $sequenceNumber)'; } 
 }
