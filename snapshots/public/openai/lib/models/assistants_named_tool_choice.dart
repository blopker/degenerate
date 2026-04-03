// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'assistants_named_tool_choice_function.dart';/// The type of the tool. If type is `function`, the function name must be set
@immutable final class AssistantsNamedToolChoiceType {const AssistantsNamedToolChoiceType._(this.value);

factory AssistantsNamedToolChoiceType.fromJson(String json) { return switch (json) {
  'function' => function,
  'code_interpreter' => codeInterpreter,
  'file_search' => fileSearch,
  _ => AssistantsNamedToolChoiceType._(json),
}; }

static const AssistantsNamedToolChoiceType function = AssistantsNamedToolChoiceType._('function');

static const AssistantsNamedToolChoiceType codeInterpreter = AssistantsNamedToolChoiceType._('code_interpreter');

static const AssistantsNamedToolChoiceType fileSearch = AssistantsNamedToolChoiceType._('file_search');

static const List<AssistantsNamedToolChoiceType> values = [function, codeInterpreter, fileSearch];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AssistantsNamedToolChoiceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AssistantsNamedToolChoiceType($value)'; } 
 }
/// Specifies a tool the model should use. Use to force the model to call a specific tool.
@immutable final class AssistantsNamedToolChoice {const AssistantsNamedToolChoice({required this.type, this.function, });

factory AssistantsNamedToolChoice.fromJson(Map<String, dynamic> json) { return AssistantsNamedToolChoice(
  type: AssistantsNamedToolChoiceType.fromJson(json['type'] as String),
  function: json['function'] != null ? AssistantsNamedToolChoiceFunction.fromJson(json['function'] as Map<String, dynamic>) : null,
); }

/// The type of the tool. If type is `function`, the function name must be set
final AssistantsNamedToolChoiceType type;

final AssistantsNamedToolChoiceFunction? function;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (function != null) 'function': function?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
AssistantsNamedToolChoice copyWith({AssistantsNamedToolChoiceType? type, AssistantsNamedToolChoiceFunction Function()? function, }) { return AssistantsNamedToolChoice(
  type: type ?? this.type,
  function: function != null ? function() : this.function,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AssistantsNamedToolChoice &&
          type == other.type &&
          function == other.function; } 
@override int get hashCode { return Object.hash(type, function); } 
@override String toString() { return 'AssistantsNamedToolChoice(type: $type, function: $function)'; } 
 }
