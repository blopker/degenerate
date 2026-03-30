// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AiSearchInstanceChatCompletionResponseChoicesMessageRole {const AiSearchInstanceChatCompletionResponseChoicesMessageRole._(this.value);

factory AiSearchInstanceChatCompletionResponseChoicesMessageRole.fromJson(String json) { return switch (json) {
  'system' => system,
  'developer' => developer,
  'user' => user,
  'assistant' => assistant,
  'tool' => tool,
  _ => AiSearchInstanceChatCompletionResponseChoicesMessageRole._(json),
}; }

static const AiSearchInstanceChatCompletionResponseChoicesMessageRole system = AiSearchInstanceChatCompletionResponseChoicesMessageRole._('system');

static const AiSearchInstanceChatCompletionResponseChoicesMessageRole developer = AiSearchInstanceChatCompletionResponseChoicesMessageRole._('developer');

static const AiSearchInstanceChatCompletionResponseChoicesMessageRole user = AiSearchInstanceChatCompletionResponseChoicesMessageRole._('user');

static const AiSearchInstanceChatCompletionResponseChoicesMessageRole assistant = AiSearchInstanceChatCompletionResponseChoicesMessageRole._('assistant');

static const AiSearchInstanceChatCompletionResponseChoicesMessageRole tool = AiSearchInstanceChatCompletionResponseChoicesMessageRole._('tool');

static const List<AiSearchInstanceChatCompletionResponseChoicesMessageRole> values = [system, developer, user, assistant, tool];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceChatCompletionResponseChoicesMessageRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchInstanceChatCompletionResponseChoicesMessageRole($value)'; } 
 }
final class AiSearchInstanceChatCompletionResponseChoicesMessage {const AiSearchInstanceChatCompletionResponseChoicesMessage({required this.content, required this.role, this.additionalProperties = const {}, });

factory AiSearchInstanceChatCompletionResponseChoicesMessage.fromJson(Map<String, dynamic> json) { return AiSearchInstanceChatCompletionResponseChoicesMessage(
  content: json['content'] as String?,
  role: AiSearchInstanceChatCompletionResponseChoicesMessageRole.fromJson(json['role'] as String),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'content', 'role'}.contains(e.key))),
); }

final String? content;

final AiSearchInstanceChatCompletionResponseChoicesMessageRole role;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'content': ?content,
  'role': role.toJson(),
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') && json['content'] is String &&
      json.containsKey('role'); } 
AiSearchInstanceChatCompletionResponseChoicesMessage copyWith({String? Function()? content, AiSearchInstanceChatCompletionResponseChoicesMessageRole? role, Map<String, dynamic>? additionalProperties, }) { return AiSearchInstanceChatCompletionResponseChoicesMessage(
  content: content != null ? content() : this.content,
  role: role ?? this.role,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceChatCompletionResponseChoicesMessage &&
          content == other.content &&
          role == other.role &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(content, role, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'AiSearchInstanceChatCompletionResponseChoicesMessage(content: $content, role: $role, additionalProperties: $additionalProperties)'; } 
 }
