// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_firewall_dns_firewall_cluster_response.dart';@immutable final class DnsFirewallDnsFirewallResponseCollection {const DnsFirewallDnsFirewallResponseCollection({this.result});

factory DnsFirewallDnsFirewallResponseCollection.fromJson(Map<String, dynamic> json) { return DnsFirewallDnsFirewallResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => DnsFirewallDnsFirewallClusterResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DnsFirewallDnsFirewallClusterResponse>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsFirewallDnsFirewallResponseCollection copyWith({List<DnsFirewallDnsFirewallClusterResponse> Function()? result}) { return DnsFirewallDnsFirewallResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallDnsFirewallResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DnsFirewallDnsFirewallResponseCollection(result: $result)'; } 
 }
