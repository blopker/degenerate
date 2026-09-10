// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_describe_workflow_instance_response_result_steps_sleep.dart';import 'wor_describe_workflow_instance_response_result_steps_step.dart';import 'wor_describe_workflow_instance_response_result_steps_termination.dart';import 'wor_describe_workflow_instance_response_result_steps_wait_for_event.dart';
@immutable
final class WorDescribeWorkflowInstanceResponseResultSteps {
  const WorDescribeWorkflowInstanceResponseResultSteps({this.worDescribeWorkflowInstanceResponseResultStepsStep = const Omittable.absent(),
this.worDescribeWorkflowInstanceResponseResultStepsSleep = const Omittable.absent(),
this.worDescribeWorkflowInstanceResponseResultStepsTermination = const Omittable.absent(),
this.worDescribeWorkflowInstanceResponseResultStepsWaitForEvent = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const WorDescribeWorkflowInstanceResponseResultSteps._({required this.rawValue, required this.worDescribeWorkflowInstanceResponseResultStepsStep,
required this.worDescribeWorkflowInstanceResponseResultStepsSleep,
required this.worDescribeWorkflowInstanceResponseResultStepsTermination,
required this.worDescribeWorkflowInstanceResponseResultStepsWaitForEvent,});
  factory WorDescribeWorkflowInstanceResponseResultSteps.fromJson(Object? json) => WorDescribeWorkflowInstanceResponseResultSteps._(
    rawValue: Omittable(json),
    worDescribeWorkflowInstanceResponseResultStepsStep: parseAnyOfVariant<WorDescribeWorkflowInstanceResponseResultStepsStep>(json, (value) => WorDescribeWorkflowInstanceResponseResultStepsStep.fromJson(value! as Map<String, dynamic>)),
worDescribeWorkflowInstanceResponseResultStepsSleep: parseAnyOfVariant<WorDescribeWorkflowInstanceResponseResultStepsSleep>(json, (value) => WorDescribeWorkflowInstanceResponseResultStepsSleep.fromJson(value! as Map<String, dynamic>)),
worDescribeWorkflowInstanceResponseResultStepsTermination: parseAnyOfVariant<WorDescribeWorkflowInstanceResponseResultStepsTermination>(json, (value) => WorDescribeWorkflowInstanceResponseResultStepsTermination.fromJson(value! as Map<String, dynamic>)),
worDescribeWorkflowInstanceResponseResultStepsWaitForEvent: parseAnyOfVariant<WorDescribeWorkflowInstanceResponseResultStepsWaitForEvent>(json, (value) => WorDescribeWorkflowInstanceResponseResultStepsWaitForEvent.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<WorDescribeWorkflowInstanceResponseResultStepsStep> worDescribeWorkflowInstanceResponseResultStepsStep;
final Omittable<WorDescribeWorkflowInstanceResponseResultStepsSleep> worDescribeWorkflowInstanceResponseResultStepsSleep;
final Omittable<WorDescribeWorkflowInstanceResponseResultStepsTermination> worDescribeWorkflowInstanceResponseResultStepsTermination;
final Omittable<WorDescribeWorkflowInstanceResponseResultStepsWaitForEvent> worDescribeWorkflowInstanceResponseResultStepsWaitForEvent;

  /// Whether at least one known variant matched.
  bool get isValid => worDescribeWorkflowInstanceResponseResultStepsStep.isPresent || worDescribeWorkflowInstanceResponseResultStepsSleep.isPresent || worDescribeWorkflowInstanceResponseResultStepsTermination.isPresent || worDescribeWorkflowInstanceResponseResultStepsWaitForEvent.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (worDescribeWorkflowInstanceResponseResultStepsStep.isPresent) worDescribeWorkflowInstanceResponseResultStepsStep.value?.toJson(),
if (worDescribeWorkflowInstanceResponseResultStepsSleep.isPresent) worDescribeWorkflowInstanceResponseResultStepsSleep.value?.toJson(),
if (worDescribeWorkflowInstanceResponseResultStepsTermination.isPresent) worDescribeWorkflowInstanceResponseResultStepsTermination.value?.toJson(),
if (worDescribeWorkflowInstanceResponseResultStepsWaitForEvent.isPresent) worDescribeWorkflowInstanceResponseResultStepsWaitForEvent.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is WorDescribeWorkflowInstanceResponseResultSteps && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'WorDescribeWorkflowInstanceResponseResultSteps(${toJson()})';
}
