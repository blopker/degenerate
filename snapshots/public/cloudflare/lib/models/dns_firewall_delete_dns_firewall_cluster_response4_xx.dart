// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_firewall_delete_dns_firewall_cluster_response4_xx_result.dart';final class DnsFirewallDeleteDnsFirewallClusterResponse4Xx {const DnsFirewallDeleteDnsFirewallClusterResponse4Xx({this.result});

factory DnsFirewallDeleteDnsFirewallClusterResponse4Xx.fromJson(Map<String, dynamic> json) { return DnsFirewallDeleteDnsFirewallClusterResponse4Xx(
  result: json['result'] != null ? DnsFirewallDeleteDnsFirewallClusterResponse4XxResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsFirewallDeleteDnsFirewallClusterResponse4XxResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsFirewallDeleteDnsFirewallClusterResponse4Xx copyWith({DnsFirewallDeleteDnsFirewallClusterResponse4XxResult Function()? result}) { return DnsFirewallDeleteDnsFirewallClusterResponse4Xx(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallDeleteDnsFirewallClusterResponse4Xx &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsFirewallDeleteDnsFirewallClusterResponse4Xx(result: $result)'; } 
 }
