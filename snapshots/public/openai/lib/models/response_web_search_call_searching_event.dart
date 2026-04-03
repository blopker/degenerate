// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the event. Always `response.web_search_call.searching`.
/// 
@immutable final class ResponseWebSearchCallSearchingEventType {const ResponseWebSearchCallSearchingEventType._(this.value);

factory ResponseWebSearchCallSearchingEventType.fromJson(String json) { return switch (json) {
  'response.web_search_call.searching' => responseWebSearchCallSearching,
  _ => ResponseWebSearchCallSearchingEventType._(json),
}; }

static const ResponseWebSearchCallSearchingEventType responseWebSearchCallSearching = ResponseWebSearchCallSearchingEventType._('response.web_search_call.searching');

static const List<ResponseWebSearchCallSearchingEventType> values = [responseWebSearchCallSearching];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseWebSearchCallSearchingEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseWebSearchCallSearchingEventType($value)'; } 
 }
/// Emitted when a web search call is executing.
@immutable final class ResponseWebSearchCallSearchingEvent {const ResponseWebSearchCallSearchingEvent({required this.type, required this.outputIndex, required this.itemId, required this.sequenceNumber, });

factory ResponseWebSearchCallSearchingEvent.fromJson(Map<String, dynamic> json) { return ResponseWebSearchCallSearchingEvent(
  type: ResponseWebSearchCallSearchingEventType.fromJson(json['type'] as String),
  outputIndex: (json['output_index'] as num).toInt(),
  itemId: json['item_id'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.web_search_call.searching`.
/// 
final ResponseWebSearchCallSearchingEventType type;

/// The index of the output item that the web search call is associated with.
/// 
final int outputIndex;

/// Unique ID for the output item associated with the web search call.
/// 
final String itemId;

/// The sequence number of the web search call being processed.
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
ResponseWebSearchCallSearchingEvent copyWith({ResponseWebSearchCallSearchingEventType? type, int? outputIndex, String? itemId, int? sequenceNumber, }) { return ResponseWebSearchCallSearchingEvent(
  type: type ?? this.type,
  outputIndex: outputIndex ?? this.outputIndex,
  itemId: itemId ?? this.itemId,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseWebSearchCallSearchingEvent &&
          type == other.type &&
          outputIndex == other.outputIndex &&
          itemId == other.itemId &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, outputIndex, itemId, sequenceNumber); } 
@override String toString() { return 'ResponseWebSearchCallSearchingEvent(type: $type, outputIndex: $outputIndex, itemId: $itemId, sequenceNumber: $sequenceNumber)'; } 
 }
