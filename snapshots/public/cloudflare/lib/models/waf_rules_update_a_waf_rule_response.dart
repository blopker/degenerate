// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_anomaly_rule.dart';import 'waf_managed_rules_traditional_allow_rule.dart';import 'waf_managed_rules_traditional_deny_rule.dart';import 'waf_rules_update_a_waf_rule_response_result.dart';final class WafRulesUpdateAWafRuleResponse {const WafRulesUpdateAWafRuleResponse({this.result});

factory WafRulesUpdateAWafRuleResponse.fromJson(Map<String, dynamic> json) { return WafRulesUpdateAWafRuleResponse(
  result: json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => WafManagedRulesAnomalyRule.fromJson(v as Map<String, dynamic>), fromB: (v) => WafManagedRulesTraditionalDenyRule.fromJson(v as Map<String, dynamic>), fromC: (v) => WafManagedRulesTraditionalAllowRule.fromJson(v as Map<String, dynamic>),) : null,
); }

final WafRulesUpdateAWafRuleResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WafRulesUpdateAWafRuleResponse copyWith({WafRulesUpdateAWafRuleResponseResult Function()? result}) { return WafRulesUpdateAWafRuleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafRulesUpdateAWafRuleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WafRulesUpdateAWafRuleResponse(result: $result)'; } 
 }
