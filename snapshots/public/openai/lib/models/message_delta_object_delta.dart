// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'message_delta_content_image_file_object.dart';import 'message_delta_content_image_url_object.dart';import 'message_delta_content_refusal_object.dart';import 'message_delta_content_text_object.dart';import 'message_delta_object_delta_content.dart';/// The entity that produced the message. One of `user` or `assistant`.
@immutable final class MessageDeltaObjectDeltaRole {const MessageDeltaObjectDeltaRole._(this.value);

factory MessageDeltaObjectDeltaRole.fromJson(String json) { return switch (json) {
  'user' => user,
  'assistant' => assistant,
  _ => MessageDeltaObjectDeltaRole._(json),
}; }

static const MessageDeltaObjectDeltaRole user = MessageDeltaObjectDeltaRole._('user');

static const MessageDeltaObjectDeltaRole assistant = MessageDeltaObjectDeltaRole._('assistant');

static const List<MessageDeltaObjectDeltaRole> values = [user, assistant];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageDeltaObjectDeltaRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageDeltaObjectDeltaRole($value)'; } 
 }
/// The delta containing the fields that have changed on the Message.
@immutable final class MessageDeltaObjectDelta {const MessageDeltaObjectDelta({this.role, this.content, });

factory MessageDeltaObjectDelta.fromJson(Map<String, dynamic> json) { return MessageDeltaObjectDelta(
  role: json['role'] != null ? MessageDeltaObjectDeltaRole.fromJson(json['role'] as String) : null,
  content: (json['content'] as List<dynamic>?)?.map((e) => OneOf4.parse(e, fromA: (v) => MessageDeltaContentImageFileObject.fromJson(v as Map<String, dynamic>), fromB: (v) => MessageDeltaContentTextObject.fromJson(v as Map<String, dynamic>), fromC: (v) => MessageDeltaContentRefusalObject.fromJson(v as Map<String, dynamic>), fromD: (v) => MessageDeltaContentImageUrlObject.fromJson(v as Map<String, dynamic>),)).toList(),
); }

/// The entity that produced the message. One of `user` or `assistant`.
final MessageDeltaObjectDeltaRole? role;

/// The content of the message in array of text and/or images.
final List<MessageDeltaObjectDeltaContent>? content;

Map<String, dynamic> toJson() { return {
  if (role != null) 'role': role?.toJson(),
  if (content != null) 'content': content?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'role', 'content'}.contains(key)); } 
MessageDeltaObjectDelta copyWith({MessageDeltaObjectDeltaRole Function()? role, List<MessageDeltaObjectDeltaContent> Function()? content, }) { return MessageDeltaObjectDelta(
  role: role != null ? role() : this.role,
  content: content != null ? content() : this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageDeltaObjectDelta &&
          role == other.role &&
          listEquals(content, other.content); } 
@override int get hashCode { return Object.hash(role, Object.hashAll(content ?? const [])); } 
@override String toString() { return 'MessageDeltaObjectDelta(role: $role, content: $content)'; } 
 }
