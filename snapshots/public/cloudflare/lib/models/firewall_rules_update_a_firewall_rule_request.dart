// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_action.dart';import 'firewall_filter_request.dart';@immutable final class FirewallRulesUpdateAFirewallRuleRequest {const FirewallRulesUpdateAFirewallRuleRequest({required this.action, required this.filter, });

factory FirewallRulesUpdateAFirewallRuleRequest.fromJson(Map<String, dynamic> json) {return FirewallRulesUpdateAFirewallRuleRequest(
  action: FirewallAction.fromJson(json['action']),
  filter: FirewallFilterRequest.fromJson(json['filter'] as Map<String, dynamic>),
);}

final FirewallAction action;

final FirewallFilterRequest filter;

Map<String, dynamic> toJson() {return {
  'action': action.toJson(),
  'filter': filter.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('action') &&
      json.containsKey('filter');}
FirewallRulesUpdateAFirewallRuleRequest copyWith({FirewallAction? action, FirewallFilterRequest? filter, }) {return FirewallRulesUpdateAFirewallRuleRequest(
  action: action ?? this.action,
  filter: filter ?? this.filter,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is FirewallRulesUpdateAFirewallRuleRequest &&
          action == other.action &&
          filter == other.filter;}
@override int get hashCode {return Object.hash(action, filter);}
@override String toString() {return 'FirewallRulesUpdateAFirewallRuleRequest(action: $action, filter: $filter)';}
}
