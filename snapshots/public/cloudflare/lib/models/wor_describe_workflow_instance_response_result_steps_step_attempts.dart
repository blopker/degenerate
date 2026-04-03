// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_describe_workflow_instance_response_result_steps_step_attempts_error.dart';@immutable final class WorDescribeWorkflowInstanceResponseResultStepsStepAttempts {const WorDescribeWorkflowInstanceResponseResultStepsStepAttempts({required this.end, required this.error, required this.start, required this.success, });

factory WorDescribeWorkflowInstanceResponseResultStepsStepAttempts.fromJson(Map<String, dynamic> json) { return WorDescribeWorkflowInstanceResponseResultStepsStepAttempts(
  end: json['end'] != null ? DateTime.parse(json['end'] as String) : null,
  error: json['error'] != null ? WorDescribeWorkflowInstanceResponseResultStepsStepAttemptsError.fromJson(json['error'] as Map<String, dynamic>) : null,
  start: DateTime.parse(json['start'] as String),
  success: json['success'] as bool?,
); }

final DateTime? end;

final WorDescribeWorkflowInstanceResponseResultStepsStepAttemptsError? error;

final DateTime start;

final bool? success;

Map<String, dynamic> toJson() { return {
  if (end != null) 'end': end?.toIso8601String(),
  if (error != null) 'error': error?.toJson(),
  'start': start.toIso8601String(),
  'success': ?success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end') && json['end'] is String &&
      json.containsKey('error') &&
      json.containsKey('start') && json['start'] is String &&
      json.containsKey('success') && json['success'] is bool; } 
WorDescribeWorkflowInstanceResponseResultStepsStepAttempts copyWith({DateTime? Function()? end, WorDescribeWorkflowInstanceResponseResultStepsStepAttemptsError? Function()? error, DateTime? start, bool? Function()? success, }) { return WorDescribeWorkflowInstanceResponseResultStepsStepAttempts(
  end: end != null ? end() : this.end,
  error: error != null ? error() : this.error,
  start: start ?? this.start,
  success: success != null ? success() : this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorDescribeWorkflowInstanceResponseResultStepsStepAttempts &&
          end == other.end &&
          error == other.error &&
          start == other.start &&
          success == other.success; } 
@override int get hashCode { return Object.hash(end, error, start, success); } 
@override String toString() { return 'WorDescribeWorkflowInstanceResponseResultStepsStepAttempts(end: $end, error: $error, start: $start, success: $success)'; } 
 }
