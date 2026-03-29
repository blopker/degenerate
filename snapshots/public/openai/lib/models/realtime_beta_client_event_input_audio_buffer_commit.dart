// GENERATED CODE - DO NOT MODIFY BY HAND

/// The event type, must be `input_audio_buffer.commit`.
final class RealtimeBetaClientEventInputAudioBufferCommitType {const RealtimeBetaClientEventInputAudioBufferCommitType._(this.value);

factory RealtimeBetaClientEventInputAudioBufferCommitType.fromJson(String json) { return switch (json) {
  'input_audio_buffer.commit' => inputAudioBufferCommit,
  _ => RealtimeBetaClientEventInputAudioBufferCommitType._(json),
}; }

static const RealtimeBetaClientEventInputAudioBufferCommitType inputAudioBufferCommit = RealtimeBetaClientEventInputAudioBufferCommitType._('input_audio_buffer.commit');

static const List<RealtimeBetaClientEventInputAudioBufferCommitType> values = [inputAudioBufferCommit];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaClientEventInputAudioBufferCommitType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaClientEventInputAudioBufferCommitType($value)'; } 
 }
/// Send this event to commit the user input audio buffer, which will create a
/// new user message item in the conversation. This event will produce an error
/// if the input audio buffer is empty. When in Server VAD mode, the client does
/// not need to send this event, the server will commit the audio buffer
/// automatically.
/// 
/// Committing the input audio buffer will trigger input audio transcription
/// (if enabled in session configuration), but it will not create a response
/// from the model. The server will respond with an `input_audio_buffer.committed`
/// event.
/// 
final class RealtimeBetaClientEventInputAudioBufferCommit {const RealtimeBetaClientEventInputAudioBufferCommit({this.eventId, required this.type, });

factory RealtimeBetaClientEventInputAudioBufferCommit.fromJson(Map<String, dynamic> json) { return RealtimeBetaClientEventInputAudioBufferCommit(
  eventId: json['event_id'] as String?,
  type: RealtimeBetaClientEventInputAudioBufferCommitType.fromJson(json['type'] as String),
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `input_audio_buffer.commit`.
final RealtimeBetaClientEventInputAudioBufferCommitType type;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RealtimeBetaClientEventInputAudioBufferCommit copyWith({String Function()? eventId, RealtimeBetaClientEventInputAudioBufferCommitType? type, }) { return RealtimeBetaClientEventInputAudioBufferCommit(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaClientEventInputAudioBufferCommit &&
          eventId == other.eventId &&
          type == other.type; } 
@override int get hashCode { return Object.hash(eventId, type); } 
@override String toString() { return 'RealtimeBetaClientEventInputAudioBufferCommit(eventId: $eventId, type: $type)'; } 
 }
