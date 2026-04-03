// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_client_event_session_update_session.dart';import 'realtime_session_create_request_ga.dart';import 'realtime_transcription_session_create_request_ga.dart';/// The event type, must be `session.update`.
@immutable final class RealtimeClientEventSessionUpdateType {const RealtimeClientEventSessionUpdateType._(this.value);

factory RealtimeClientEventSessionUpdateType.fromJson(String json) { return switch (json) {
  'session.update' => sessionUpdate,
  _ => RealtimeClientEventSessionUpdateType._(json),
}; }

static const RealtimeClientEventSessionUpdateType sessionUpdate = RealtimeClientEventSessionUpdateType._('session.update');

static const List<RealtimeClientEventSessionUpdateType> values = [sessionUpdate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventSessionUpdateType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeClientEventSessionUpdateType($value)'; } 
 }
/// Send this event to update the session’s configuration.
/// The client may send this event at any time to update any field
/// except for `voice` and `model`. `voice` can be updated only if there have been no other audio outputs yet.
/// 
/// When the server receives a `session.update`, it will respond
/// with a `session.updated` event showing the full, effective configuration.
/// Only the fields that are present in the `session.update` are updated. To clear a field like
/// `instructions`, pass an empty string. To clear a field like `tools`, pass an empty array.
/// To clear a field like `turn_detection`, pass `null`.
/// 
@immutable final class RealtimeClientEventSessionUpdate {const RealtimeClientEventSessionUpdate({required this.type, required this.session, this.eventId, });

factory RealtimeClientEventSessionUpdate.fromJson(Map<String, dynamic> json) { return RealtimeClientEventSessionUpdate(
  eventId: json['event_id'] as String?,
  type: RealtimeClientEventSessionUpdateType.fromJson(json['type'] as String),
  session: OneOf2.parse(json['session'], fromA: (v) => RealtimeSessionCreateRequestGa.fromJson(v as Map<String, dynamic>), fromB: (v) => RealtimeTranscriptionSessionCreateRequestGa.fromJson(v as Map<String, dynamic>),),
); }

/// Optional client-generated ID used to identify this event. This is an arbitrary string that a client may assign. It will be passed back if there is an error with the event, but the corresponding `session.updated` event will not include it.
final String? eventId;

/// The event type, must be `session.update`.
final RealtimeClientEventSessionUpdateType type;

/// Update the Realtime session. Choose either a realtime
/// session or a transcription session.
/// 
final RealtimeClientEventSessionUpdateSession session;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type.toJson(),
  'session': session.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('session'); } 
RealtimeClientEventSessionUpdate copyWith({String Function()? eventId, RealtimeClientEventSessionUpdateType? type, RealtimeClientEventSessionUpdateSession? session, }) { return RealtimeClientEventSessionUpdate(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
  session: session ?? this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeClientEventSessionUpdate &&
          eventId == other.eventId &&
          type == other.type &&
          session == other.session; } 
@override int get hashCode { return Object.hash(eventId, type, session); } 
@override String toString() { return 'RealtimeClientEventSessionUpdate(eventId: $eventId, type: $type, session: $session)'; } 
 }
