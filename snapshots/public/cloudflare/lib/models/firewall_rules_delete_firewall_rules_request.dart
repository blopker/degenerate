// GENERATED CODE - DO NOT MODIFY BY HAND

import 'firewall_firewall_rules_components_schemas_id.dart';final class FirewallRulesDeleteFirewallRulesRequest {const FirewallRulesDeleteFirewallRulesRequest({required this.id});

factory FirewallRulesDeleteFirewallRulesRequest.fromJson(Map<String, dynamic> json) { return FirewallRulesDeleteFirewallRulesRequest(
  id: FirewallFirewallRulesComponentsSchemasId.fromJson(json['id'] as String),
); }

/// The unique identifier of the firewall rule.
final FirewallFirewallRulesComponentsSchemasId id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
FirewallRulesDeleteFirewallRulesRequest copyWith({FirewallFirewallRulesComponentsSchemasId? id}) { return FirewallRulesDeleteFirewallRulesRequest(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallRulesDeleteFirewallRulesRequest &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'FirewallRulesDeleteFirewallRulesRequest(id: $id)'; } 
 }
