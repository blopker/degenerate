// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Emitted when the full audio transcript is completed.
@immutable final class ResponseAudioTranscriptDoneEvent {const ResponseAudioTranscriptDoneEvent({required this.type, required this.sequenceNumber, });

factory ResponseAudioTranscriptDoneEvent.fromJson(Map<String, dynamic> json) { return ResponseAudioTranscriptDoneEvent(
  type: json['type'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.audio.transcript.done`.
/// 
final String type;

/// The sequence number of this event.
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type,
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseAudioTranscriptDoneEvent copyWith({String? type, int? sequenceNumber, }) { return ResponseAudioTranscriptDoneEvent(
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
