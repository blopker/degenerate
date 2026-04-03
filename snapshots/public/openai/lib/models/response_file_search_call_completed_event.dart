// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the event. Always `response.file_search_call.completed`.
/// 
@immutable final class ResponseFileSearchCallCompletedEventType {const ResponseFileSearchCallCompletedEventType._(this.value);

factory ResponseFileSearchCallCompletedEventType.fromJson(String json) { return switch (json) {
  'response.file_search_call.completed' => responseFileSearchCallCompleted,
  _ => ResponseFileSearchCallCompletedEventType._(json),
}; }

static const ResponseFileSearchCallCompletedEventType responseFileSearchCallCompleted = ResponseFileSearchCallCompletedEventType._('response.file_search_call.completed');

static const List<ResponseFileSearchCallCompletedEventType> values = [responseFileSearchCallCompleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseFileSearchCallCompletedEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseFileSearchCallCompletedEventType($value)'; } 
 }
/// Emitted when a file search call is completed (results found).
@immutable final class ResponseFileSearchCallCompletedEvent {const ResponseFileSearchCallCompletedEvent({required this.type, required this.outputIndex, required this.itemId, required this.sequenceNumber, });

factory ResponseFileSearchCallCompletedEvent.fromJson(Map<String, dynamic> json) { return ResponseFileSearchCallCompletedEvent(
  type: ResponseFileSearchCallCompletedEventType.fromJson(json['type'] as String),
  outputIndex: (json['output_index'] as num).toInt(),
  itemId: json['item_id'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.file_search_call.completed`.
/// 
final ResponseFileSearchCallCompletedEventType type;

/// The index of the output item that the file search call is initiated.
/// 
final int outputIndex;

/// The ID of the output item that the file search call is initiated.
/// 
final String itemId;

/// The sequence number of this event.
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
ResponseFileSearchCallCompletedEvent copyWith({ResponseFileSearchCallCompletedEventType? type, int? outputIndex, String? itemId, int? sequenceNumber, }) { return ResponseFileSearchCallCompletedEvent(
  type: type ?? this.type,
  outputIndex: outputIndex ?? this.outputIndex,
  itemId: itemId ?? this.itemId,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseFileSearchCallCompletedEvent &&
          type == other.type &&
          outputIndex == other.outputIndex &&
          itemId == other.itemId &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, outputIndex, itemId, sequenceNumber); } 
@override String toString() { return 'ResponseFileSearchCallCompletedEvent(type: $type, outputIndex: $outputIndex, itemId: $itemId, sequenceNumber: $sequenceNumber)'; } 
 }
