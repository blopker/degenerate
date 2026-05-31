// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Event representing a delta (partial update) to the input of a custom tool call.
/// 
@immutable final class ResponseCustomToolCallInputDeltaEvent {const ResponseCustomToolCallInputDeltaEvent({required this.type, required this.sequenceNumber, required this.outputIndex, required this.itemId, required this.delta, });

factory ResponseCustomToolCallInputDeltaEvent.fromJson(Map<String, dynamic> json) { return ResponseCustomToolCallInputDeltaEvent(
  type: json['type'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
  outputIndex: (json['output_index'] as num).toInt(),
  itemId: json['item_id'] as String,
  delta: json['delta'] as String,
); }

/// The event type identifier.
final String type;

/// The sequence number of this event.
final int sequenceNumber;

/// The index of the output this delta applies to.
final int outputIndex;

/// Unique identifier for the API item associated with this event.
final String itemId;

/// The incremental input data (delta) for the custom tool call.
final String delta;

Map<String, dynamic> toJson() { return {
  'type': type,
  'sequence_number': sequenceNumber,
  'output_index': outputIndex,
  'item_id': itemId,
  'delta': delta,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('delta') && json['delta'] is String; } 
ResponseCustomToolCallInputDeltaEvent copyWith({String? type, int? sequenceNumber, int? outputIndex, String? itemId, String? delta, }) { return ResponseCustomToolCallInputDeltaEvent(
  type: type ?? this.type,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
  outputIndex: outputIndex ?? this.outputIndex,
  itemId: itemId ?? this.itemId,
  delta: delta ?? this.delta,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCustomToolCallInputDeltaEvent &&
          type == other.type &&
          sequenceNumber == other.sequenceNumber &&
          outputIndex == other.outputIndex &&
          itemId == other.itemId &&
          delta == other.delta; } 
@override int get hashCode { return Object.hash(type, sequenceNumber, outputIndex, itemId, delta); } 
@override String toString() { return 'ResponseCustomToolCallInputDeltaEvent(type: $type, sequenceNumber: $sequenceNumber, outputIndex: $outputIndex, itemId: $itemId, delta: $delta)'; } 
 }
