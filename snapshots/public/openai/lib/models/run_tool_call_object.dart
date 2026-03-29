// GENERATED CODE - DO NOT MODIFY BY HAND

import 'run_tool_call_object_function.dart';/// The type of tool call the output is required for. For now, this is always `function`.
final class RunToolCallObjectType {const RunToolCallObjectType._(this.value);

factory RunToolCallObjectType.fromJson(String json) { return switch (json) {
  'function' => function,
  _ => RunToolCallObjectType._(json),
}; }

static const RunToolCallObjectType function = RunToolCallObjectType._('function');

static const List<RunToolCallObjectType> values = [function];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunToolCallObjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunToolCallObjectType($value)'; } 
 }
/// Tool call objects
final class RunToolCallObject {const RunToolCallObject({required this.id, required this.type, required this.function, });

factory RunToolCallObject.fromJson(Map<String, dynamic> json) { return RunToolCallObject(
  id: json['id'] as String,
  type: RunToolCallObjectType.fromJson(json['type'] as String),
  function: RunToolCallObjectFunction.fromJson(json['function'] as Map<String, dynamic>),
); }

/// The ID of the tool call. This ID must be referenced when you submit the tool outputs in using the [Submit tool outputs to run](/docs/api-reference/runs/submitToolOutputs) endpoint.
final String id;

/// The type of tool call the output is required for. For now, this is always `function`.
final RunToolCallObjectType type;

/// The function definition.
final RunToolCallObjectFunction function;

Map<String, dynamic> toJson() { return {
  'id': id,
  'type': type.toJson(),
  'function': function.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('type') &&
      json.containsKey('function'); } 
RunToolCallObject copyWith({String? id, RunToolCallObjectType? type, RunToolCallObjectFunction? function, }) { return RunToolCallObject(
  id: id ?? this.id,
  type: type ?? this.type,
  function: function ?? this.function,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunToolCallObject &&
          id == other.id &&
          type == other.type &&
          function == other.function; } 
@override int get hashCode { return Object.hash(id, type, function); } 
@override String toString() { return 'RunToolCallObject(id: $id, type: $type, function: $function)'; } 
 }
