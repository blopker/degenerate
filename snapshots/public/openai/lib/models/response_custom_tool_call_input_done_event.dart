// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Event indicating that input for a custom tool call is complete.
/// 
@immutable final class ResponseCustomToolCallInputDoneEvent {const ResponseCustomToolCallInputDoneEvent({required this.type, required this.sequenceNumber, required this.outputIndex, required this.itemId, required this.input, });

factory ResponseCustomToolCallInputDoneEvent.fromJson(Map<String, dynamic> json) { return ResponseCustomToolCallInputDoneEvent(
  type: json['type'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
  outputIndex: (json['output_index'] as num).toInt(),
  itemId: json['item_id'] as String,
  input: json['input'] as String,
); }

/// The event type identifier.
final String type;

/// The sequence number of this event.
final int sequenceNumber;

/// The index of the output this event applies to.
final int outputIndex;

/// Unique identifier for the API item associated with this event.
final String itemId;

/// The complete input data for the custom tool call.
final String input;

Map<String, dynamic> toJson() { return {
  'type': type,
  'sequence_number': sequenceNumber,
  'output_index': outputIndex,
  'item_id': itemId,
  'input': input,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('input') && json['input'] is String; } 
ResponseCustomToolCallInputDoneEvent copyWith({String? type, int? sequenceNumber, int? outputIndex, String? itemId, String? input, }) { return ResponseCustomToolCallInputDoneEvent(
  type: type ?? this.type,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
  outputIndex: outputIndex ?? this.outputIndex,
  itemId: itemId ?? this.itemId,
  input: input ?? this.input,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCustomToolCallInputDoneEvent &&
          type == other.type &&
          sequenceNumber == other.sequenceNumber &&
          outputIndex == other.outputIndex &&
          itemId == other.itemId &&
          input == other.input; } 
@override int get hashCode { return Object.hash(type, sequenceNumber, outputIndex, itemId, input); } 
@override String toString() { return 'ResponseCustomToolCallInputDoneEvent(type: $type, sequenceNumber: $sequenceNumber, outputIndex: $outputIndex, itemId: $itemId, input: $input)'; } 
 }
