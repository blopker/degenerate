// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_action.dart';import 'firewall_filter.dart';@immutable final class FirewallRulesCreateFirewallRulesRequest {const FirewallRulesCreateFirewallRulesRequest({required this.action, required this.filter, });

factory FirewallRulesCreateFirewallRulesRequest.fromJson(Map<String, dynamic> json) { return FirewallRulesCreateFirewallRulesRequest(
  action: FirewallAction.fromJson(json['action'] as Map<String, dynamic>),
  filter: FirewallFilter.fromJson(json['filter'] as Map<String, dynamic>),
); }

final FirewallAction action;

final FirewallFilter filter;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'filter': filter.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('filter'); } 
FirewallRulesCreateFirewallRulesRequest copyWith({FirewallAction? action, FirewallFilter? filter, }) { return FirewallRulesCreateFirewallRulesRequest(
  action: action ?? this.action,
  filter: filter ?? this.filter,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallRulesCreateFirewallRulesRequest &&
          action == other.action &&
          filter == other.filter; } 
@override int get hashCode { return Object.hash(action, filter); } 
@override String toString() { return 'FirewallRulesCreateFirewallRulesRequest(action: $action, filter: $filter)'; } 
 }
