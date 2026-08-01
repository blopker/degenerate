// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Details of the error.
@immutable final class RealtimeServerEventErrorError {const RealtimeServerEventErrorError({required this.type, required this.message, this.code = const Omittable.absent(), this.param = const Omittable.absent(), this.eventId = const Omittable.absent(), });

factory RealtimeServerEventErrorError.fromJson(Map<String, dynamic> json) { return RealtimeServerEventErrorError(
  type: json['type'] as String,
  code: json.containsKey('code') ? Omittable(json['code'] as String?) : const Omittable.absent(),
  message: json['message'] as String,
  param: json.containsKey('param') ? Omittable(json['param'] as String?) : const Omittable.absent(),
  eventId: json.containsKey('event_id') ? Omittable(json['event_id'] as String?) : const Omittable.absent(),
); }

/// The type of error (e.g., "invalid_request_error", "server_error").
/// 
final String type;

/// Error code, if any.
final Omittable<String?> code;

/// A human-readable error message.
final String message;

/// Parameter related to the error, if any.
final Omittable<String?> param;

/// The event_id of the client event that caused the error, if applicable.
/// 
final Omittable<String?> eventId;

Map<String, dynamic> toJson() { return {
  'type': type,
  if (code.isPresent) 'code': code.value,
  'message': message,
  if (param.isPresent) 'param': param.value,
  if (eventId.isPresent) 'event_id': eventId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('message') && json['message'] is String; } 
RealtimeServerEventErrorError copyWith({String? type, Omittable<String?>? code, String? message, Omittable<String?>? param, Omittable<String?>? eventId, }) { return RealtimeServerEventErrorError(
  type: type ?? this.type,
  code: code ?? this.code,
  message: message ?? this.message,
  param: param ?? this.param,
  eventId: eventId ?? this.eventId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventErrorError &&
          type == other.type &&
          code == other.code &&
          message == other.message &&
          param == other.param &&
          eventId == other.eventId; } 
@override int get hashCode { return Object.hash(type, code, message, param, eventId); } 
@override String toString() { return 'RealtimeServerEventErrorError(type: $type, code: $code, message: $message, param: $param, eventId: $eventId)'; } 
 }
