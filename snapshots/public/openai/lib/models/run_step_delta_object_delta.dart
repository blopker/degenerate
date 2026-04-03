// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'run_step_delta_object_delta_step_details.dart';import 'run_step_delta_step_details_message_creation_object.dart';import 'run_step_delta_step_details_tool_calls_object.dart';/// The delta containing the fields that have changed on the run step.
@immutable final class RunStepDeltaObjectDelta {const RunStepDeltaObjectDelta({this.stepDetails});

factory RunStepDeltaObjectDelta.fromJson(Map<String, dynamic> json) { return RunStepDeltaObjectDelta(
  stepDetails: json['step_details'] != null ? OneOf2.parse(json['step_details'], fromA: (v) => RunStepDeltaStepDetailsMessageCreationObject.fromJson(v as Map<String, dynamic>), fromB: (v) => RunStepDeltaStepDetailsToolCallsObject.fromJson(v as Map<String, dynamic>),) : null,
); }

/// The details of the run step.
final RunStepDeltaObjectDeltaStepDetails? stepDetails;

Map<String, dynamic> toJson() { return {
  if (stepDetails != null) 'step_details': stepDetails?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'step_details'}.contains(key)); } 
RunStepDeltaObjectDelta copyWith({RunStepDeltaObjectDeltaStepDetails Function()? stepDetails}) { return RunStepDeltaObjectDelta(
  stepDetails: stepDetails != null ? stepDetails() : this.stepDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDeltaObjectDelta &&
          stepDetails == other.stepDetails; } 
@override int get hashCode { return stepDetails.hashCode; } 
@override String toString() { return 'RunStepDeltaObjectDelta(stepDetails: $stepDetails)'; } 
 }
