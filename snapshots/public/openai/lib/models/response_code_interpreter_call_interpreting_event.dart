// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the event. Always `response.code_interpreter_call.interpreting`.
@immutable final class ResponseCodeInterpreterCallInterpretingEventType {const ResponseCodeInterpreterCallInterpretingEventType._(this.value);

factory ResponseCodeInterpreterCallInterpretingEventType.fromJson(String json) { return switch (json) {
  'response.code_interpreter_call.interpreting' => responseCodeInterpreterCallInterpreting,
  _ => ResponseCodeInterpreterCallInterpretingEventType._(json),
}; }

static const ResponseCodeInterpreterCallInterpretingEventType responseCodeInterpreterCallInterpreting = ResponseCodeInterpreterCallInterpretingEventType._('response.code_interpreter_call.interpreting');

static const List<ResponseCodeInterpreterCallInterpretingEventType> values = [responseCodeInterpreterCallInterpreting];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseCodeInterpreterCallInterpretingEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseCodeInterpreterCallInterpretingEventType($value)'; } 
 }
/// Emitted when the code interpreter is actively interpreting the code snippet.
@immutable final class ResponseCodeInterpreterCallInterpretingEvent {const ResponseCodeInterpreterCallInterpretingEvent({required this.type, required this.outputIndex, required this.itemId, required this.sequenceNumber, });

factory ResponseCodeInterpreterCallInterpretingEvent.fromJson(Map<String, dynamic> json) { return ResponseCodeInterpreterCallInterpretingEvent(
  type: ResponseCodeInterpreterCallInterpretingEventType.fromJson(json['type'] as String),
  outputIndex: (json['output_index'] as num).toInt(),
  itemId: json['item_id'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.code_interpreter_call.interpreting`.
final ResponseCodeInterpreterCallInterpretingEventType type;

/// The index of the output item in the response for which the code interpreter is interpreting code.
final int outputIndex;

/// The unique identifier of the code interpreter tool call item.
final String itemId;

/// The sequence number of this event, used to order streaming events.
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'output_index': outputIndex,
  'item_id': itemId,
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseCodeInterpreterCallInterpretingEvent copyWith({ResponseCodeInterpreterCallInterpretingEventType? type, int? outputIndex, String? itemId, int? sequenceNumber, }) { return ResponseCodeInterpreterCallInterpretingEvent(
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
