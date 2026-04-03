// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_tool_choice_variant1_allowed_tools_allowed_tools.dart';@immutable final class Messages51ToolChoiceVariant1AllowedToolsType {const Messages51ToolChoiceVariant1AllowedToolsType._(this.value);

factory Messages51ToolChoiceVariant1AllowedToolsType.fromJson(String json) { return switch (json) {
  'allowed_tools' => allowedTools,
  _ => Messages51ToolChoiceVariant1AllowedToolsType._(json),
}; }

static const Messages51ToolChoiceVariant1AllowedToolsType allowedTools = Messages51ToolChoiceVariant1AllowedToolsType._('allowed_tools');

static const List<Messages51ToolChoiceVariant1AllowedToolsType> values = [allowedTools];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51ToolChoiceVariant1AllowedToolsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51ToolChoiceVariant1AllowedToolsType($value)'; } 
 }
/// Constrain to an allowed subset of tools.
@immutable final class Messages51ToolChoiceVariant1AllowedTools {const Messages51ToolChoiceVariant1AllowedTools({required this.allowedTools, required this.type, });

factory Messages51ToolChoiceVariant1AllowedTools.fromJson(Map<String, dynamic> json) { return Messages51ToolChoiceVariant1AllowedTools(
  allowedTools: Messages51ToolChoiceVariant1AllowedToolsAllowedTools.fromJson(json['allowed_tools'] as Map<String, dynamic>),
  type: Messages51ToolChoiceVariant1AllowedToolsType.fromJson(json['type'] as String),
); }

final Messages51ToolChoiceVariant1AllowedToolsAllowedTools allowedTools;

final Messages51ToolChoiceVariant1AllowedToolsType type;

Map<String, dynamic> toJson() { return {
  'allowed_tools': allowedTools.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('allowed_tools') &&
      json.containsKey('type'); } 
Messages51ToolChoiceVariant1AllowedTools copyWith({Messages51ToolChoiceVariant1AllowedToolsAllowedTools? allowedTools, Messages51ToolChoiceVariant1AllowedToolsType? type, }) { return Messages51ToolChoiceVariant1AllowedTools(
  allowedTools: allowedTools ?? this.allowedTools,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51ToolChoiceVariant1AllowedTools &&
          allowedTools == other.allowedTools &&
          type == other.type; } 
@override int get hashCode { return Object.hash(allowedTools, type); } 
@override String toString() { return 'Messages51ToolChoiceVariant1AllowedTools(allowedTools: $allowedTools, type: $type)'; } 
 }
