// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_firewall_identifier.dart';final class DnsFirewallDeleteDnsFirewallClusterResponse4XxResult {const DnsFirewallDeleteDnsFirewallClusterResponse4XxResult({this.id});

factory DnsFirewallDeleteDnsFirewallClusterResponse4XxResult.fromJson(Map<String, dynamic> json) { return DnsFirewallDeleteDnsFirewallClusterResponse4XxResult(
  id: json['id'] != null ? DnsFirewallIdentifier.fromJson(json['id'] as String) : null,
); }

/// Identifier.
final DnsFirewallIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
DnsFirewallDeleteDnsFirewallClusterResponse4XxResult copyWith({DnsFirewallIdentifier Function()? id}) { return DnsFirewallDeleteDnsFirewallClusterResponse4XxResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallDeleteDnsFirewallClusterResponse4XxResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'DnsFirewallDeleteDnsFirewallClusterResponse4XxResult(id: $id)'; } 
 }
