// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorCreateOrModifyWorkflowRequestLimits {const WorCreateOrModifyWorkflowRequestLimits({this.steps});

factory WorCreateOrModifyWorkflowRequestLimits.fromJson(Map<String, dynamic> json) { return WorCreateOrModifyWorkflowRequestLimits(
  steps: json['steps'] != null ? (json['steps'] as num).toInt() : null,
); }

final int? steps;

Map<String, dynamic> toJson() { return {
  'steps': ?steps,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'steps'}.contains(key)); } 
WorCreateOrModifyWorkflowRequestLimits copyWith({int Function()? steps}) { return WorCreateOrModifyWorkflowRequestLimits(
  steps: steps != null ? steps() : this.steps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorCreateOrModifyWorkflowRequestLimits &&
          steps == other.steps; } 
@override int get hashCode { return steps.hashCode; } 
@override String toString() { return 'WorCreateOrModifyWorkflowRequestLimits(steps: $steps)'; } 
 }
