// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response.dart';/// An event that is emitted when a response fails.
/// 
@immutable final class ResponseFailedEvent {const ResponseFailedEvent({required this.type, required this.sequenceNumber, required this.response, });

factory ResponseFailedEvent.fromJson(Map<String, dynamic> json) { return ResponseFailedEvent(
  type: json['type'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
  response: Response.fromJson(json['response'] as Map<String, dynamic>),
); }

/// The type of the event. Always `response.failed`.
/// 
final String type;

/// The sequence number of this event.
final int sequenceNumber;

/// The response that failed.
/// 
final Response response;

Map<String, dynamic> toJson() { return {
  'type': type,
  'sequence_number': sequenceNumber,
  'response': response.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num &&
      json.containsKey('response'); } 
ResponseFailedEvent copyWith({String? type, int? sequenceNumber, Response? response, }) { return ResponseFailedEvent(
  type: type ?? this.type,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
  response: response ?? this.response,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseFailedEvent &&
          type == other.type &&
          sequenceNumber == other.sequenceNumber &&
          response == other.response; } 
@override int get hashCode { return Object.hash(type, sequenceNumber, response); } 
@override String toString() { return 'ResponseFailedEvent(type: $type, sequenceNumber: $sequenceNumber, response: $response)'; } 
 }
