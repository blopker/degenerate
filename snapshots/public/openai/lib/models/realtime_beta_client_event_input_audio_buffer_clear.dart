// GENERATED CODE - DO NOT MODIFY BY HAND

/// The event type, must be `input_audio_buffer.clear`.
final class RealtimeBetaClientEventInputAudioBufferClearType {const RealtimeBetaClientEventInputAudioBufferClearType._(this.value);

factory RealtimeBetaClientEventInputAudioBufferClearType.fromJson(String json) { return switch (json) {
  'input_audio_buffer.clear' => inputAudioBufferClear,
  _ => RealtimeBetaClientEventInputAudioBufferClearType._(json),
}; }

static const RealtimeBetaClientEventInputAudioBufferClearType inputAudioBufferClear = RealtimeBetaClientEventInputAudioBufferClearType._('input_audio_buffer.clear');

static const List<RealtimeBetaClientEventInputAudioBufferClearType> values = [inputAudioBufferClear];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaClientEventInputAudioBufferClearType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaClientEventInputAudioBufferClearType($value)'; } 
 }
/// Send this event to clear the audio bytes in the buffer. The server will
/// respond with an `input_audio_buffer.cleared` event.
/// 
final class RealtimeBetaClientEventInputAudioBufferClear {const RealtimeBetaClientEventInputAudioBufferClear({this.eventId, required this.type, });

factory RealtimeBetaClientEventInputAudioBufferClear.fromJson(Map<String, dynamic> json) { return RealtimeBetaClientEventInputAudioBufferClear(
  eventId: json['event_id'] as String?,
  type: RealtimeBetaClientEventInputAudioBufferClearType.fromJson(json['type'] as String),
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `input_audio_buffer.clear`.
final RealtimeBetaClientEventInputAudioBufferClearType type;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RealtimeBetaClientEventInputAudioBufferClear copyWith({String Function()? eventId, RealtimeBetaClientEventInputAudioBufferClearType? type, }) { return RealtimeBetaClientEventInputAudioBufferClear(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaClientEventInputAudioBufferClear &&
          eventId == other.eventId &&
          type == other.type; } 
@override int get hashCode { return Object.hash(eventId, type); } 
@override String toString() { return 'RealtimeBetaClientEventInputAudioBufferClear(eventId: $eventId, type: $type)'; } 
 }
