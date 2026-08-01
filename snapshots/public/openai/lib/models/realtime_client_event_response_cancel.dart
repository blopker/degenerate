// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Send this event to cancel an in-progress response. The server will respond
/// with a `response.done` event with a status of `response.status=cancelled`. If
/// there is no response to cancel, the server will respond with an error. It's safe
/// to call `response.cancel` even if no response is in progress, an error will be
/// returned the session will remain unaffected.
/// 
@immutable final class RealtimeClientEventResponseCancel {const RealtimeClientEventResponseCancel({required this.type, this.eventId, this.responseId, });

factory RealtimeClientEventResponseCancel.fromJson(Map<String, dynamic> json) { return RealtimeClientEventResponseCancel(
  eventId: json['event_id'] as String?,
  type: json['type'] as String,
  responseId: json['response_id'] as String?,
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `response.cancel`.
final String type;

/// A specific response ID to cancel - if not provided, will cancel an
/// in-progress response in the default conversation.
/// 
final String? responseId;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type,
  'response_id': ?responseId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
RealtimeClientEventResponseCancel copyWith({String? Function()? eventId, String? type, String? Function()? responseId, }) { return RealtimeClientEventResponseCancel(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
  responseId: responseId != null ? responseId() : this.responseId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeClientEventResponseCancel &&
          eventId == other.eventId &&
          type == other.type &&
          responseId == other.responseId; } 
@override int get hashCode { return Object.hash(eventId, type, responseId); } 
@override String toString() { return 'RealtimeClientEventResponseCancel(eventId: $eventId, type: $type, responseId: $responseId)'; } 
 }
