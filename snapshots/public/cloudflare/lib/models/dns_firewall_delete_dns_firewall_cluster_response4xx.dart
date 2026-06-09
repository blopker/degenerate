// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_firewall_delete_dns_firewall_cluster_response4xx_result.dart';@immutable final class DnsFirewallDeleteDnsFirewallClusterResponse4xx {const DnsFirewallDeleteDnsFirewallClusterResponse4xx({this.result});

factory DnsFirewallDeleteDnsFirewallClusterResponse4xx.fromJson(Map<String, dynamic> json) { return DnsFirewallDeleteDnsFirewallClusterResponse4xx(
  result: json['result'] != null ? DnsFirewallDeleteDnsFirewallClusterResponse4xxResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsFirewallDeleteDnsFirewallClusterResponse4xxResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsFirewallDeleteDnsFirewallClusterResponse4xx copyWith({DnsFirewallDeleteDnsFirewallClusterResponse4xxResult Function()? result}) { return DnsFirewallDeleteDnsFirewallClusterResponse4xx(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallDeleteDnsFirewallClusterResponse4xx &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsFirewallDeleteDnsFirewallClusterResponse4xx(result: $result)'; } 
 }
