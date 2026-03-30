// GENERATED CODE - DO NOT MODIFY BY HAND

import 'firewall_components_ua_rule_id.dart';final class UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult {const UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult({this.id});

factory UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult.fromJson(Map<String, dynamic> json) { return UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult(
  id: json['id'] != null ? FirewallComponentsUaRuleId.fromJson(json['id'] as String) : null,
); }

/// The unique identifier of the User Agent Blocking rule.
final FirewallComponentsUaRuleId? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult copyWith({FirewallComponentsUaRuleId Function()? id}) { return UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'UserAgentBlockingRulesDeleteAUserAgentBlockingRuleResponseResult(id: $id)'; } 
 }
