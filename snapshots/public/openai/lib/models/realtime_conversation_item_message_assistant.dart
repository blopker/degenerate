// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_conversation_item_message_assistant_content.dart';/// Identifier for the API object being returned - always `realtime.item`. Optional when creating a new item.
final class RealtimeConversationItemMessageAssistantObject {const RealtimeConversationItemMessageAssistantObject._(this.value);

factory RealtimeConversationItemMessageAssistantObject.fromJson(String json) { return switch (json) {
  'realtime.item' => realtimeItem,
  _ => RealtimeConversationItemMessageAssistantObject._(json),
}; }

static const RealtimeConversationItemMessageAssistantObject realtimeItem = RealtimeConversationItemMessageAssistantObject._('realtime.item');

static const List<RealtimeConversationItemMessageAssistantObject> values = [realtimeItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItemMessageAssistantObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeConversationItemMessageAssistantObject($value)'; } 
 }
/// The type of the item. Always `message`.
final class RealtimeConversationItemMessageAssistantType {const RealtimeConversationItemMessageAssistantType._(this.value);

factory RealtimeConversationItemMessageAssistantType.fromJson(String json) { return switch (json) {
  'message' => message,
  _ => RealtimeConversationItemMessageAssistantType._(json),
}; }

static const RealtimeConversationItemMessageAssistantType message = RealtimeConversationItemMessageAssistantType._('message');

static const List<RealtimeConversationItemMessageAssistantType> values = [message];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItemMessageAssistantType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeConversationItemMessageAssistantType($value)'; } 
 }
/// The status of the item. Has no effect on the conversation.
final class RealtimeConversationItemMessageAssistantStatus {const RealtimeConversationItemMessageAssistantStatus._(this.value);

factory RealtimeConversationItemMessageAssistantStatus.fromJson(String json) { return switch (json) {
  'completed' => completed,
  'incomplete' => incomplete,
  'in_progress' => inProgress,
  _ => RealtimeConversationItemMessageAssistantStatus._(json),
}; }

static const RealtimeConversationItemMessageAssistantStatus completed = RealtimeConversationItemMessageAssistantStatus._('completed');

static const RealtimeConversationItemMessageAssistantStatus incomplete = RealtimeConversationItemMessageAssistantStatus._('incomplete');

static const RealtimeConversationItemMessageAssistantStatus inProgress = RealtimeConversationItemMessageAssistantStatus._('in_progress');

static const List<RealtimeConversationItemMessageAssistantStatus> values = [completed, incomplete, inProgress];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItemMessageAssistantStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeConversationItemMessageAssistantStatus($value)'; } 
 }
/// The role of the message sender. Always `assistant`.
final class RealtimeConversationItemMessageAssistantRole {const RealtimeConversationItemMessageAssistantRole._(this.value);

factory RealtimeConversationItemMessageAssistantRole.fromJson(String json) { return switch (json) {
  'assistant' => assistant,
  _ => RealtimeConversationItemMessageAssistantRole._(json),
}; }

static const RealtimeConversationItemMessageAssistantRole assistant = RealtimeConversationItemMessageAssistantRole._('assistant');

static const List<RealtimeConversationItemMessageAssistantRole> values = [assistant];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItemMessageAssistantRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeConversationItemMessageAssistantRole($value)'; } 
 }
/// An assistant message item in a Realtime conversation.
final class RealtimeConversationItemMessageAssistant {const RealtimeConversationItemMessageAssistant({this.id, this.object, required this.type, this.status, required this.role, required this.content, });

factory RealtimeConversationItemMessageAssistant.fromJson(Map<String, dynamic> json) { return RealtimeConversationItemMessageAssistant(
  id: json['id'] as String?,
  object: json['object'] != null ? RealtimeConversationItemMessageAssistantObject.fromJson(json['object'] as String) : null,
  type: RealtimeConversationItemMessageAssistantType.fromJson(json['type'] as String),
  status: json['status'] != null ? RealtimeConversationItemMessageAssistantStatus.fromJson(json['status'] as String) : null,
  role: RealtimeConversationItemMessageAssistantRole.fromJson(json['role'] as String),
  content: (json['content'] as List<dynamic>).map((e) => RealtimeConversationItemMessageAssistantContent.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The unique ID of the item. This may be provided by the client or generated by the server.
final String? id;

/// Identifier for the API object being returned - always `realtime.item`. Optional when creating a new item.
final RealtimeConversationItemMessageAssistantObject? object;

/// The type of the item. Always `message`.
final RealtimeConversationItemMessageAssistantType type;

/// The status of the item. Has no effect on the conversation.
final RealtimeConversationItemMessageAssistantStatus? status;

/// The role of the message sender. Always `assistant`.
final RealtimeConversationItemMessageAssistantRole role;

/// The content of the message.
final List<RealtimeConversationItemMessageAssistantContent> content;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (object != null) 'object': object?.toJson(),
  'type': type.toJson(),
  if (status != null) 'status': status?.toJson(),
  'role': role.toJson(),
  'content': content.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('role') &&
      json.containsKey('content'); } 
RealtimeConversationItemMessageAssistant copyWith({String Function()? id, RealtimeConversationItemMessageAssistantObject Function()? object, RealtimeConversationItemMessageAssistantType? type, RealtimeConversationItemMessageAssistantStatus Function()? status, RealtimeConversationItemMessageAssistantRole? role, List<RealtimeConversationItemMessageAssistantContent>? content, }) { return RealtimeConversationItemMessageAssistant(
  id: id != null ? id() : this.id,
  object: object != null ? object() : this.object,
  type: type ?? this.type,
  status: status != null ? status() : this.status,
  role: role ?? this.role,
  content: content ?? this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeConversationItemMessageAssistant &&
          id == other.id &&
          object == other.object &&
          type == other.type &&
          status == other.status &&
          role == other.role &&
          listEquals(content, other.content); } 
@override int get hashCode { return Object.hash(id, object, type, status, role, Object.hashAll(content)); } 
@override String toString() { return 'RealtimeConversationItemMessageAssistant(id: $id, object: $object, type: $type, status: $status, role: $role, content: $content)'; } 
 }
