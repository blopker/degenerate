// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_cors_rule.dart';@immutable final class R2GetBucketCorsPolicyResponseResult {const R2GetBucketCorsPolicyResponseResult({this.rules});

factory R2GetBucketCorsPolicyResponseResult.fromJson(Map<String, dynamic> json) { return R2GetBucketCorsPolicyResponseResult(
  rules: (json['rules'] as List<dynamic>?)?.map((e) => R2CorsRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<R2CorsRule>? rules;

Map<String, dynamic> toJson() { return {
  if (rules != null) 'rules': rules?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'rules'}.contains(key)); } 
R2GetBucketCorsPolicyResponseResult copyWith({List<R2CorsRule> Function()? rules}) { return R2GetBucketCorsPolicyResponseResult(
  rules: rules != null ? rules() : this.rules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2GetBucketCorsPolicyResponseResult &&
          listEquals(rules, other.rules); } 
@override int get hashCode { return Object.hashAll(rules ?? const []).hashCode; } 
@override String toString() { return 'R2GetBucketCorsPolicyResponseResult(rules: $rules)'; } 
 }
