// GENERATED CODE - DO NOT MODIFY BY HAND

/// The event type, must be `output_audio_buffer.clear`.
final class RealtimeBetaClientEventOutputAudioBufferClearType {const RealtimeBetaClientEventOutputAudioBufferClearType._(this.value);

factory RealtimeBetaClientEventOutputAudioBufferClearType.fromJson(String json) { return switch (json) {
  'output_audio_buffer.clear' => outputAudioBufferClear,
  _ => RealtimeBetaClientEventOutputAudioBufferClearType._(json),
}; }

static const RealtimeBetaClientEventOutputAudioBufferClearType outputAudioBufferClear = RealtimeBetaClientEventOutputAudioBufferClearType._('output_audio_buffer.clear');

static const List<RealtimeBetaClientEventOutputAudioBufferClearType> values = [outputAudioBufferClear];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaClientEventOutputAudioBufferClearType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaClientEventOutputAudioBufferClearType($value)'; } 
 }
/// **WebRTC/SIP Only:** Emit to cut off the current audio response. This will trigger the server to
/// stop generating audio and emit a `output_audio_buffer.cleared` event. This
/// event should be preceded by a `response.cancel` client event to stop the
/// generation of the current response.
/// [Learn more](/docs/guides/realtime-conversations#client-and-server-events-for-audio-in-webrtc).
/// 
final class RealtimeBetaClientEventOutputAudioBufferClear {const RealtimeBetaClientEventOutputAudioBufferClear({this.eventId, required this.type, });

factory RealtimeBetaClientEventOutputAudioBufferClear.fromJson(Map<String, dynamic> json) { return RealtimeBetaClientEventOutputAudioBufferClear(
  eventId: json['event_id'] as String?,
  type: RealtimeBetaClientEventOutputAudioBufferClearType.fromJson(json['type'] as String),
); }

/// The unique ID of the client event used for error handling.
final String? eventId;

/// The event type, must be `output_audio_buffer.clear`.
final RealtimeBetaClientEventOutputAudioBufferClearType type;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RealtimeBetaClientEventOutputAudioBufferClear copyWith({String Function()? eventId, RealtimeBetaClientEventOutputAudioBufferClearType? type, }) { return RealtimeBetaClientEventOutputAudioBufferClear(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaClientEventOutputAudioBufferClear &&
          eventId == other.eventId &&
          type == other.type; } 
@override int get hashCode { return Object.hash(eventId, type); } 
@override String toString() { return 'RealtimeBetaClientEventOutputAudioBufferClear(eventId: $eventId, type: $type)'; } 
 }
