// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_allowed_tools.dart';/// Allowed tool configuration type. Always `allowed_tools`.
@immutable final class ChatCompletionAllowedToolsChoiceType {const ChatCompletionAllowedToolsChoiceType._(this.value);

factory ChatCompletionAllowedToolsChoiceType.fromJson(String json) { return switch (json) {
  'allowed_tools' => allowedTools,
  _ => ChatCompletionAllowedToolsChoiceType._(json),
}; }

static const ChatCompletionAllowedToolsChoiceType allowedTools = ChatCompletionAllowedToolsChoiceType._('allowed_tools');

static const List<ChatCompletionAllowedToolsChoiceType> values = [allowedTools];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionAllowedToolsChoiceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChatCompletionAllowedToolsChoiceType($value)'; } 
 }
/// Constrains the tools available to the model to a pre-defined set.
/// 
@immutable final class ChatCompletionAllowedToolsChoice {const ChatCompletionAllowedToolsChoice({required this.type, required this.allowedTools, });

factory ChatCompletionAllowedToolsChoice.fromJson(Map<String, dynamic> json) { return ChatCompletionAllowedToolsChoice(
  type: ChatCompletionAllowedToolsChoiceType.fromJson(json['type'] as String),
  allowedTools: ChatCompletionAllowedTools.fromJson(json['allowed_tools'] as Map<String, dynamic>),
); }

/// Allowed tool configuration type. Always `allowed_tools`.
final ChatCompletionAllowedToolsChoiceType type;

final ChatCompletionAllowedTools allowedTools;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'allowed_tools': allowedTools.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('allowed_tools'); } 
ChatCompletionAllowedToolsChoice copyWith({ChatCompletionAllowedToolsChoiceType? type, ChatCompletionAllowedTools? allowedTools, }) { return ChatCompletionAllowedToolsChoice(
  type: type ?? this.type,
  allowedTools: allowedTools ?? this.allowedTools,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionAllowedToolsChoice &&
          type == other.type &&
          allowedTools == other.allowedTools; } 
@override int get hashCode { return Object.hash(type, allowedTools); } 
@override String toString() { return 'ChatCompletionAllowedToolsChoice(type: $type, allowedTools: $allowedTools)'; } 
 }
