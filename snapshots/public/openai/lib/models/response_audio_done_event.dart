// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Emitted when the audio response is complete.
@immutable final class ResponseAudioDoneEvent {const ResponseAudioDoneEvent({required this.type, required this.sequenceNumber, });

factory ResponseAudioDoneEvent.fromJson(Map<String, dynamic> json) { return ResponseAudioDoneEvent(
  type: json['type'] as String,
  sequenceNumber: (json['sequence_number'] as num).toInt(),
); }

/// The type of the event. Always `response.audio.done`.
/// 
final String type;

/// The sequence number of the delta.
/// 
final int sequenceNumber;

Map<String, dynamic> toJson() { return {
  'type': type,
  'sequence_number': sequenceNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('sequence_number') && json['sequence_number'] is num; } 
ResponseAudioDoneEvent copyWith({String? type, int? sequenceNumber, }) { return ResponseAudioDoneEvent(
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
