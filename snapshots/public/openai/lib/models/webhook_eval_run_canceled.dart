// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_eval_run_canceled_data.dart';/// The object of the event. Always `event`.
/// 
@immutable final class WebhookEvalRunCanceledObject {const WebhookEvalRunCanceledObject._(this.value);

factory WebhookEvalRunCanceledObject.fromJson(String json) { return switch (json) {
  'event' => event,
  _ => WebhookEvalRunCanceledObject._(json),
}; }

static const WebhookEvalRunCanceledObject event = WebhookEvalRunCanceledObject._('event');

static const List<WebhookEvalRunCanceledObject> values = [event];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookEvalRunCanceledObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookEvalRunCanceledObject($value)'; } 
 }
/// The type of the event. Always `eval.run.canceled`.
/// 
@immutable final class WebhookEvalRunCanceledType {const WebhookEvalRunCanceledType._(this.value);

factory WebhookEvalRunCanceledType.fromJson(String json) { return switch (json) {
  'eval.run.canceled' => evalRunCanceled,
  _ => WebhookEvalRunCanceledType._(json),
}; }

static const WebhookEvalRunCanceledType evalRunCanceled = WebhookEvalRunCanceledType._('eval.run.canceled');

static const List<WebhookEvalRunCanceledType> values = [evalRunCanceled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookEvalRunCanceledType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookEvalRunCanceledType($value)'; } 
 }
/// Sent when an eval run has been canceled.
/// 
@immutable final class WebhookEvalRunCanceled {const WebhookEvalRunCanceled({required this.createdAt, required this.id, required this.data, required this.type, this.object, });

factory WebhookEvalRunCanceled.fromJson(Map<String, dynamic> json) { return WebhookEvalRunCanceled(
  createdAt: (json['created_at'] as num).toInt(),
  id: json['id'] as String,
  data: WebhookEvalRunCanceledData.fromJson(json['data'] as Map<String, dynamic>),
  object: json['object'] != null ? WebhookEvalRunCanceledObject.fromJson(json['object'] as String) : null,
  type: WebhookEvalRunCanceledType.fromJson(json['type'] as String),
); }

/// The Unix timestamp (in seconds) of when the eval run was canceled.
/// 
final int createdAt;

/// The unique ID of the event.
/// 
final String id;

/// Event data payload.
/// 
final WebhookEvalRunCanceledData data;

/// The object of the event. Always `event`.
/// 
final WebhookEvalRunCanceledObject? object;

/// The type of the event. Always `eval.run.canceled`.
/// 
final WebhookEvalRunCanceledType type;

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
WebhookEvalRunCanceled copyWith({int? createdAt, String? id, WebhookEvalRunCanceledData? data, WebhookEvalRunCanceledObject Function()? object, WebhookEvalRunCanceledType? type, }) { return WebhookEvalRunCanceled(
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
  data: data ?? this.data,
  object: object != null ? object() : this.object,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookEvalRunCanceled &&
          createdAt == other.createdAt &&
          id == other.id &&
          data == other.data &&
          object == other.object &&
          type == other.type; } 
@override int get hashCode { return Object.hash(createdAt, id, data, object, type); } 
@override String toString() { return 'WebhookEvalRunCanceled(createdAt: $createdAt, id: $id, data: $data, object: $object, type: $type)'; } 
 }
