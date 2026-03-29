// GENERATED CODE - DO NOT MODIFY BY HAND

import 'wor_describe_workflow_instance_response_result_steps_step_config_retries.dart';final class WorDescribeWorkflowInstanceResponseResultStepsStepConfig {const WorDescribeWorkflowInstanceResponseResultStepsStepConfig({required this.retries, required this.timeout, });

factory WorDescribeWorkflowInstanceResponseResultStepsStepConfig.fromJson(Map<String, dynamic> json) { return WorDescribeWorkflowInstanceResponseResultStepsStepConfig(
  retries: WorDescribeWorkflowInstanceResponseResultStepsStepConfigRetries.fromJson(json['retries'] as Map<String, dynamic>),
  timeout: json['timeout'],
); }

final WorDescribeWorkflowInstanceResponseResultStepsStepConfigRetries retries;

/// Specifies the timeout duration.
/// 
/// Specifies the timeout duration.
/// 
/// One of: String, double
final dynamic timeout;

Map<String, dynamic> toJson() { return {
  'retries': retries.toJson(),
  'timeout': timeout,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('retries') &&
      json.containsKey('timeout'); } 
WorDescribeWorkflowInstanceResponseResultStepsStepConfig copyWith({WorDescribeWorkflowInstanceResponseResultStepsStepConfigRetries? retries, dynamic timeout, }) { return WorDescribeWorkflowInstanceResponseResultStepsStepConfig(
  retries: retries ?? this.retries,
  timeout: timeout ?? this.timeout,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorDescribeWorkflowInstanceResponseResultStepsStepConfig &&
          retries == other.retries &&
          timeout == other.timeout; } 
@override int get hashCode { return Object.hash(retries, timeout); } 
@override String toString() { return 'WorDescribeWorkflowInstanceResponseResultStepsStepConfig(retries: $retries, timeout: $timeout)'; } 
 }
