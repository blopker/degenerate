// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_lifecycle_rule.dart';final class R2PutBucketLifecycleConfigurationRequest {const R2PutBucketLifecycleConfigurationRequest({this.rules});

factory R2PutBucketLifecycleConfigurationRequest.fromJson(Map<String, dynamic> json) { return R2PutBucketLifecycleConfigurationRequest(
  rules: (json['rules'] as List<dynamic>?)?.map((e) => R2LifecycleRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<R2LifecycleRule>? rules;

Map<String, dynamic> toJson() { return {
  if (rules != null) 'rules': rules?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'rules'}.contains(key)); } 
R2PutBucketLifecycleConfigurationRequest copyWith({List<R2LifecycleRule> Function()? rules}) { return R2PutBucketLifecycleConfigurationRequest(
  rules: rules != null ? rules() : this.rules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2PutBucketLifecycleConfigurationRequest &&
          listEquals(rules, other.rules); } 
@override int get hashCode { return Object.hashAll(rules ?? const []).hashCode; } 
@override String toString() { return 'R2PutBucketLifecycleConfigurationRequest(rules: $rules)'; } 
 }
