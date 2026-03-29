// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_target_criteria_base.dart';/// Contains the targets secured by the application.
final class AccessAppRespEmbeddedTargetCriteriaSelfHosted {const AccessAppRespEmbeddedTargetCriteriaSelfHosted({this.targetCriteria});

factory AccessAppRespEmbeddedTargetCriteriaSelfHosted.fromJson(Map<String, dynamic> json) { return AccessAppRespEmbeddedTargetCriteriaSelfHosted(
  targetCriteria: (json['target_criteria'] as List<dynamic>?)?.map((e) => AccessTargetCriteriaBase.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessTargetCriteriaBase>? targetCriteria;

Map<String, dynamic> toJson() { return {
  if (targetCriteria != null) 'target_criteria': targetCriteria?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessAppRespEmbeddedTargetCriteriaSelfHosted copyWith({List<AccessTargetCriteriaBase> Function()? targetCriteria}) { return AccessAppRespEmbeddedTargetCriteriaSelfHosted(
  targetCriteria: targetCriteria != null ? targetCriteria() : this.targetCriteria,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppRespEmbeddedTargetCriteriaSelfHosted &&
          listEquals(targetCriteria, other.targetCriteria); } 
@override int get hashCode { return Object.hashAll(targetCriteria ?? const []).hashCode; } 
@override String toString() { return 'AccessAppRespEmbeddedTargetCriteriaSelfHosted(targetCriteria: $targetCriteria)'; } 
 }
