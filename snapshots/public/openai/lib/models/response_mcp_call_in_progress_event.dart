// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Emitted when an MCP  tool call is in progress.
/// 
@immutable final class ResponseMcpCallInProgressEvent {const ResponseMcpCallInProgressEvent({required this.type, required this.sequenceNumber, required this.outputIndex, required this.itemId, });

factory ResponseMcpCallInProgressEvent.fromJson(Map<String, dynamic> json) { return ResponseMcpCallInProgressEvent(
  type: json['type'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
  outputIndex: (json['output_index'] as num).toInt(),
  itemId: json['item_id'] as String,
); }

/// The type of the event. Always 'response.mcp_call.in_progress'.
final String type;

/// The sequence number of this event.
final int sequenceNumber;

/// The index of the output item in the response's output array.
final int outputIndex;

/// The unique identifier of the MCP tool call item being processed.
final String itemId;

Map<String, dynamic> toJson() { return {
  'type': type,
  'sequence_number': sequenceNumber,
  'output_index': outputIndex,
  'item_id': itemId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('item_id') && json['item_id'] is String; } 
ResponseMcpCallInProgressEvent copyWith({String? type, int? sequenceNumber, int? outputIndex, String? itemId, }) { return ResponseMcpCallInProgressEvent(
  type: type ?? this.type,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
  outputIndex: outputIndex ?? this.outputIndex,
  itemId: itemId ?? this.itemId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseMcpCallInProgressEvent &&
          type == other.type &&
          sequenceNumber == other.sequenceNumber &&
          outputIndex == other.outputIndex &&
          itemId == other.itemId; } 
@override int get hashCode { return Object.hash(type, sequenceNumber, outputIndex, itemId); } 
@override String toString() { return 'ResponseMcpCallInProgressEvent(type: $type, sequenceNumber: $sequenceNumber, outputIndex: $outputIndex, itemId: $itemId)'; } 
 }
