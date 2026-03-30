// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_firewall_delete_dns_firewall_cluster_response_result.dart';final class DnsFirewallDeleteDnsFirewallClusterResponse {const DnsFirewallDeleteDnsFirewallClusterResponse({this.result});

factory DnsFirewallDeleteDnsFirewallClusterResponse.fromJson(Map<String, dynamic> json) { return DnsFirewallDeleteDnsFirewallClusterResponse(
  result: json['result'] != null ? DnsFirewallDeleteDnsFirewallClusterResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsFirewallDeleteDnsFirewallClusterResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsFirewallDeleteDnsFirewallClusterResponse copyWith({DnsFirewallDeleteDnsFirewallClusterResponseResult Function()? result}) { return DnsFirewallDeleteDnsFirewallClusterResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallDeleteDnsFirewallClusterResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsFirewallDeleteDnsFirewallClusterResponse(result: $result)'; } 
 }
