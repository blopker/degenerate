// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rum_modify_rules_request_rules.dart';import 'rum_rule_identifier.dart';final class RumModifyRulesRequest {const RumModifyRulesRequest({this.deleteRules, this.rules, });

factory RumModifyRulesRequest.fromJson(Map<String, dynamic> json) { return RumModifyRulesRequest(
  deleteRules: (json['delete_rules'] as List<dynamic>?)?.map((e) => RumRuleIdentifier.fromJson(e as String)).toList(),
  rules: (json['rules'] as List<dynamic>?)?.map((e) => RumModifyRulesRequestRules.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// A list of rule identifiers to delete.
final List<RumRuleIdentifier>? deleteRules;

/// A list of rules to create or update.
final List<RumModifyRulesRequestRules>? rules;

Map<String, dynamic> toJson() { return {
  if (deleteRules != null) 'delete_rules': deleteRules?.map((e) => e.toJson()).toList(),
  if (rules != null) 'rules': rules?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'delete_rules', 'rules'}.contains(key)); } 
RumModifyRulesRequest copyWith({List<RumRuleIdentifier> Function()? deleteRules, List<RumModifyRulesRequestRules> Function()? rules, }) { return RumModifyRulesRequest(
  deleteRules: deleteRules != null ? deleteRules() : this.deleteRules,
  rules: rules != null ? rules() : this.rules,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RumModifyRulesRequest &&
          listEquals(deleteRules, other.deleteRules) &&
          listEquals(rules, other.rules); } 
@override int get hashCode { return Object.hash(Object.hashAll(deleteRules ?? const []), Object.hashAll(rules ?? const [])); } 
@override String toString() { return 'RumModifyRulesRequest(deleteRules: $deleteRules, rules: $rules)'; } 
 }
