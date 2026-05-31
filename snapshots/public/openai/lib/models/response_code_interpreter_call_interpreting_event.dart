// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Emitted when the code interpreter is actively interpreting the code snippet.
@immutable final class ResponseCodeInterpreterCallInterpretingEvent {const ResponseCodeInterpreterCallInterpretingEvent({required this.type, required this.outputIndex, required this.itemId, required this.sequenceNumber, });

factory ResponseCodeInterpreterCallInterpretingEvent.fromJson(Map<String, dynamic> json) { return ResponseCodeInterpreterCallInterpretingEvent(
  type: json['type'] as String,
  outputIndex: (json['output_index'] as num).toInt(),
  itemId: json['item_id'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.code_interpreter_call.interpreting`.
final String type;

/// The index of the output item in the response for which the code interpreter is interpreting code.
final int outputIndex;

/// The unique identifier of the code interpreter tool call item.
final String itemId;

/// The sequence number of this event, used to order streaming events.
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type,
  'output_index': outputIndex,
  'item_id': itemId,
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseCodeInterpreterCallInterpretingEvent copyWith({String? type, int? outputIndex, String? itemId, int? sequenceNumber, }) { return ResponseCodeInterpreterCallInterpretingEvent(
  type: type ?? this.type,
  outputIndex: outputIndex ?? this.outputIndex,
  itemId: itemId ?? this.itemId,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCodeInterpreterCallInterpretingEvent &&
          type == other.type &&
          outputIndex == other.outputIndex &&
          itemId == other.itemId &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, outputIndex, itemId, sequenceNumber); } 
@override String toString() { return 'ResponseCodeInterpreterCallInterpretingEvent(type: $type, outputIndex: $outputIndex, itemId: $itemId, sequenceNumber: $sequenceNumber)'; } 
 }
