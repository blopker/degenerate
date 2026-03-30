// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorListWorkflowVersionsResponseResultLimits {const WorListWorkflowVersionsResponseResultLimits({this.steps});

factory WorListWorkflowVersionsResponseResultLimits.fromJson(Map<String, dynamic> json) { return WorListWorkflowVersionsResponseResultLimits(
  steps: json['steps'] != null ? (json['steps'] as num).toInt() : null,
); }

final int? steps;

Map<String, dynamic> toJson() { return {
  'steps': ?steps,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'steps'}.contains(key)); } 
WorListWorkflowVersionsResponseResultLimits copyWith({int Function()? steps}) { return WorListWorkflowVersionsResponseResultLimits(
  steps: steps != null ? steps() : this.steps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorListWorkflowVersionsResponseResultLimits &&
          steps == other.steps; } 
@override int get hashCode { return steps.hashCode; } 
@override String toString() { return 'WorListWorkflowVersionsResponseResultLimits(steps: $steps)'; } 
 }
