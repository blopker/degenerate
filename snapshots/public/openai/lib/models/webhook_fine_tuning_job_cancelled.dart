// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_fine_tuning_job_cancelled_data.dart';/// The object of the event. Always `event`.
/// 
final class WebhookFineTuningJobCancelledObject {const WebhookFineTuningJobCancelledObject._(this.value);

factory WebhookFineTuningJobCancelledObject.fromJson(String json) { return switch (json) {
  'event' => event,
  _ => WebhookFineTuningJobCancelledObject._(json),
}; }

static const WebhookFineTuningJobCancelledObject event = WebhookFineTuningJobCancelledObject._('event');

static const List<WebhookFineTuningJobCancelledObject> values = [event];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookFineTuningJobCancelledObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookFineTuningJobCancelledObject($value)'; } 
 }
/// The type of the event. Always `fine_tuning.job.cancelled`.
/// 
final class WebhookFineTuningJobCancelledType {const WebhookFineTuningJobCancelledType._(this.value);

factory WebhookFineTuningJobCancelledType.fromJson(String json) { return switch (json) {
  'fine_tuning.job.cancelled' => fineTuningJobCancelled,
  _ => WebhookFineTuningJobCancelledType._(json),
}; }

static const WebhookFineTuningJobCancelledType fineTuningJobCancelled = WebhookFineTuningJobCancelledType._('fine_tuning.job.cancelled');

static const List<WebhookFineTuningJobCancelledType> values = [fineTuningJobCancelled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookFineTuningJobCancelledType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookFineTuningJobCancelledType($value)'; } 
 }
/// Sent when a fine-tuning job has been cancelled.
/// 
final class WebhookFineTuningJobCancelled {const WebhookFineTuningJobCancelled({required this.createdAt, required this.id, required this.data, this.object, required this.type, });

factory WebhookFineTuningJobCancelled.fromJson(Map<String, dynamic> json) { return WebhookFineTuningJobCancelled(
  createdAt: (json['created_at'] as num).toInt(),
  id: json['id'] as String,
  data: WebhookFineTuningJobCancelledData.fromJson(json['data'] as Map<String, dynamic>),
  object: json['object'] != null ? WebhookFineTuningJobCancelledObject.fromJson(json['object'] as String) : null,
  type: WebhookFineTuningJobCancelledType.fromJson(json['type'] as String),
); }

/// The Unix timestamp (in seconds) of when the fine-tuning job was cancelled.
/// 
final int createdAt;

/// The unique ID of the event.
/// 
final String id;

/// Event data payload.
/// 
final WebhookFineTuningJobCancelledData data;

/// The object of the event. Always `event`.
/// 
final WebhookFineTuningJobCancelledObject? object;

/// The type of the event. Always `fine_tuning.job.cancelled`.
/// 
final WebhookFineTuningJobCancelledType type;

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
WebhookFineTuningJobCancelled copyWith({int? createdAt, String? id, WebhookFineTuningJobCancelledData? data, WebhookFineTuningJobCancelledObject Function()? object, WebhookFineTuningJobCancelledType? type, }) { return WebhookFineTuningJobCancelled(
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
  data: data ?? this.data,
  object: object != null ? object() : this.object,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookFineTuningJobCancelled &&
          createdAt == other.createdAt &&
          id == other.id &&
          data == other.data &&
          object == other.object &&
          type == other.type; } 
@override int get hashCode { return Object.hash(createdAt, id, data, object, type); } 
@override String toString() { return 'WebhookFineTuningJobCancelled(createdAt: $createdAt, id: $id, data: $data, object: $object, type: $type)'; } 
 }
