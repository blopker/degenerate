// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_firewall_dns_firewall_cluster_response.dart';@immutable final class DnsFirewallDnsFirewallSingleResponse {const DnsFirewallDnsFirewallSingleResponse({this.result});

factory DnsFirewallDnsFirewallSingleResponse.fromJson(Map<String, dynamic> json) { return DnsFirewallDnsFirewallSingleResponse(
  result: json['result'] != null ? DnsFirewallDnsFirewallClusterResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsFirewallDnsFirewallClusterResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsFirewallDnsFirewallSingleResponse copyWith({DnsFirewallDnsFirewallClusterResponse Function()? result}) { return DnsFirewallDnsFirewallSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallDnsFirewallSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsFirewallDnsFirewallSingleResponse(result: $result)'; } 
 }
