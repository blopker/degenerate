// GENERATED CODE - DO NOT MODIFY BY HAND

import 'run_object_required_action_submit_tool_outputs.dart';/// For now, this is always `submit_tool_outputs`.
final class RunObjectRequiredActionType {const RunObjectRequiredActionType._(this.value);

factory RunObjectRequiredActionType.fromJson(String json) { return switch (json) {
  'submit_tool_outputs' => submitToolOutputs,
  _ => RunObjectRequiredActionType._(json),
}; }

static const RunObjectRequiredActionType submitToolOutputs = RunObjectRequiredActionType._('submit_tool_outputs');

static const List<RunObjectRequiredActionType> values = [submitToolOutputs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunObjectRequiredActionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunObjectRequiredActionType($value)'; } 
 }
/// Details on the action required to continue the run. Will be `null` if no action is required.
final class RunObjectRequiredAction {const RunObjectRequiredAction({required this.type, required this.submitToolOutputs, });

factory RunObjectRequiredAction.fromJson(Map<String, dynamic> json) { return RunObjectRequiredAction(
  type: RunObjectRequiredActionType.fromJson(json['type'] as String),
  submitToolOutputs: RunObjectRequiredActionSubmitToolOutputs.fromJson(json['submit_tool_outputs'] as Map<String, dynamic>),
); }

/// For now, this is always `submit_tool_outputs`.
final RunObjectRequiredActionType type;

/// Details on the tool outputs needed for this run to continue.
final RunObjectRequiredActionSubmitToolOutputs submitToolOutputs;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'submit_tool_outputs': submitToolOutputs.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('submit_tool_outputs'); } 
RunObjectRequiredAction copyWith({RunObjectRequiredActionType? type, RunObjectRequiredActionSubmitToolOutputs? submitToolOutputs, }) { return RunObjectRequiredAction(
  type: type ?? this.type,
  submitToolOutputs: submitToolOutputs ?? this.submitToolOutputs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunObjectRequiredAction &&
          type == other.type &&
          submitToolOutputs == other.submitToolOutputs; } 
@override int get hashCode { return Object.hash(type, submitToolOutputs); } 
@override String toString() { return 'RunObjectRequiredAction(type: $type, submitToolOutputs: $submitToolOutputs)'; } 
 }
