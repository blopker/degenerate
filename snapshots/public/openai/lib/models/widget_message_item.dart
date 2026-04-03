// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type discriminator that is always `chatkit.thread_item`.
@immutable final class WidgetMessageItemObject {const WidgetMessageItemObject._(this.value);

factory WidgetMessageItemObject.fromJson(String json) { return switch (json) {
  'chatkit.thread_item' => chatkitThreadItem,
  _ => WidgetMessageItemObject._(json),
}; }

static const WidgetMessageItemObject chatkitThreadItem = WidgetMessageItemObject._('chatkit.thread_item');

static const List<WidgetMessageItemObject> values = [chatkitThreadItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WidgetMessageItemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WidgetMessageItemObject($value)'; } 
 }
/// Thread item that renders a widget payload.
@immutable final class WidgetMessageItem {const WidgetMessageItem({required this.id, required this.createdAt, required this.threadId, required this.widget, this.object = WidgetMessageItemObject.chatkitThreadItem, this.type = 'chatkit.widget', });

factory WidgetMessageItem.fromJson(Map<String, dynamic> json) { return WidgetMessageItem(
  id: json['id'] as String,
  object: WidgetMessageItemObject.fromJson(json['object'] as String),
  createdAt: (json['created_at'] as num).toInt(),
  threadId: json['thread_id'] as String,
  type: json['type'] as String,
  widget: json['widget'] as String,
); }

/// Identifier of the thread item.
final String id;

/// Type discriminator that is always `chatkit.thread_item`.
final WidgetMessageItemObject object;

/// Unix timestamp (in seconds) for when the item was created.
final int createdAt;

/// Identifier of the parent thread.
final String threadId;

/// Type discriminator that is always `chatkit.widget`.
final String type;

/// Serialized widget payload rendered in the UI.
final String widget;

Map<String, dynamic> toJson() { return {
  'id': id,
  'object': object.toJson(),
  'created_at': createdAt,
  'thread_id': threadId,
  'type': type,
  'widget': widget,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('thread_id') && json['thread_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('widget') && json['widget'] is String; } 
WidgetMessageItem copyWith({String? id, WidgetMessageItemObject? object, int? createdAt, String? threadId, String? type, String? widget, }) { return WidgetMessageItem(
  id: id ?? this.id,
  object: object ?? this.object,
  createdAt: createdAt ?? this.createdAt,
  threadId: threadId ?? this.threadId,
  type: type ?? this.type,
  widget: widget ?? this.widget,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WidgetMessageItem &&
          id == other.id &&
          object == other.object &&
          createdAt == other.createdAt &&
          threadId == other.threadId &&
          type == other.type &&
          widget == other.widget; } 
@override int get hashCode { return Object.hash(id, object, createdAt, threadId, type, widget); } 
@override String toString() { return 'WidgetMessageItem(id: $id, object: $object, createdAt: $createdAt, threadId: $threadId, type: $type, widget: $widget)'; } 
 }
