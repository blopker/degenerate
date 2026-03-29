// GENERATED CODE - DO NOT MODIFY BY HAND

import 'chat_completion_named_tool_choice_function.dart';/// For function calling, the type is always `function`.
final class ChatCompletionNamedToolChoiceType {const ChatCompletionNamedToolChoiceType._(this.value);

factory ChatCompletionNamedToolChoiceType.fromJson(String json) { return switch (json) {
  'function' => function,
  _ => ChatCompletionNamedToolChoiceType._(json),
}; }

static const ChatCompletionNamedToolChoiceType function = ChatCompletionNamedToolChoiceType._('function');

static const List<ChatCompletionNamedToolChoiceType> values = [function];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionNamedToolChoiceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChatCompletionNamedToolChoiceType($value)'; } 
 }
/// Specifies a tool the model should use. Use to force the model to call a specific function.
final class ChatCompletionNamedToolChoice {const ChatCompletionNamedToolChoice({required this.type, required this.function, });

factory ChatCompletionNamedToolChoice.fromJson(Map<String, dynamic> json) { return ChatCompletionNamedToolChoice(
  type: ChatCompletionNamedToolChoiceType.fromJson(json['type'] as String),
  function: ChatCompletionNamedToolChoiceFunction.fromJson(json['function'] as Map<String, dynamic>),
); }

/// For function calling, the type is always `function`.
final ChatCompletionNamedToolChoiceType type;

final ChatCompletionNamedToolChoiceFunction function;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'function': function.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('function'); } 
ChatCompletionNamedToolChoice copyWith({ChatCompletionNamedToolChoiceType? type, ChatCompletionNamedToolChoiceFunction? function, }) { return ChatCompletionNamedToolChoice(
  type: type ?? this.type,
  function: function ?? this.function,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionNamedToolChoice &&
          type == other.type &&
          function == other.function; } 
@override int get hashCode { return Object.hash(type, function); } 
@override String toString() { return 'ChatCompletionNamedToolChoice(type: $type, function: $function)'; } 
 }
