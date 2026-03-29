// GENERATED CODE - DO NOT MODIFY BY HAND

import 'model_response_properties.dart';/// The type of the event. Always 'response.queued'.
final class ResponseQueuedEventType {const ResponseQueuedEventType._(this.value);

factory ResponseQueuedEventType.fromJson(String json) { return switch (json) {
  'response.queued' => responseQueued,
  _ => ResponseQueuedEventType._(json),
}; }

static const ResponseQueuedEventType responseQueued = ResponseQueuedEventType._('response.queued');

static const List<ResponseQueuedEventType> values = [responseQueued];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseQueuedEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseQueuedEventType($value)'; } 
 }
/// Emitted when a response is queued and waiting to be processed.
/// 
final class ResponseQueuedEvent {const ResponseQueuedEvent({required this.type, required this.response, required this.sequenceNumber, });

factory ResponseQueuedEvent.fromJson(Map<String, dynamic> json) { return ResponseQueuedEvent(
  type: ResponseQueuedEventType.fromJson(json['type'] as String),
  response: ModelResponseProperties.fromJson(json['response'] as Map<String, dynamic>),
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always 'response.queued'.
final ResponseQueuedEventType type;

/// The full response object that is queued.
final ModelResponseProperties response;

/// The sequence number for this event.
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'response': response.toJson(),
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('response') &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseQueuedEvent copyWith({ResponseQueuedEventType? type, ModelResponseProperties? response, int? sequenceNumber, }) { return ResponseQueuedEvent(
  type: type ?? this.type,
  response: response ?? this.response,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseQueuedEvent &&
          type == other.type &&
          response == other.response &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, response, sequenceNumber); } 
@override String toString() { return 'ResponseQueuedEvent(type: $type, response: $response, sequenceNumber: $sequenceNumber)'; } 
 }
