// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response.dart';/// Emitted when the response is in progress.
@immutable final class ResponseInProgressEvent {const ResponseInProgressEvent({required this.type, required this.response, required this.sequenceNumber, });

factory ResponseInProgressEvent.fromJson(Map<String, dynamic> json) { return ResponseInProgressEvent(
  type: json['type'] as String,
  response: Response.fromJson(json['response'] as Map<String, dynamic>),
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.in_progress`.
/// 
final String type;

/// The response that is in progress.
/// 
final Response response;

/// The sequence number of this event.
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type,
  'response': response.toJson(),
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('response') &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseInProgressEvent copyWith({String? type, Response? response, int? sequenceNumber, }) { return ResponseInProgressEvent(
  type: type ?? this.type,
  response: response ?? this.response,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseInProgressEvent &&
          type == other.type &&
          response == other.response &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, response, sequenceNumber); } 
@override String toString() { return 'ResponseInProgressEvent(type: $type, response: $response, sequenceNumber: $sequenceNumber)'; } 
 }
