// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_transcription_session_create_response.dart';/// The event type, must be `transcription_session.updated`.
@immutable final class RealtimeServerEventTranscriptionSessionUpdatedType {const RealtimeServerEventTranscriptionSessionUpdatedType._(this.value);

factory RealtimeServerEventTranscriptionSessionUpdatedType.fromJson(String json) { return switch (json) {
  'transcription_session.updated' => transcriptionSessionUpdated,
  _ => RealtimeServerEventTranscriptionSessionUpdatedType._(json),
}; }

static const RealtimeServerEventTranscriptionSessionUpdatedType transcriptionSessionUpdated = RealtimeServerEventTranscriptionSessionUpdatedType._('transcription_session.updated');

static const List<RealtimeServerEventTranscriptionSessionUpdatedType> values = [transcriptionSessionUpdated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventTranscriptionSessionUpdatedType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeServerEventTranscriptionSessionUpdatedType($value)'; } 
 }
/// Returned when a transcription session is updated with a `transcription_session.update` event, unless
/// there is an error.
/// 
@immutable final class RealtimeServerEventTranscriptionSessionUpdated {const RealtimeServerEventTranscriptionSessionUpdated({required this.eventId, required this.type, required this.session, });

factory RealtimeServerEventTranscriptionSessionUpdated.fromJson(Map<String, dynamic> json) { return RealtimeServerEventTranscriptionSessionUpdated(
  eventId: json['event_id'] as String,
  type: RealtimeServerEventTranscriptionSessionUpdatedType.fromJson(json['type'] as String),
  session: RealtimeTranscriptionSessionCreateResponse.fromJson(json['session'] as Map<String, dynamic>),
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `transcription_session.updated`.
final RealtimeServerEventTranscriptionSessionUpdatedType type;

final RealtimeTranscriptionSessionCreateResponse session;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type.toJson(),
  'session': session.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') &&
      json.containsKey('session'); } 
RealtimeServerEventTranscriptionSessionUpdated copyWith({String? eventId, RealtimeServerEventTranscriptionSessionUpdatedType? type, RealtimeTranscriptionSessionCreateResponse? session, }) { return RealtimeServerEventTranscriptionSessionUpdated(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  session: session ?? this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventTranscriptionSessionUpdated &&
          eventId == other.eventId &&
          type == other.type &&
          session == other.session; } 
@override int get hashCode { return Object.hash(eventId, type, session); } 
@override String toString() { return 'RealtimeServerEventTranscriptionSessionUpdated(eventId: $eventId, type: $type, session: $session)'; } 
 }
