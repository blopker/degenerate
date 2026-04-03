// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'attachment.dart';import 'inference_options.dart';import 'user_message_item_content.dart';/// Type discriminator that is always `chatkit.thread_item`.
@immutable final class UserMessageItemObject {const UserMessageItemObject._(this.value);

factory UserMessageItemObject.fromJson(String json) { return switch (json) {
  'chatkit.thread_item' => chatkitThreadItem,
  _ => UserMessageItemObject._(json),
}; }

static const UserMessageItemObject chatkitThreadItem = UserMessageItemObject._('chatkit.thread_item');

static const List<UserMessageItemObject> values = [chatkitThreadItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UserMessageItemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UserMessageItemObject($value)'; } 
 }
/// User-authored messages within a thread.
@immutable final class UserMessageItem {const UserMessageItem({required this.id, required this.createdAt, required this.threadId, required this.content, required this.attachments, required this.inferenceOptions, this.object = UserMessageItemObject.chatkitThreadItem, this.type = 'chatkit.user_message', });

factory UserMessageItem.fromJson(Map<String, dynamic> json) { return UserMessageItem(
  id: json['id'] as String,
  object: UserMessageItemObject.fromJson(json['object'] as String),
  createdAt: (json['created_at'] as num).toInt(),
  threadId: json['thread_id'] as String,
  type: json['type'] as String,
  content: (json['content'] as List<dynamic>).map((e) => UserMessageItemContent.fromJson(e as Map<String, dynamic>)).toList(),
  attachments: (json['attachments'] as List<dynamic>).map((e) => Attachment.fromJson(e as Map<String, dynamic>)).toList(),
  inferenceOptions: json['inference_options'] != null ? InferenceOptions.fromJson(json['inference_options'] as Map<String, dynamic>) : null,
); }

/// Identifier of the thread item.
final String id;

/// Type discriminator that is always `chatkit.thread_item`.
final UserMessageItemObject object;

/// Unix timestamp (in seconds) for when the item was created.
final int createdAt;

/// Identifier of the parent thread.
final String threadId;

final String type;

/// Ordered content elements supplied by the user.
final List<UserMessageItemContent> content;

/// Attachments associated with the user message. Defaults to an empty list.
final List<Attachment> attachments;

/// Inference overrides applied to the message. Defaults to null when unset.
final InferenceOptions? inferenceOptions;

Map<String, dynamic> toJson() { return {
  'id': id,
  'object': object.toJson(),
  'created_at': createdAt,
  'thread_id': threadId,
  'type': type,
  'content': content.map((e) => e.toJson()).toList(),
  'attachments': attachments.map((e) => e.toJson()).toList(),
  if (inferenceOptions != null) 'inference_options': inferenceOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('thread_id') && json['thread_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('content') &&
      json.containsKey('attachments') &&
      json.containsKey('inference_options'); } 
UserMessageItem copyWith({String? id, UserMessageItemObject? object, int? createdAt, String? threadId, String? type, List<UserMessageItemContent>? content, List<Attachment>? attachments, InferenceOptions? Function()? inferenceOptions, }) { return UserMessageItem(
  id: id ?? this.id,
  object: object ?? this.object,
  createdAt: createdAt ?? this.createdAt,
  threadId: threadId ?? this.threadId,
  type: type ?? this.type,
  content: content ?? this.content,
  attachments: attachments ?? this.attachments,
  inferenceOptions: inferenceOptions != null ? inferenceOptions() : this.inferenceOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserMessageItem &&
          id == other.id &&
          object == other.object &&
          createdAt == other.createdAt &&
          threadId == other.threadId &&
          type == other.type &&
          listEquals(content, other.content) &&
          listEquals(attachments, other.attachments) &&
          inferenceOptions == other.inferenceOptions; } 
@override int get hashCode { return Object.hash(id, object, createdAt, threadId, type, Object.hashAll(content), Object.hashAll(attachments), inferenceOptions); } 
@override String toString() { return 'UserMessageItem(id: $id, object: $object, createdAt: $createdAt, threadId: $threadId, type: $type, content: $content, attachments: $attachments, inferenceOptions: $inferenceOptions)'; } 
 }
