// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_anomaly_rule.dart';import 'waf_managed_rules_rule.dart';import 'waf_managed_rules_traditional_allow_rule.dart';import 'waf_managed_rules_traditional_deny_rule.dart';@immutable final class WafManagedRulesRuleResponseCollection {const WafManagedRulesRuleResponseCollection({this.result});

factory WafManagedRulesRuleResponseCollection.fromJson(Map<String, dynamic> json) { return WafManagedRulesRuleResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => WafManagedRulesAnomalyRule.fromJson(v as Map<String, dynamic>), fromB: (v) => WafManagedRulesTraditionalDenyRule.fromJson(v as Map<String, dynamic>), fromC: (v) => WafManagedRulesTraditionalAllowRule.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final List<WafManagedRulesRule>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WafManagedRulesRuleResponseCollection copyWith({List<WafManagedRulesRule> Function()? result}) { return WafManagedRulesRuleResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafManagedRulesRuleResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'WafManagedRulesRuleResponseCollection(result: $result)'; } 
 }
