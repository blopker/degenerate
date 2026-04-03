// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_lifecycle_age_condition.dart';import 'r2_lifecycle_date_condition.dart';import 'r2_lifecycle_rule_delete_objects_transition_condition.dart';/// Transition to delete objects.
@immutable final class R2LifecycleRuleDeleteObjectsTransition {const R2LifecycleRuleDeleteObjectsTransition({this.condition});

factory R2LifecycleRuleDeleteObjectsTransition.fromJson(Map<String, dynamic> json) { return R2LifecycleRuleDeleteObjectsTransition(
  condition: json['condition'] != null ? OneOf2.parse(json['condition'], fromA: (v) => R2LifecycleAgeCondition.fromJson(v as Map<String, dynamic>), fromB: (v) => R2LifecycleDateCondition.fromJson(v as Map<String, dynamic>),) : null,
); }

final R2LifecycleRuleDeleteObjectsTransitionCondition? condition;

Map<String, dynamic> toJson() { return {
  if (condition != null) 'condition': condition?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'condition'}.contains(key)); } 
R2LifecycleRuleDeleteObjectsTransition copyWith({R2LifecycleRuleDeleteObjectsTransitionCondition Function()? condition}) { return R2LifecycleRuleDeleteObjectsTransition(
  condition: condition != null ? condition() : this.condition,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2LifecycleRuleDeleteObjectsTransition &&
          condition == other.condition; } 
@override int get hashCode { return condition.hashCode; } 
@override String toString() { return 'R2LifecycleRuleDeleteObjectsTransition(condition: $condition)'; } 
 }
