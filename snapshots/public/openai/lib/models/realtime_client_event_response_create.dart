// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtime_response_create_params.dart';/// The event type, must be `response.create`.
final class RealtimeClientEventResponseCreateType {const RealtimeClientEventResponseCreateType._(this.value);

factory RealtimeClientEventResponseCreateType.fromJson(String json) { return switch (json) {
  'response.create' => responseCreate,
  _ => RealtimeClientEventResponseCreateType._(json),
}; }

static const RealtimeClientEventResponseCreateType responseCreate = RealtimeClientEventResponseCreateType._('response.create');

static const List<RealtimeClientEventResponseCreateType> values = [responseCreate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventResponseCreateType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeClientEventResponseCreateType($value)'; } 
 }
/// This event instructs the server to create a Response, which means triggering
/// model inference. When in Server VAD mode, the server will create Responses
/// automatically.
/// 
/// A Response will include at least one Item, and may have two, in which case
/// the second will be a function call. These Items will be appended to the
/// conversation history by default.
/// 
/// The server will respond with a `response.created` event, events for Items
/// and content created, and finally a `response.done` event to indicate the
/// Response is complete.
/// 
/// The `response.create` event includes inference configuration like
/// `instructions` and `tools`. If these are set, they will override the Session's
/// configuration for this Response only.
/// 
/// Responses can be created out-of-band of the default Conversation, meaning that they can
/// have arbitrary input, and it's possible to disable writing the output to the Conversation.
/// Only one Response can write to the default Conversation at a time, but otherwise multiple
/// Responses can be created in parallel. The `metadata` field is a good way to disambiguate
/// multiple simultaneous Responses.
/// 
/// Clients can set `conversation` to `none` to create a Response that does not write to the default
/// Conversation. Arbitrary input can be provided with the `input` field, which is an array accepting
/// raw Items and references to existing Items.
/// 
final class RealtimeClientEventResponseCreate {const RealtimeClientEventResponseCreate({this.eventId, required this.type, this.response, });

factory RealtimeClientEventResponseCreate.fromJson(Map<String, dynamic> json) { return RealtimeClientEventResponseCreate(
  eventId: json['event_id'] as String?,
  type: RealtimeClientEventResponseCreateType.fromJson(json['type'] as String),
  response: json['response'] != null ? RealtimeResponseCreateParams.fromJson(json['response'] as Map<String, dynamic>) : null,
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `response.create`.
final RealtimeClientEventResponseCreateType type;

final RealtimeResponseCreateParams? response;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type.toJson(),
  if (response != null) 'response': response?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RealtimeClientEventResponseCreate copyWith({String Function()? eventId, RealtimeClientEventResponseCreateType? type, RealtimeResponseCreateParams Function()? response, }) { return RealtimeClientEventResponseCreate(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
  response: response != null ? response() : this.response,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeClientEventResponseCreate &&
          eventId == other.eventId &&
          type == other.type &&
          response == other.response; } 
@override int get hashCode { return Object.hash(eventId, type, response); } 
@override String toString() { return 'RealtimeClientEventResponseCreate(eventId: $eventId, type: $type, response: $response)'; } 
 }
