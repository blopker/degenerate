// GENERATED CODE - DO NOT MODIFY BY HAND

import 'response.dart';/// The type of the event. Always `response.created`.
/// 
final class ResponseCreatedEventType {const ResponseCreatedEventType._(this.value);

factory ResponseCreatedEventType.fromJson(String json) { return switch (json) {
  'response.created' => responseCreated,
  _ => ResponseCreatedEventType._(json),
}; }

static const ResponseCreatedEventType responseCreated = ResponseCreatedEventType._('response.created');

static const List<ResponseCreatedEventType> values = [responseCreated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseCreatedEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseCreatedEventType($value)'; } 
 }
/// An event that is emitted when a response is created.
/// 
final class ResponseCreatedEvent {const ResponseCreatedEvent({required this.type, required this.response, required this.sequenceNumber, });

factory ResponseCreatedEvent.fromJson(Map<String, dynamic> json) { return ResponseCreatedEvent(
  type: ResponseCreatedEventType.fromJson(json['type'] as String),
  response: Response.fromJson(json['response'] as Map<String, dynamic>),
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.created`.
/// 
final ResponseCreatedEventType type;

/// The response that was created.
/// 
final Response response;

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
ResponseCreatedEvent copyWith({ResponseCreatedEventType? type, Response? response, int? sequenceNumber, }) { return ResponseCreatedEvent(
  type: type ?? this.type,
  response: response ?? this.response,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCreatedEvent &&
          type == other.type &&
          response == other.response &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, response, sequenceNumber); } 
@override String toString() { return 'ResponseCreatedEvent(type: $type, response: $response, sequenceNumber: $sequenceNumber)'; } 
 }
