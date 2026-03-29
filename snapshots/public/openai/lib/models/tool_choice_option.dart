// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'assistants_named_tool_choice.dart';/// `none` means the model will not call any tools and instead generates a message. `auto` means the model can pick between generating a message or calling one or more tools. `required` means the model must call one or more tools before responding to the user.
/// 
final class ToolChoiceOptionVariant1 {const ToolChoiceOptionVariant1._(this.value);

factory ToolChoiceOptionVariant1.fromJson(String json) { return switch (json) {
  'none' => none,
  'auto' => auto,
  'required' => $required,
  _ => ToolChoiceOptionVariant1._(json),
}; }

static const ToolChoiceOptionVariant1 none = ToolChoiceOptionVariant1._('none');

static const ToolChoiceOptionVariant1 auto = ToolChoiceOptionVariant1._('auto');

static const ToolChoiceOptionVariant1 $required = ToolChoiceOptionVariant1._('required');

static const List<ToolChoiceOptionVariant1> values = [none, auto, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ToolChoiceOptionVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ToolChoiceOptionVariant1($value)'; } 
 }
typedef ToolChoiceOption = OneOf2<ToolChoiceOptionVariant1,AssistantsNamedToolChoice>;