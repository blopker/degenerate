// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Always `logs`.
@immutable final class RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType {const RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType._(this.value);

factory RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType.fromJson(String json) { return switch (json) {
  'logs' => logs,
  _ => RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType._(json),
}; }

static const RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType logs = RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType._('logs');

static const List<RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType> values = [logs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType($value)'; } 
 }
/// Text output from the Code Interpreter tool call as part of a run step.
@immutable final class RunStepDeltaStepDetailsToolCallsCodeOutputLogsObject {const RunStepDeltaStepDetailsToolCallsCodeOutputLogsObject({required this.index, required this.type, this.logs, });

factory RunStepDeltaStepDetailsToolCallsCodeOutputLogsObject.fromJson(Map<String, dynamic> json) { return RunStepDeltaStepDetailsToolCallsCodeOutputLogsObject(
  index: (json['index'] as num).toInt(),
  type: RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType.fromJson(json['type'] as String),
  logs: json['logs'] as String?,
); }

/// The index of the output in the outputs array.
final int index;

/// Always `logs`.
final RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType type;

/// The text output from the Code Interpreter tool call.
final String? logs;

Map<String, dynamic> toJson() { return {
  'index': index,
  'type': type.toJson(),
  'logs': ?logs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('index') && json['index'] is num &&
      json.containsKey('type'); } 
RunStepDeltaStepDetailsToolCallsCodeOutputLogsObject copyWith({int? index, RunStepDeltaStepDetailsToolCallsCodeOutputLogsObjectType? type, String Function()? logs, }) { return RunStepDeltaStepDetailsToolCallsCodeOutputLogsObject(
  index: index ?? this.index,
  type: type ?? this.type,
  logs: logs != null ? logs() : this.logs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDeltaStepDetailsToolCallsCodeOutputLogsObject &&
          index == other.index &&
          type == other.type &&
          logs == other.logs; } 
@override int get hashCode { return Object.hash(index, type, logs); } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsCodeOutputLogsObject(index: $index, type: $type, logs: $logs)'; } 
 }
