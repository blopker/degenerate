// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_anomaly_rule.dart';import 'waf_managed_rules_traditional_allow_rule.dart';import 'waf_managed_rules_traditional_deny_rule.dart';import 'waf_rules_update_a_waf_rule_response4_xx_result.dart';final class WafRulesUpdateAWafRuleResponse4Xx {const WafRulesUpdateAWafRuleResponse4Xx({this.result});

factory WafRulesUpdateAWafRuleResponse4Xx.fromJson(Map<String, dynamic> json) { return WafRulesUpdateAWafRuleResponse4Xx(
  result: json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => WafManagedRulesAnomalyRule.fromJson(v as Map<String, dynamic>), fromB: (v) => WafManagedRulesTraditionalDenyRule.fromJson(v as Map<String, dynamic>), fromC: (v) => WafManagedRulesTraditionalAllowRule.fromJson(v as Map<String, dynamic>),) : null,
); }

final WafRulesUpdateAWafRuleResponse4XxResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WafRulesUpdateAWafRuleResponse4Xx copyWith({WafRulesUpdateAWafRuleResponse4XxResult Function()? result}) { return WafRulesUpdateAWafRuleResponse4Xx(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafRulesUpdateAWafRuleResponse4Xx &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WafRulesUpdateAWafRuleResponse4Xx(result: $result)'; } 
 }
