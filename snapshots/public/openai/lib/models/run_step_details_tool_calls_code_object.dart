// GENERATED CODE - DO NOT MODIFY BY HAND

import 'run_step_details_tool_calls_code_object_code_interpreter.dart';/// The type of tool call. This is always going to be `code_interpreter` for this type of tool call.
final class RunStepDetailsToolCallsCodeObjectType {const RunStepDetailsToolCallsCodeObjectType._(this.value);

factory RunStepDetailsToolCallsCodeObjectType.fromJson(String json) { return switch (json) {
  'code_interpreter' => codeInterpreter,
  _ => RunStepDetailsToolCallsCodeObjectType._(json),
}; }

static const RunStepDetailsToolCallsCodeObjectType codeInterpreter = RunStepDetailsToolCallsCodeObjectType._('code_interpreter');

static const List<RunStepDetailsToolCallsCodeObjectType> values = [codeInterpreter];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStepDetailsToolCallsCodeObjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStepDetailsToolCallsCodeObjectType($value)'; } 
 }
/// Details of the Code Interpreter tool call the run step was involved in.
final class RunStepDetailsToolCallsCodeObject {const RunStepDetailsToolCallsCodeObject({required this.id, required this.type, required this.codeInterpreter, });

factory RunStepDetailsToolCallsCodeObject.fromJson(Map<String, dynamic> json) { return RunStepDetailsToolCallsCodeObject(
  id: json['id'] as String,
  type: RunStepDetailsToolCallsCodeObjectType.fromJson(json['type'] as String),
  codeInterpreter: RunStepDetailsToolCallsCodeObjectCodeInterpreter.fromJson(json['code_interpreter'] as Map<String, dynamic>),
); }

/// The ID of the tool call.
final String id;

/// The type of tool call. This is always going to be `code_interpreter` for this type of tool call.
final RunStepDetailsToolCallsCodeObjectType type;

/// The Code Interpreter tool call definition.
final RunStepDetailsToolCallsCodeObjectCodeInterpreter codeInterpreter;

Map<String, dynamic> toJson() { return {
  'id': id,
  'type': type.toJson(),
  'code_interpreter': codeInterpreter.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('type') &&
      json.containsKey('code_interpreter'); } 
RunStepDetailsToolCallsCodeObject copyWith({String? id, RunStepDetailsToolCallsCodeObjectType? type, RunStepDetailsToolCallsCodeObjectCodeInterpreter? codeInterpreter, }) { return RunStepDetailsToolCallsCodeObject(
  id: id ?? this.id,
  type: type ?? this.type,
  codeInterpreter: codeInterpreter ?? this.codeInterpreter,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDetailsToolCallsCodeObject &&
          id == other.id &&
          type == other.type &&
          codeInterpreter == other.codeInterpreter; } 
@override int get hashCode { return Object.hash(id, type, codeInterpreter); } 
@override String toString() { return 'RunStepDetailsToolCallsCodeObject(id: $id, type: $type, codeInterpreter: $codeInterpreter)'; } 
 }
