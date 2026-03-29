// GENERATED CODE - DO NOT MODIFY BY HAND

import 'wor_describe_workflow_instance_response_result_steps_termination_trigger.dart';final class WorDescribeWorkflowInstanceResponseResultStepsTerminationType {const WorDescribeWorkflowInstanceResponseResultStepsTerminationType._(this.value);

factory WorDescribeWorkflowInstanceResponseResultStepsTerminationType.fromJson(String json) { return switch (json) {
  'termination' => termination,
  _ => WorDescribeWorkflowInstanceResponseResultStepsTerminationType._(json),
}; }

static const WorDescribeWorkflowInstanceResponseResultStepsTerminationType termination = WorDescribeWorkflowInstanceResponseResultStepsTerminationType._('termination');

static const List<WorDescribeWorkflowInstanceResponseResultStepsTerminationType> values = [termination];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDescribeWorkflowInstanceResponseResultStepsTerminationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorDescribeWorkflowInstanceResponseResultStepsTerminationType($value)'; } 
 }
final class WorDescribeWorkflowInstanceResponseResultStepsTermination {const WorDescribeWorkflowInstanceResponseResultStepsTermination({required this.trigger, required this.type, });

factory WorDescribeWorkflowInstanceResponseResultStepsTermination.fromJson(Map<String, dynamic> json) { return WorDescribeWorkflowInstanceResponseResultStepsTermination(
  trigger: WorDescribeWorkflowInstanceResponseResultStepsTerminationTrigger.fromJson(json['trigger'] as Map<String, dynamic>),
  type: WorDescribeWorkflowInstanceResponseResultStepsTerminationType.fromJson(json['type'] as String),
); }

final WorDescribeWorkflowInstanceResponseResultStepsTerminationTrigger trigger;

final WorDescribeWorkflowInstanceResponseResultStepsTerminationType type;

Map<String, dynamic> toJson() { return {
  'trigger': trigger.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('trigger') &&
      json.containsKey('type'); } 
WorDescribeWorkflowInstanceResponseResultStepsTermination copyWith({WorDescribeWorkflowInstanceResponseResultStepsTerminationTrigger? trigger, WorDescribeWorkflowInstanceResponseResultStepsTerminationType? type, }) { return WorDescribeWorkflowInstanceResponseResultStepsTermination(
  trigger: trigger ?? this.trigger,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorDescribeWorkflowInstanceResponseResultStepsTermination &&
          trigger == other.trigger &&
          type == other.type; } 
@override int get hashCode { return Object.hash(trigger, type); } 
@override String toString() { return 'WorDescribeWorkflowInstanceResponseResultStepsTermination(trigger: $trigger, type: $type)'; } 
 }
