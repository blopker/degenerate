// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'prompt43_tool_choice_variant1_allowed_tools_allowed_tools.dart';@immutable final class Prompt43ToolChoiceVariant1AllowedToolsType {const Prompt43ToolChoiceVariant1AllowedToolsType._(this.value);

factory Prompt43ToolChoiceVariant1AllowedToolsType.fromJson(String json) { return switch (json) {
  'allowed_tools' => allowedTools,
  _ => Prompt43ToolChoiceVariant1AllowedToolsType._(json),
}; }

static const Prompt43ToolChoiceVariant1AllowedToolsType allowedTools = Prompt43ToolChoiceVariant1AllowedToolsType._('allowed_tools');

static const List<Prompt43ToolChoiceVariant1AllowedToolsType> values = [allowedTools];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt43ToolChoiceVariant1AllowedToolsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt43ToolChoiceVariant1AllowedToolsType($value)'; } 
 }
/// Constrain to an allowed subset of tools.
@immutable final class Prompt43ToolChoiceVariant1AllowedTools {const Prompt43ToolChoiceVariant1AllowedTools({required this.allowedTools, required this.type, });

factory Prompt43ToolChoiceVariant1AllowedTools.fromJson(Map<String, dynamic> json) { return Prompt43ToolChoiceVariant1AllowedTools(
  allowedTools: Prompt43ToolChoiceVariant1AllowedToolsAllowedTools.fromJson(json['allowed_tools'] as Map<String, dynamic>),
  type: Prompt43ToolChoiceVariant1AllowedToolsType.fromJson(json['type'] as String),
); }

final Prompt43ToolChoiceVariant1AllowedToolsAllowedTools allowedTools;

final Prompt43ToolChoiceVariant1AllowedToolsType type;

Map<String, dynamic> toJson() { return {
  'allowed_tools': allowedTools.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('allowed_tools') &&
      json.containsKey('type'); } 
Prompt43ToolChoiceVariant1AllowedTools copyWith({Prompt43ToolChoiceVariant1AllowedToolsAllowedTools? allowedTools, Prompt43ToolChoiceVariant1AllowedToolsType? type, }) { return Prompt43ToolChoiceVariant1AllowedTools(
  allowedTools: allowedTools ?? this.allowedTools,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt43ToolChoiceVariant1AllowedTools &&
          allowedTools == other.allowedTools &&
          type == other.type; } 
@override int get hashCode { return Object.hash(allowedTools, type); } 
@override String toString() { return 'Prompt43ToolChoiceVariant1AllowedTools(allowedTools: $allowedTools, type: $type)'; } 
 }
