// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_tool_choice_variant1_allowed_tools.dart';import 'messages51_tool_choice_variant1_custom.dart';import 'messages51_tool_choice_variant1_function.dart';@immutable final class Messages51ToolChoiceVariant1Variant1 {const Messages51ToolChoiceVariant1Variant1._(this.value);

factory Messages51ToolChoiceVariant1Variant1.fromJson(String json) { return switch (json) {
  'none' => none,
  'auto' => auto,
  'required' => $required,
  _ => Messages51ToolChoiceVariant1Variant1._(json),
}; }

static const Messages51ToolChoiceVariant1Variant1 none = Messages51ToolChoiceVariant1Variant1._('none');

static const Messages51ToolChoiceVariant1Variant1 auto = Messages51ToolChoiceVariant1Variant1._('auto');

static const Messages51ToolChoiceVariant1Variant1 $required = Messages51ToolChoiceVariant1Variant1._('required');

static const List<Messages51ToolChoiceVariant1Variant1> values = [none, auto, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51ToolChoiceVariant1Variant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51ToolChoiceVariant1Variant1($value)'; } 
 }
typedef Messages51ToolChoiceVariant1 = OneOf4<Messages51ToolChoiceVariant1Variant1,Messages51ToolChoiceVariant1Function,Messages51ToolChoiceVariant1Custom,Messages51ToolChoiceVariant1AllowedTools>;
