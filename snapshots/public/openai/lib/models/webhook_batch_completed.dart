// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_batch_completed_data.dart';/// The object of the event. Always `event`.
/// 
final class WebhookBatchCompletedObject {const WebhookBatchCompletedObject._(this.value);

factory WebhookBatchCompletedObject.fromJson(String json) { return switch (json) {
  'event' => event,
  _ => WebhookBatchCompletedObject._(json),
}; }

static const WebhookBatchCompletedObject event = WebhookBatchCompletedObject._('event');

static const List<WebhookBatchCompletedObject> values = [event];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookBatchCompletedObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookBatchCompletedObject($value)'; } 
 }
/// The type of the event. Always `batch.completed`.
/// 
final class WebhookBatchCompletedType {const WebhookBatchCompletedType._(this.value);

factory WebhookBatchCompletedType.fromJson(String json) { return switch (json) {
  'batch.completed' => batchCompleted,
  _ => WebhookBatchCompletedType._(json),
}; }

static const WebhookBatchCompletedType batchCompleted = WebhookBatchCompletedType._('batch.completed');

static const List<WebhookBatchCompletedType> values = [batchCompleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookBatchCompletedType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookBatchCompletedType($value)'; } 
 }
/// Sent when a batch API request has been completed.
/// 
final class WebhookBatchCompleted {const WebhookBatchCompleted({required this.createdAt, required this.id, required this.data, this.object, required this.type, });

factory WebhookBatchCompleted.fromJson(Map<String, dynamic> json) { return WebhookBatchCompleted(
  createdAt: (json['created_at'] as num).toInt(),
  id: json['id'] as String,
  data: WebhookBatchCompletedData.fromJson(json['data'] as Map<String, dynamic>),
  object: json['object'] != null ? WebhookBatchCompletedObject.fromJson(json['object'] as String) : null,
  type: WebhookBatchCompletedType.fromJson(json['type'] as String),
); }

/// The Unix timestamp (in seconds) of when the batch API request was completed.
/// 
final int createdAt;

/// The unique ID of the event.
/// 
final String id;

/// Event data payload.
/// 
final WebhookBatchCompletedData data;

/// The object of the event. Always `event`.
/// 
final WebhookBatchCompletedObject? object;

/// The type of the event. Always `batch.completed`.
/// 
final WebhookBatchCompletedType type;

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
WebhookBatchCompleted copyWith({int? createdAt, String? id, WebhookBatchCompletedData? data, WebhookBatchCompletedObject Function()? object, WebhookBatchCompletedType? type, }) { return WebhookBatchCompleted(
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
  data: data ?? this.data,
  object: object != null ? object() : this.object,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookBatchCompleted &&
          createdAt == other.createdAt &&
          id == other.id &&
          data == other.data &&
          object == other.object &&
          type == other.type; } 
@override int get hashCode { return Object.hash(createdAt, id, data, object, type); } 
@override String toString() { return 'WebhookBatchCompleted(createdAt: $createdAt, id: $id, data: $data, object: $object, type: $type)'; } 
 }
