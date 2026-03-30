// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_firewall_dns_firewall_reverse_dns.dart';final class DnsFirewallDnsFirewallReverseDnsResponse2 {const DnsFirewallDnsFirewallReverseDnsResponse2({this.result});

factory DnsFirewallDnsFirewallReverseDnsResponse2.fromJson(Map<String, dynamic> json) { return DnsFirewallDnsFirewallReverseDnsResponse2(
  result: json['result'] != null ? DnsFirewallDnsFirewallReverseDns.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsFirewallDnsFirewallReverseDns? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsFirewallDnsFirewallReverseDnsResponse2 copyWith({DnsFirewallDnsFirewallReverseDns Function()? result}) { return DnsFirewallDnsFirewallReverseDnsResponse2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallDnsFirewallReverseDnsResponse2 &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsFirewallDnsFirewallReverseDnsResponse2(result: $result)'; } 
 }
