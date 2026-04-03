// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_output_text.dart';/// Type discriminator that is always `chatkit.thread_item`.
@immutable final class AssistantMessageItemObject {const AssistantMessageItemObject._(this.value);

factory AssistantMessageItemObject.fromJson(String json) { return switch (json) {
  'chatkit.thread_item' => chatkitThreadItem,
  _ => AssistantMessageItemObject._(json),
}; }

static const AssistantMessageItemObject chatkitThreadItem = AssistantMessageItemObject._('chatkit.thread_item');

static const List<AssistantMessageItemObject> values = [chatkitThreadItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AssistantMessageItemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AssistantMessageItemObject($value)'; } 
 }
/// Assistant-authored message within a thread.
@immutable final class AssistantMessageItem {const AssistantMessageItem({required this.id, required this.createdAt, required this.threadId, required this.content, this.object = AssistantMessageItemObject.chatkitThreadItem, this.type = 'chatkit.assistant_message', });

factory AssistantMessageItem.fromJson(Map<String, dynamic> json) { return AssistantMessageItem(
  id: json['id'] as String,
  object: AssistantMessageItemObject.fromJson(json['object'] as String),
  createdAt: (json['created_at'] as num).toInt(),
  threadId: json['thread_id'] as String,
  type: json['type'] as String,
  content: (json['content'] as List<dynamic>).map((e) => ResponseOutputText.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Identifier of the thread item.
final String id;

/// Type discriminator that is always `chatkit.thread_item`.
final AssistantMessageItemObject object;

/// Unix timestamp (in seconds) for when the item was created.
final int createdAt;

/// Identifier of the parent thread.
final String threadId;

/// Type discriminator that is always `chatkit.assistant_message`.
final String type;

/// Ordered assistant response segments.
final List<ResponseOutputText> content;

Map<String, dynamic> toJson() { return {
  'id': id,
  'object': object.toJson(),
  'created_at': createdAt,
  'thread_id': threadId,
  'type': type,
  'content': content.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('thread_id') && json['thread_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('content'); } 
AssistantMessageItem copyWith({String? id, AssistantMessageItemObject? object, int? createdAt, String? threadId, String? type, List<ResponseOutputText>? content, }) { return AssistantMessageItem(
  id: id ?? this.id,
  object: object ?? this.object,
  createdAt: createdAt ?? this.createdAt,
  threadId: threadId ?? this.threadId,
  type: type ?? this.type,
  content: content ?? this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AssistantMessageItem &&
          id == other.id &&
          object == other.object &&
          createdAt == other.createdAt &&
          threadId == other.threadId &&
          type == other.type &&
          listEquals(content, other.content); } 
@override int get hashCode { return Object.hash(id, object, createdAt, threadId, type, Object.hashAll(content)); } 
@override String toString() { return 'AssistantMessageItem(id: $id, object: $object, createdAt: $createdAt, threadId: $threadId, type: $type, content: $content)'; } 
 }
