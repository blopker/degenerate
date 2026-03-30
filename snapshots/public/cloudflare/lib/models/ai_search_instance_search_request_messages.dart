// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AiSearchInstanceSearchRequestMessagesRole {const AiSearchInstanceSearchRequestMessagesRole._(this.value);

factory AiSearchInstanceSearchRequestMessagesRole.fromJson(String json) { return switch (json) {
  'system' => system,
  'developer' => developer,
  'user' => user,
  'assistant' => assistant,
  'tool' => tool,
  _ => AiSearchInstanceSearchRequestMessagesRole._(json),
}; }

static const AiSearchInstanceSearchRequestMessagesRole system = AiSearchInstanceSearchRequestMessagesRole._('system');

static const AiSearchInstanceSearchRequestMessagesRole developer = AiSearchInstanceSearchRequestMessagesRole._('developer');

static const AiSearchInstanceSearchRequestMessagesRole user = AiSearchInstanceSearchRequestMessagesRole._('user');

static const AiSearchInstanceSearchRequestMessagesRole assistant = AiSearchInstanceSearchRequestMessagesRole._('assistant');

static const AiSearchInstanceSearchRequestMessagesRole tool = AiSearchInstanceSearchRequestMessagesRole._('tool');

static const List<AiSearchInstanceSearchRequestMessagesRole> values = [system, developer, user, assistant, tool];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchInstanceSearchRequestMessagesRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchInstanceSearchRequestMessagesRole($value)'; } 
 }
final class AiSearchInstanceSearchRequestMessages {const AiSearchInstanceSearchRequestMessages({required this.content, required this.role, this.additionalProperties = const {}, });

factory AiSearchInstanceSearchRequestMessages.fromJson(Map<String, dynamic> json) { return AiSearchInstanceSearchRequestMessages(
  content: json['content'] as String?,
  role: AiSearchInstanceSearchRequestMessagesRole.fromJson(json['role'] as String),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'content', 'role'}.contains(e.key))),
); }

final String? content;

final AiSearchInstanceSearchRequestMessagesRole role;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'content': ?content,
  'role': role.toJson(),
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') && json['content'] is String &&
      json.containsKey('role'); } 
AiSearchInstanceSearchRequestMessages copyWith({String? Function()? content, AiSearchInstanceSearchRequestMessagesRole? role, Map<String, dynamic>? additionalProperties, }) { return AiSearchInstanceSearchRequestMessages(
  content: content != null ? content() : this.content,
  role: role ?? this.role,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchInstanceSearchRequestMessages &&
          content == other.content &&
          role == other.role &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(content, role, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'AiSearchInstanceSearchRequestMessages(content: $content, role: $role, additionalProperties: $additionalProperties)'; } 
 }
