// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_target_criteria_self_hosted_app.dart';/// Contains the targets secured by the application.
final class AccessAppRespEmbeddedTargetCriteriaSelfHosted {const AccessAppRespEmbeddedTargetCriteriaSelfHosted({this.targetCriteria});

factory AccessAppRespEmbeddedTargetCriteriaSelfHosted.fromJson(Map<String, dynamic> json) { return AccessAppRespEmbeddedTargetCriteriaSelfHosted(
  targetCriteria: (json['target_criteria'] as List<dynamic>?)?.map((e) => AccessTargetCriteriaSelfHostedApp.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessTargetCriteriaSelfHostedApp>? targetCriteria;

Map<String, dynamic> toJson() { return {
  if (targetCriteria != null) 'target_criteria': targetCriteria?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'target_criteria'}.contains(key)); } 
AccessAppRespEmbeddedTargetCriteriaSelfHosted copyWith({List<AccessTargetCriteriaSelfHostedApp> Function()? targetCriteria}) { return AccessAppRespEmbeddedTargetCriteriaSelfHosted(
  targetCriteria: targetCriteria != null ? targetCriteria() : this.targetCriteria,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppRespEmbeddedTargetCriteriaSelfHosted &&
          listEquals(targetCriteria, other.targetCriteria); } 
@override int get hashCode { return Object.hashAll(targetCriteria ?? const []).hashCode; } 
@override String toString() { return 'AccessAppRespEmbeddedTargetCriteriaSelfHosted(targetCriteria: $targetCriteria)'; } 
 }
