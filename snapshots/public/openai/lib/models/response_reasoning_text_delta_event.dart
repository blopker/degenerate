// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the event. Always `response.reasoning_text.delta`.
/// 
@immutable final class ResponseReasoningTextDeltaEventType {const ResponseReasoningTextDeltaEventType._(this.value);

factory ResponseReasoningTextDeltaEventType.fromJson(String json) { return switch (json) {
  'response.reasoning_text.delta' => responseReasoningTextDelta,
  _ => ResponseReasoningTextDeltaEventType._(json),
}; }

static const ResponseReasoningTextDeltaEventType responseReasoningTextDelta = ResponseReasoningTextDeltaEventType._('response.reasoning_text.delta');

static const List<ResponseReasoningTextDeltaEventType> values = [responseReasoningTextDelta];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseReasoningTextDeltaEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseReasoningTextDeltaEventType($value)'; } 
 }
/// Emitted when a delta is added to a reasoning text.
@immutable final class ResponseReasoningTextDeltaEvent {const ResponseReasoningTextDeltaEvent({required this.type, required this.itemId, required this.outputIndex, required this.contentIndex, required this.delta, required this.sequenceNumber, });

factory ResponseReasoningTextDeltaEvent.fromJson(Map<String, dynamic> json) { return ResponseReasoningTextDeltaEvent(
  type: ResponseReasoningTextDeltaEventType.fromJson(json['type'] as String),
  itemId: json['item_id'] as String,
  outputIndex: (json['output_index'] as num).toInt(),
  contentIndex: (json['content_index'] as num).toInt(),
  delta: json['delta'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.reasoning_text.delta`.
/// 
final ResponseReasoningTextDeltaEventType type;

/// The ID of the item this reasoning text delta is associated with.
/// 
final String itemId;

/// The index of the output item this reasoning text delta is associated with.
/// 
final int outputIndex;

/// The index of the reasoning content part this delta is associated with.
/// 
final int contentIndex;

/// The text delta that was added to the reasoning content.
/// 
final String delta;

/// The sequence number of this event.
/// 
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'item_id': itemId,
  'output_index': outputIndex,
  'content_index': contentIndex,
  'delta': delta,
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('content_index') && json['content_index'] is num &&
      json.containsKey('delta') && json['delta'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseReasoningTextDeltaEvent copyWith({ResponseReasoningTextDeltaEventType? type, String? itemId, int? outputIndex, int? contentIndex, String? delta, int? sequenceNumber, }) { return ResponseReasoningTextDeltaEvent(
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
  outputIndex: outputIndex ?? this.outputIndex,
  contentIndex: contentIndex ?? this.contentIndex,
  delta: delta ?? this.delta,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseReasoningTextDeltaEvent &&
          type == other.type &&
          itemId == other.itemId &&
          outputIndex == other.outputIndex &&
          contentIndex == other.contentIndex &&
          delta == other.delta &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, itemId, outputIndex, contentIndex, delta, sequenceNumber); } 
@override String toString() { return 'ResponseReasoningTextDeltaEvent(type: $type, itemId: $itemId, outputIndex: $outputIndex, contentIndex: $contentIndex, delta: $delta, sequenceNumber: $sequenceNumber)'; } 
 }
