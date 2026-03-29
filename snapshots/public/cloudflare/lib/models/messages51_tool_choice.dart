// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_tool_choice_variant1.dart';import 'messages51_tool_choice_variant1_allowed_tools.dart';import 'messages51_tool_choice_variant1_custom.dart';import 'messages51_tool_choice_variant1_function.dart';final class Messages51ToolChoice {const Messages51ToolChoice({this.messages51ToolChoiceVariant1});

factory Messages51ToolChoice.fromJson(Map<String, dynamic> json) { return Messages51ToolChoice(
  messages51ToolChoiceVariant1: OneOf4.parse(json, fromA: (v) => Messages51ToolChoiceVariant1Variant1.fromJson(v as String), fromB: (v) => Messages51ToolChoiceVariant1Function.fromJson(v as Map<String, dynamic>), fromC: (v) => Messages51ToolChoiceVariant1Custom.fromJson(v as Map<String, dynamic>), fromD: (v) => Messages51ToolChoiceVariant1AllowedTools.fromJson(v as Map<String, dynamic>),),
); }

final Messages51ToolChoiceVariant1? messages51ToolChoiceVariant1;

/// At least one variant must be present.
bool get isValid { return messages51ToolChoiceVariant1 != null; } 
Map<String, dynamic> toJson() { return {
  if (messages51ToolChoiceVariant1 != null) 'messages51ToolChoiceVariant1': messages51ToolChoiceVariant1!.toJson(),
}; } 
 }
