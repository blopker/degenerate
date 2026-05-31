// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response.dart';/// Emitted when a response is queued and waiting to be processed.
/// 
@immutable final class ResponseQueuedEvent {const ResponseQueuedEvent({required this.type, required this.response, required this.sequenceNumber, });

factory ResponseQueuedEvent.fromJson(Map<String, dynamic> json) { return ResponseQueuedEvent(
  type: json['type'] as String,
  response: Response.fromJson(json['response'] as Map<String, dynamic>),
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always 'response.queued'.
final String type;

/// The full response object that is queued.
final Response response;

/// The sequence number for this event.
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type,
  'response': response.toJson(),
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('response') &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseQueuedEvent copyWith({String? type, Response? response, int? sequenceNumber, }) { return ResponseQueuedEvent(
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
