// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the event. Always 'response.mcp_call.failed'.
@immutable final class ResponseMcpCallFailedEventType {const ResponseMcpCallFailedEventType._(this.value);

factory ResponseMcpCallFailedEventType.fromJson(String json) { return switch (json) {
  'response.mcp_call.failed' => responseMcpCallFailed,
  _ => ResponseMcpCallFailedEventType._(json),
}; }

static const ResponseMcpCallFailedEventType responseMcpCallFailed = ResponseMcpCallFailedEventType._('response.mcp_call.failed');

static const List<ResponseMcpCallFailedEventType> values = [responseMcpCallFailed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseMcpCallFailedEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseMcpCallFailedEventType($value)'; } 
 }
/// Emitted when an MCP  tool call has failed.
/// 
@immutable final class ResponseMcpCallFailedEvent {const ResponseMcpCallFailedEvent({required this.type, required this.itemId, required this.outputIndex, required this.sequenceNumber, });

factory ResponseMcpCallFailedEvent.fromJson(Map<String, dynamic> json) { return ResponseMcpCallFailedEvent(
  type: ResponseMcpCallFailedEventType.fromJson(json['type'] as String),
  itemId: json['item_id'] as String,
  outputIndex: (json['output_index'] as num).toInt(),
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always 'response.mcp_call.failed'.
final ResponseMcpCallFailedEventType type;

/// The ID of the MCP tool call item that failed.
final String itemId;

/// The index of the output item that failed.
final int outputIndex;

/// The sequence number of this event.
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'item_id': itemId,
  'output_index': outputIndex,
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseMcpCallFailedEvent copyWith({ResponseMcpCallFailedEventType? type, String? itemId, int? outputIndex, int? sequenceNumber, }) { return ResponseMcpCallFailedEvent(
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
  outputIndex: outputIndex ?? this.outputIndex,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseMcpCallFailedEvent &&
          type == other.type &&
          itemId == other.itemId &&
          outputIndex == other.outputIndex &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, itemId, outputIndex, sequenceNumber); } 
@override String toString() { return 'ResponseMcpCallFailedEvent(type: $type, itemId: $itemId, outputIndex: $outputIndex, sequenceNumber: $sequenceNumber)'; } 
 }
