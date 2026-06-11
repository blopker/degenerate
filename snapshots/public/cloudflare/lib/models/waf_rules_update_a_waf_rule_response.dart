// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_anomaly_rule.dart';import 'waf_managed_rules_messages2.dart';import 'waf_managed_rules_traditional_allow_rule.dart';import 'waf_managed_rules_traditional_deny_rule.dart';import 'waf_rules_update_a_waf_rule_response_result.dart';@immutable final class WafRulesUpdateAWafRuleResponse {const WafRulesUpdateAWafRuleResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory WafRulesUpdateAWafRuleResponse.fromJson(Map<String, dynamic> json) { return WafRulesUpdateAWafRuleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => WafManagedRulesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WafManagedRulesMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: OneOf3.parse(json['result'], fromA: (v) => WafManagedRulesAnomalyRule.fromJson(v as Map<String, dynamic>), fromB: (v) => WafManagedRulesTraditionalDenyRule.fromJson(v as Map<String, dynamic>), fromC: (v) => WafManagedRulesTraditionalAllowRule.fromJson(v as Map<String, dynamic>),),
); }

final List<WafManagedRulesMessages2> errors;

final List<WafManagedRulesMessages2> messages;

/// Defines whether the API call was successful.
final bool success;

final WafRulesUpdateAWafRuleResponseResult result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
WafRulesUpdateAWafRuleResponse copyWith({List<WafManagedRulesMessages2>? errors, List<WafManagedRulesMessages2>? messages, bool? success, WafRulesUpdateAWafRuleResponseResult? result, }) { return WafRulesUpdateAWafRuleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafRulesUpdateAWafRuleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'WafRulesUpdateAWafRuleResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
