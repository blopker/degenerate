// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Emitted when there is a partial transcript of audio.
@immutable final class ResponseAudioTranscriptDeltaEvent {const ResponseAudioTranscriptDeltaEvent({required this.type, required this.delta, required this.sequenceNumber, });

factory ResponseAudioTranscriptDeltaEvent.fromJson(Map<String, dynamic> json) { return ResponseAudioTranscriptDeltaEvent(
  type: json['type'] as String,
  delta: json['delta'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.audio.transcript.delta`.
/// 
final String type;

/// The partial transcript of the audio response.
/// 
final String delta;

/// The sequence number of this event.
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type,
  'delta': delta,
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('delta') && json['delta'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseAudioTranscriptDeltaEvent copyWith({String? type, String? delta, int? sequenceNumber, }) { return ResponseAudioTranscriptDeltaEvent(
  type: type ?? this.type,
  delta: delta ?? this.delta,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseAudioTranscriptDeltaEvent &&
          type == other.type &&
          delta == other.delta &&
          sequenceNumber == other.sequenceNumber; } 
@override int get hashCode { return Object.hash(type, delta, sequenceNumber); } 
@override String toString() { return 'ResponseAudioTranscriptDeltaEvent(type: $type, delta: $delta, sequenceNumber: $sequenceNumber)'; } 
 }
