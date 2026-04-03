// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the event. Always `response.audio.transcript.done`.
/// 
@immutable final class ResponseAudioTranscriptDoneEventType {const ResponseAudioTranscriptDoneEventType._(this.value);

factory ResponseAudioTranscriptDoneEventType.fromJson(String json) { return switch (json) {
  'response.audio.transcript.done' => responseAudioTranscriptDone,
  _ => ResponseAudioTranscriptDoneEventType._(json),
}; }

static const ResponseAudioTranscriptDoneEventType responseAudioTranscriptDone = ResponseAudioTranscriptDoneEventType._('response.audio.transcript.done');

static const List<ResponseAudioTranscriptDoneEventType> values = [responseAudioTranscriptDone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseAudioTranscriptDoneEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseAudioTranscriptDoneEventType($value)'; } 
 }
/// Emitted when the full audio transcript is completed.
@immutable final class ResponseAudioTranscriptDoneEvent {const ResponseAudioTranscriptDoneEvent({required this.type, required this.sequenceNumber, });

factory ResponseAudioTranscriptDoneEvent.fromJson(Map<String, dynamic> json) { return ResponseAudioTranscriptDoneEvent(
  type: ResponseAudioTranscriptDoneEventType.fromJson(json['type'] as String),
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.audio.transcript.done`.
/// 
final ResponseAudioTranscriptDoneEventType type;

/// The sequence number of this event.
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseAudioTranscriptDoneEvent copyWith({ResponseAudioTranscriptDoneEventType? type, int? sequenceNumber, }) { return ResponseAudioTranscriptDoneEvent(
  type: type ?? this.type,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseAudioTranscriptDoneEvent &&
          type == other.type &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, sequenceNumber); } 
@override String toString() { return 'ResponseAudioTranscriptDoneEvent(type: $type, sequenceNumber: $sequenceNumber)'; } 
 }
