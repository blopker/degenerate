// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Emitted when the system is in the process of retrieving the list of available MCP tools.
/// 
@immutable final class ResponseMcpListToolsInProgressEvent {const ResponseMcpListToolsInProgressEvent({required this.type, required this.itemId, required this.outputIndex, required this.sequenceNumber, });

factory ResponseMcpListToolsInProgressEvent.fromJson(Map<String, dynamic> json) { return ResponseMcpListToolsInProgressEvent(
  type: json['type'] as String,
  itemId: json['item_id'] as String,
  outputIndex: (json['output_index'] as num).toInt(),
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always 'response.mcp_list_tools.in_progress'.
final String type;

/// The ID of the MCP tool call item that is being processed.
final String itemId;

/// The index of the output item that is being processed.
final int outputIndex;

/// The sequence number of this event.
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type,
  'item_id': itemId,
  'output_index': outputIndex,
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseMcpListToolsInProgressEvent copyWith({String? type, String? itemId, int? outputIndex, int? sequenceNumber, }) { return ResponseMcpListToolsInProgressEvent(
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
  outputIndex: outputIndex ?? this.outputIndex,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseMcpListToolsInProgressEvent &&
          type == other.type &&
          itemId == other.itemId &&
          outputIndex == other.outputIndex &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, itemId, outputIndex, sequenceNumber); } 
@override String toString() { return 'ResponseMcpListToolsInProgressEvent(type: $type, itemId: $itemId, outputIndex: $outputIndex, sequenceNumber: $sequenceNumber)'; } 
 }
