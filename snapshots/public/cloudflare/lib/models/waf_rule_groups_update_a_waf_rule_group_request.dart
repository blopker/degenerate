// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waf_managed_rules_mode.dart';@immutable final class WafRuleGroupsUpdateAWafRuleGroupRequest {const WafRuleGroupsUpdateAWafRuleGroupRequest({this.mode});

factory WafRuleGroupsUpdateAWafRuleGroupRequest.fromJson(Map<String, dynamic> json) { return WafRuleGroupsUpdateAWafRuleGroupRequest(
  mode: json['mode'] != null ? WafManagedRulesMode.fromJson(json['mode'] as String) : null,
); }

/// Defines the state of the rules contained in the rule group. When `on`, the rules in the group are configurable/usable.
final WafManagedRulesMode? mode;

Map<String, dynamic> toJson() { return {
  if (mode != null) 'mode': mode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'mode'}.contains(key)); } 
WafRuleGroupsUpdateAWafRuleGroupRequest copyWith({WafManagedRulesMode Function()? mode}) { return WafRuleGroupsUpdateAWafRuleGroupRequest(
  mode: mode != null ? mode() : this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafRuleGroupsUpdateAWafRuleGroupRequest &&
          mode == other.mode; } 
@override int get hashCode { return mode.hashCode; } 
@override String toString() { return 'WafRuleGroupsUpdateAWafRuleGroupRequest(mode: $mode)'; } 
 }
