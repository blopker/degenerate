// GENERATED CODE - DO NOT MODIFY BY HAND

import 'response_reasoning_summary_part_done_event_part.dart';/// The type of the event. Always `response.reasoning_summary_part.done`.
/// 
final class ResponseReasoningSummaryPartDoneEventType {const ResponseReasoningSummaryPartDoneEventType._(this.value);

factory ResponseReasoningSummaryPartDoneEventType.fromJson(String json) { return switch (json) {
  'response.reasoning_summary_part.done' => responseReasoningSummaryPartDone,
  _ => ResponseReasoningSummaryPartDoneEventType._(json),
}; }

static const ResponseReasoningSummaryPartDoneEventType responseReasoningSummaryPartDone = ResponseReasoningSummaryPartDoneEventType._('response.reasoning_summary_part.done');

static const List<ResponseReasoningSummaryPartDoneEventType> values = [responseReasoningSummaryPartDone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseReasoningSummaryPartDoneEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseReasoningSummaryPartDoneEventType($value)'; } 
 }
/// Emitted when a reasoning summary part is completed.
final class ResponseReasoningSummaryPartDoneEvent {const ResponseReasoningSummaryPartDoneEvent({required this.type, required this.itemId, required this.outputIndex, required this.summaryIndex, required this.sequenceNumber, required this.$part, });

factory ResponseReasoningSummaryPartDoneEvent.fromJson(Map<String, dynamic> json) { return ResponseReasoningSummaryPartDoneEvent(
  type: ResponseReasoningSummaryPartDoneEventType.fromJson(json['type'] as String),
  itemId: json['item_id'] as String,
  outputIndex: (json['output_index'] as num).toInt(),
  summaryIndex: (json['summary_index'] as num).toInt(),
  sequenceNumber: (json['sequence_number'] as num).toInt(),
  $part: ResponseReasoningSummaryPartDoneEventPart.fromJson(json['part'] as Map<String, dynamic>),
); }

/// The type of the event. Always `response.reasoning_summary_part.done`.
/// 
final ResponseReasoningSummaryPartDoneEventType type;

/// The ID of the item this summary part is associated with.
/// 
final String itemId;

/// The index of the output item this summary part is associated with.
/// 
final int outputIndex;

/// The index of the summary part within the reasoning summary.
/// 
final int summaryIndex;

/// The sequence number of this event.
/// 
final int sequenceNumber;

/// The completed summary part.
/// 
final ResponseReasoningSummaryPartDoneEventPart $part;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'item_id': itemId,
  'output_index': outputIndex,
  'summary_index': summaryIndex,
  'sequence_number': sequenceNumber,
  'part': $part.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('summary_index') && json['summary_index'] is num &&
      json.containsKey('sequence_number') && json['sequence_number'] is num &&
      json.containsKey('part'); } 
ResponseReasoningSummaryPartDoneEvent copyWith({ResponseReasoningSummaryPartDoneEventType? type, String? itemId, int? outputIndex, int? summaryIndex, int? sequenceNumber, ResponseReasoningSummaryPartDoneEventPart? $part, }) { return ResponseReasoningSummaryPartDoneEvent(
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
  outputIndex: outputIndex ?? this.outputIndex,
  summaryIndex: summaryIndex ?? this.summaryIndex,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
  $part: $part ?? this.$part,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseReasoningSummaryPartDoneEvent &&
          type == other.type &&
          itemId == other.itemId &&
          outputIndex == other.outputIndex &&
          summaryIndex == other.summaryIndex &&
          sequenceNumber == other.sequenceNumber &&
          $part == other.$part; } 
@override int get hashCode { return Object.hash(type, itemId, outputIndex, summaryIndex, sequenceNumber, $part); } 
@override String toString() { return 'ResponseReasoningSummaryPartDoneEvent(type: $type, itemId: $itemId, outputIndex: $outputIndex, summaryIndex: $summaryIndex, sequenceNumber: $sequenceNumber, \$part: ${$part})'; } 
 }
