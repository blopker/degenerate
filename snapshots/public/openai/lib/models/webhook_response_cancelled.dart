// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_response_cancelled_data.dart';/// The object of the event. Always `event`.
/// 
final class WebhookResponseCancelledObject {const WebhookResponseCancelledObject._(this.value);

factory WebhookResponseCancelledObject.fromJson(String json) { return switch (json) {
  'event' => event,
  _ => WebhookResponseCancelledObject._(json),
}; }

static const WebhookResponseCancelledObject event = WebhookResponseCancelledObject._('event');

static const List<WebhookResponseCancelledObject> values = [event];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookResponseCancelledObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookResponseCancelledObject($value)'; } 
 }
/// The type of the event. Always `response.cancelled`.
/// 
final class WebhookResponseCancelledType {const WebhookResponseCancelledType._(this.value);

factory WebhookResponseCancelledType.fromJson(String json) { return switch (json) {
  'response.cancelled' => responseCancelled,
  _ => WebhookResponseCancelledType._(json),
}; }

static const WebhookResponseCancelledType responseCancelled = WebhookResponseCancelledType._('response.cancelled');

static const List<WebhookResponseCancelledType> values = [responseCancelled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookResponseCancelledType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookResponseCancelledType($value)'; } 
 }
/// Sent when a background response has been cancelled.
/// 
final class WebhookResponseCancelled {const WebhookResponseCancelled({required this.createdAt, required this.id, required this.data, this.object, required this.type, });

factory WebhookResponseCancelled.fromJson(Map<String, dynamic> json) { return WebhookResponseCancelled(
  createdAt: (json['created_at'] as num).toInt(),
  id: json['id'] as String,
  data: WebhookResponseCancelledData.fromJson(json['data'] as Map<String, dynamic>),
  object: json['object'] != null ? WebhookResponseCancelledObject.fromJson(json['object'] as String) : null,
  type: WebhookResponseCancelledType.fromJson(json['type'] as String),
); }

/// The Unix timestamp (in seconds) of when the model response was cancelled.
/// 
final int createdAt;

/// The unique ID of the event.
/// 
final String id;

/// Event data payload.
/// 
final WebhookResponseCancelledData data;

/// The object of the event. Always `event`.
/// 
final WebhookResponseCancelledObject? object;

/// The type of the event. Always `response.cancelled`.
/// 
final WebhookResponseCancelledType type;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt,
  'id': id,
  'data': data.toJson(),
  if (object != null) 'object': object?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('data') &&
      json.containsKey('type'); } 
WebhookResponseCancelled copyWith({int? createdAt, String? id, WebhookResponseCancelledData? data, WebhookResponseCancelledObject Function()? object, WebhookResponseCancelledType? type, }) { return WebhookResponseCancelled(
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
  data: data ?? this.data,
  object: object != null ? object() : this.object,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookResponseCancelled &&
          createdAt == other.createdAt &&
          id == other.id &&
          data == other.data &&
          object == other.object &&
          type == other.type; } 
@override int get hashCode { return Object.hash(createdAt, id, data, object, type); } 
@override String toString() { return 'WebhookResponseCancelled(createdAt: $createdAt, id: $id, data: $data, object: $object, type: $type)'; } 
 }
