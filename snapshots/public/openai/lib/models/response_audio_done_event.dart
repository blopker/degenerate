// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the event. Always `response.audio.done`.
/// 
@immutable final class ResponseAudioDoneEventType {const ResponseAudioDoneEventType._(this.value);

factory ResponseAudioDoneEventType.fromJson(String json) { return switch (json) {
  'response.audio.done' => responseAudioDone,
  _ => ResponseAudioDoneEventType._(json),
}; }

static const ResponseAudioDoneEventType responseAudioDone = ResponseAudioDoneEventType._('response.audio.done');

static const List<ResponseAudioDoneEventType> values = [responseAudioDone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseAudioDoneEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseAudioDoneEventType($value)'; } 
 }
/// Emitted when the audio response is complete.
@immutable final class ResponseAudioDoneEvent {const ResponseAudioDoneEvent({required this.type, required this.sequenceNumber, });

factory ResponseAudioDoneEvent.fromJson(Map<String, dynamic> json) { return ResponseAudioDoneEvent(
  type: ResponseAudioDoneEventType.fromJson(json['type'] as String),
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.audio.done`.
/// 
final ResponseAudioDoneEventType type;

/// The sequence number of the delta.
/// 
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseAudioDoneEvent copyWith({ResponseAudioDoneEventType? type, int? sequenceNumber, }) { return ResponseAudioDoneEvent(
  type: type ?? this.type,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseAudioDoneEvent &&
          type == other.type &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, sequenceNumber); } 
@override String toString() { return 'ResponseAudioDoneEvent(type: $type, sequenceNumber: $sequenceNumber)'; } 
 }
