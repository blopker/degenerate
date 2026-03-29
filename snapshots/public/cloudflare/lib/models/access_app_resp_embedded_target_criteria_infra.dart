// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_target_criteria_base.dart';/// Contains the targets secured by the application.
final class AccessAppRespEmbeddedTargetCriteriaInfra {const AccessAppRespEmbeddedTargetCriteriaInfra({this.targetCriteria});

factory AccessAppRespEmbeddedTargetCriteriaInfra.fromJson(Map<String, dynamic> json) { return AccessAppRespEmbeddedTargetCriteriaInfra(
  targetCriteria: (json['target_criteria'] as List<dynamic>?)?.map((e) => AccessTargetCriteriaBase.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessTargetCriteriaBase>? targetCriteria;

Map<String, dynamic> toJson() { return {
  if (targetCriteria != null) 'target_criteria': targetCriteria?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessAppRespEmbeddedTargetCriteriaInfra copyWith({List<AccessTargetCriteriaBase> Function()? targetCriteria}) { return AccessAppRespEmbeddedTargetCriteriaInfra(
  targetCriteria: targetCriteria != null ? targetCriteria() : this.targetCriteria,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppRespEmbeddedTargetCriteriaInfra &&
          listEquals(targetCriteria, other.targetCriteria); } 
@override int get hashCode { return Object.hashAll(targetCriteria ?? const []).hashCode; } 
@override String toString() { return 'AccessAppRespEmbeddedTargetCriteriaInfra(targetCriteria: $targetCriteria)'; } 
 }
