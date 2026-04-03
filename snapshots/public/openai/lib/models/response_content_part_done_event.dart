// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'output_content.dart';/// The type of the event. Always `response.content_part.done`.
/// 
@immutable final class ResponseContentPartDoneEventType {const ResponseContentPartDoneEventType._(this.value);

factory ResponseContentPartDoneEventType.fromJson(String json) { return switch (json) {
  'response.content_part.done' => responseContentPartDone,
  _ => ResponseContentPartDoneEventType._(json),
}; }

static const ResponseContentPartDoneEventType responseContentPartDone = ResponseContentPartDoneEventType._('response.content_part.done');

static const List<ResponseContentPartDoneEventType> values = [responseContentPartDone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseContentPartDoneEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseContentPartDoneEventType($value)'; } 
 }
/// Emitted when a content part is done.
@immutable final class ResponseContentPartDoneEvent {const ResponseContentPartDoneEvent({required this.type, required this.itemId, required this.outputIndex, required this.contentIndex, required this.sequenceNumber, required this.$part, });

factory ResponseContentPartDoneEvent.fromJson(Map<String, dynamic> json) { return ResponseContentPartDoneEvent(
  type: ResponseContentPartDoneEventType.fromJson(json['type'] as String),
  itemId: json['item_id'] as String,
  outputIndex: (json['output_index'] as num).toInt(),
  contentIndex: (json['content_index'] as num).toInt(),
  sequenceNumber: (json['sequence_number'] as num).toInt(),
  $part: OutputContent.fromJson(json['part'] as Map<String, dynamic>),
); }

/// The type of the event. Always `response.content_part.done`.
/// 
final ResponseContentPartDoneEventType type;

/// The ID of the output item that the content part was added to.
/// 
final String itemId;

/// The index of the output item that the content part was added to.
/// 
final int outputIndex;

/// The index of the content part that is done.
/// 
final int contentIndex;

/// The sequence number of this event.
final int sequenceNumber;

/// The content part that is done.
/// 
final OutputContent $part;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'item_id': itemId,
  'output_index': outputIndex,
  'content_index': contentIndex,
  'sequence_number': sequenceNumber,
  'part': $part.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('content_index') && json['content_index'] is num &&
      json.containsKey('sequence_number') && json['sequence_number'] is num &&
      json.containsKey('part'); } 
ResponseContentPartDoneEvent copyWith({ResponseContentPartDoneEventType? type, String? itemId, int? outputIndex, int? contentIndex, int? sequenceNumber, OutputContent? $part, }) { return ResponseContentPartDoneEvent(
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
  outputIndex: outputIndex ?? this.outputIndex,
  contentIndex: contentIndex ?? this.contentIndex,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
  $part: $part ?? this.$part,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseContentPartDoneEvent &&
          type == other.type &&
          itemId == other.itemId &&
          outputIndex == other.outputIndex &&
          contentIndex == other.contentIndex &&
          sequenceNumber == other.sequenceNumber &&
          $part == other.$part; } 
@override int get hashCode { return Object.hash(type, itemId, outputIndex, contentIndex, sequenceNumber, $part); } 
@override String toString() { return 'ResponseContentPartDoneEvent(type: $type, itemId: $itemId, outputIndex: $outputIndex, contentIndex: $contentIndex, sequenceNumber: $sequenceNumber, \$part: ${$part})'; } 
 }
