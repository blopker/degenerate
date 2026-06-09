// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_anomaly_rule.dart';import 'waf_managed_rules_traditional_allow_rule.dart';import 'waf_managed_rules_traditional_deny_rule.dart';import 'waf_rules_update_a_waf_rule_response4xx_result.dart';@immutable final class WafRulesUpdateAWafRuleResponse4xx {const WafRulesUpdateAWafRuleResponse4xx({this.result});

factory WafRulesUpdateAWafRuleResponse4xx.fromJson(Map<String, dynamic> json) { return WafRulesUpdateAWafRuleResponse4xx(
  result: json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => WafManagedRulesAnomalyRule.fromJson(v as Map<String, dynamic>), fromB: (v) => WafManagedRulesTraditionalDenyRule.fromJson(v as Map<String, dynamic>), fromC: (v) => WafManagedRulesTraditionalAllowRule.fromJson(v as Map<String, dynamic>),) : null,
); }

final WafRulesUpdateAWafRuleResponse4xxResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WafRulesUpdateAWafRuleResponse4xx copyWith({WafRulesUpdateAWafRuleResponse4xxResult Function()? result}) { return WafRulesUpdateAWafRuleResponse4xx(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafRulesUpdateAWafRuleResponse4xx &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WafRulesUpdateAWafRuleResponse4xx(result: $result)'; } 
 }
