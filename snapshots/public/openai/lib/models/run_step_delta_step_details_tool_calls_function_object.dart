// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'run_step_delta_step_details_tool_calls_function_object_function.dart';/// The type of tool call. This is always going to be `function` for this type of tool call.
@immutable final class RunStepDeltaStepDetailsToolCallsFunctionObjectType {const RunStepDeltaStepDetailsToolCallsFunctionObjectType._(this.value);

factory RunStepDeltaStepDetailsToolCallsFunctionObjectType.fromJson(String json) { return switch (json) {
  'function' => function,
  _ => RunStepDeltaStepDetailsToolCallsFunctionObjectType._(json),
}; }

static const RunStepDeltaStepDetailsToolCallsFunctionObjectType function = RunStepDeltaStepDetailsToolCallsFunctionObjectType._('function');

static const List<RunStepDeltaStepDetailsToolCallsFunctionObjectType> values = [function];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStepDeltaStepDetailsToolCallsFunctionObjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsFunctionObjectType($value)'; } 
 }
@immutable final class RunStepDeltaStepDetailsToolCallsFunctionObject {const RunStepDeltaStepDetailsToolCallsFunctionObject({required this.index, required this.type, this.id, this.function, });

factory RunStepDeltaStepDetailsToolCallsFunctionObject.fromJson(Map<String, dynamic> json) { return RunStepDeltaStepDetailsToolCallsFunctionObject(
  index: (json['index'] as num).toInt(),
  id: json['id'] as String?,
  type: RunStepDeltaStepDetailsToolCallsFunctionObjectType.fromJson(json['type'] as String),
  function: json['function'] != null ? RunStepDeltaStepDetailsToolCallsFunctionObjectFunction.fromJson(json['function'] as Map<String, dynamic>) : null,
); }

/// The index of the tool call in the tool calls array.
final int index;

/// The ID of the tool call object.
final String? id;

/// The type of tool call. This is always going to be `function` for this type of tool call.
final RunStepDeltaStepDetailsToolCallsFunctionObjectType type;

/// The definition of the function that was called.
final RunStepDeltaStepDetailsToolCallsFunctionObjectFunction? function;

Map<String, dynamic> toJson() { return {
  'index': index,
  'id': ?id,
  'type': type.toJson(),
  if (function != null) 'function': function?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('index') && json['index'] is num &&
      json.containsKey('type'); } 
RunStepDeltaStepDetailsToolCallsFunctionObject copyWith({int? index, String Function()? id, RunStepDeltaStepDetailsToolCallsFunctionObjectType? type, RunStepDeltaStepDetailsToolCallsFunctionObjectFunction Function()? function, }) { return RunStepDeltaStepDetailsToolCallsFunctionObject(
  index: index ?? this.index,
  id: id != null ? id() : this.id,
  type: type ?? this.type,
  function: function != null ? function() : this.function,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDeltaStepDetailsToolCallsFunctionObject &&
          index == other.index &&
          id == other.id &&
          type == other.type &&
          function == other.function; } 
@override int get hashCode { return Object.hash(index, id, type, function); } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsFunctionObject(index: $index, id: $id, type: $type, function: $function)'; } 
 }
