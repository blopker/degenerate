// GENERATED CODE - DO NOT MODIFY BY HAND

import 'run_step_delta_step_details_tool_calls_code_object_code_interpreter.dart';/// The type of tool call. This is always going to be `code_interpreter` for this type of tool call.
final class RunStepDeltaStepDetailsToolCallsCodeObjectType {const RunStepDeltaStepDetailsToolCallsCodeObjectType._(this.value);

factory RunStepDeltaStepDetailsToolCallsCodeObjectType.fromJson(String json) { return switch (json) {
  'code_interpreter' => codeInterpreter,
  _ => RunStepDeltaStepDetailsToolCallsCodeObjectType._(json),
}; }

static const RunStepDeltaStepDetailsToolCallsCodeObjectType codeInterpreter = RunStepDeltaStepDetailsToolCallsCodeObjectType._('code_interpreter');

static const List<RunStepDeltaStepDetailsToolCallsCodeObjectType> values = [codeInterpreter];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStepDeltaStepDetailsToolCallsCodeObjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsCodeObjectType($value)'; } 
 }
/// Details of the Code Interpreter tool call the run step was involved in.
final class RunStepDeltaStepDetailsToolCallsCodeObject {const RunStepDeltaStepDetailsToolCallsCodeObject({required this.index, this.id, required this.type, this.codeInterpreter, });

factory RunStepDeltaStepDetailsToolCallsCodeObject.fromJson(Map<String, dynamic> json) { return RunStepDeltaStepDetailsToolCallsCodeObject(
  index: (json['index'] as num).toInt(),
  id: json['id'] as String?,
  type: RunStepDeltaStepDetailsToolCallsCodeObjectType.fromJson(json['type'] as String),
  codeInterpreter: json['code_interpreter'] != null ? RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreter.fromJson(json['code_interpreter'] as Map<String, dynamic>) : null,
); }

/// The index of the tool call in the tool calls array.
final int index;

/// The ID of the tool call.
final String? id;

/// The type of tool call. This is always going to be `code_interpreter` for this type of tool call.
final RunStepDeltaStepDetailsToolCallsCodeObjectType type;

/// The Code Interpreter tool call definition.
final RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreter? codeInterpreter;

Map<String, dynamic> toJson() { return {
  'index': index,
  'id': ?id,
  'type': type.toJson(),
  if (codeInterpreter != null) 'code_interpreter': codeInterpreter?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('index') && json['index'] is num &&
      json.containsKey('type'); } 
RunStepDeltaStepDetailsToolCallsCodeObject copyWith({int? index, String Function()? id, RunStepDeltaStepDetailsToolCallsCodeObjectType? type, RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreter Function()? codeInterpreter, }) { return RunStepDeltaStepDetailsToolCallsCodeObject(
  index: index ?? this.index,
  id: id != null ? id() : this.id,
  type: type ?? this.type,
  codeInterpreter: codeInterpreter != null ? codeInterpreter() : this.codeInterpreter,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDeltaStepDetailsToolCallsCodeObject &&
          index == other.index &&
          id == other.id &&
          type == other.type &&
          codeInterpreter == other.codeInterpreter; } 
@override int get hashCode { return Object.hash(index, id, type, codeInterpreter); } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsCodeObject(index: $index, id: $id, type: $type, codeInterpreter: $codeInterpreter)'; } 
 }
