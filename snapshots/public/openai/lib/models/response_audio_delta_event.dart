// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the event. Always `response.audio.delta`.
/// 
@immutable final class ResponseAudioDeltaEventType {const ResponseAudioDeltaEventType._(this.value);

factory ResponseAudioDeltaEventType.fromJson(String json) { return switch (json) {
  'response.audio.delta' => responseAudioDelta,
  _ => ResponseAudioDeltaEventType._(json),
}; }

static const ResponseAudioDeltaEventType responseAudioDelta = ResponseAudioDeltaEventType._('response.audio.delta');

static const List<ResponseAudioDeltaEventType> values = [responseAudioDelta];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseAudioDeltaEventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseAudioDeltaEventType($value)'; } 
 }
/// Emitted when there is a partial audio response.
@immutable final class ResponseAudioDeltaEvent {const ResponseAudioDeltaEvent({required this.type, required this.sequenceNumber, required this.delta, });

factory ResponseAudioDeltaEvent.fromJson(Map<String, dynamic> json) { return ResponseAudioDeltaEvent(
  type: ResponseAudioDeltaEventType.fromJson(json['type'] as String),
  sequenceNumber: (json['sequence_number'] as num).toInt(),
  delta: json['delta'] as String,
); }

/// The type of the event. Always `response.audio.delta`.
/// 
final ResponseAudioDeltaEventType type;

/// A sequence number for this chunk of the stream response.
/// 
final int sequenceNumber;

/// A chunk of Base64 encoded response audio bytes.
/// 
final String delta;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'sequence_number': sequenceNumber,
  'delta': delta,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('sequence_number') && json['sequence_number'] is num &&
      json.containsKey('delta') && json['delta'] is String; } 
ResponseAudioDeltaEvent copyWith({ResponseAudioDeltaEventType? type, int? sequenceNumber, String? delta, }) { return ResponseAudioDeltaEvent(
  type: type ?? this.type,
  sequenceNumber: sequenceNumber ?? this.sequenceNumber,
  delta: delta ?? this.delta,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseAudioDeltaEvent &&
          type == other.type &&
          sequenceNumber == other.sequenceNumber &&
          delta == other.delta; } 
@override int get hashCode { return Object.hash(type, sequenceNumber, delta); } 
@override String toString() { return 'ResponseAudioDeltaEvent(type: $type, sequenceNumber: $sequenceNumber, delta: $delta)'; } 
 }
