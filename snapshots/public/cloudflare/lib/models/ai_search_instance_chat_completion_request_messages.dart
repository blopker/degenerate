// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchInstanceChatCompletionRequestMessagesRole {const AiSearchInstanceChatCompletionRequestMessagesRole._(this.value);

factory AiSearchInstanceChatCompletionRequestMessagesRole.fromJson(String json) { return switch (json) {
  'system' => system,
  'developer' => developer,
  'user' => user,
  'assistant' => assistant,
  'tool' => tool,
  _ => AiSearchInstanceChatCompletionRequestMessagesRole._(json),
}; }

static const AiSearchInstanceChatCompletionRequestMessagesRole system = AiSearchInstanceChatCompletionRequestMessagesRole._('system');

static const AiSearchInstanceChatCompletionRequestMessagesRole developer = AiSearchInstanceChatCompletionRequestMessagesRole._('developer');

static const AiSearchInstanceChatCompletionRequestMessagesRole user = AiSearchInstanceChatCompletionRequestMessagesRole._('user');

static const AiSearchInstanceChatCompletionRequestMessagesRole assistant = AiSearchInstanceChatCompletionRequestMessagesRole._('assistant');

static const AiSearchInstanceChatCompletionRequestMessagesRole tool = AiSearchInstanceChatCompletionRequestMessagesRole._('tool');

static const List<AiSearchInstanceChatCompletionRequestMessagesRole> values = [system, developer, user, assistant, tool];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceChatCompletionRequestMessagesRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchInstanceChatCompletionRequestMessagesRole($value)'; } 
 }
@immutable final class AiSearchInstanceChatCompletionRequestMessages {const AiSearchInstanceChatCompletionRequestMessages({required this.content, required this.role, this.additionalProperties = const {}, });

factory AiSearchInstanceChatCompletionRequestMessages.fromJson(Map<String, dynamic> json) { return AiSearchInstanceChatCompletionRequestMessages(
  content: json['content'] as String?,
  role: AiSearchInstanceChatCompletionRequestMessagesRole.fromJson(json['role'] as String),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'content', 'role'}.contains(e.key))),
); }

final String? content;

final AiSearchInstanceChatCompletionRequestMessagesRole role;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'content': ?content,
  'role': role.toJson(),
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') && json['content'] is String &&
      json.containsKey('role'); } 
AiSearchInstanceChatCompletionRequestMessages copyWith({String? Function()? content, AiSearchInstanceChatCompletionRequestMessagesRole? role, Map<String, dynamic>? additionalProperties, }) { return AiSearchInstanceChatCompletionRequestMessages(
  content: content != null ? content() : this.content,
  role: role ?? this.role,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceChatCompletionRequestMessages &&
          content == other.content &&
          role == other.role &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(content, role, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'AiSearchInstanceChatCompletionRequestMessages(content: $content, role: $role, additionalProperties: $additionalProperties)'; } 
 }
