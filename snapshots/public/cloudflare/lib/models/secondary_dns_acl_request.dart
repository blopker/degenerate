// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_acl_components_schemas_name.dart';import 'secondary_dns_ip_range.dart';@immutable final class SecondaryDnsAclRequest {const SecondaryDnsAclRequest({required this.ipRange, required this.name, });

factory SecondaryDnsAclRequest.fromJson(Map<String, dynamic> json) {return SecondaryDnsAclRequest(
  ipRange: SecondaryDnsIpRange.fromJson(json['ip_range'] as String),
  name: SecondaryDnsAclComponentsSchemasName.fromJson(json['name'] as String),
);}

/// Allowed IPv4/IPv6 address range of primary or secondary nameservers. This will be applied for the entire account. The IP range is used to allow additional NOTIFY IPs for secondary zones and IPs Cloudflare allows AXFR/IXFR requests from for primary zones. CIDRs are limited to a maximum of /24 for IPv4 and /64 for IPv6 respectively.
final SecondaryDnsIpRange ipRange;

/// The name of the acl.
final SecondaryDnsAclComponentsSchemasName name;

Map<String, dynamic> toJson() {return {
  'ip_range': ipRange.toJson(),
  'name': name.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('ip_range') &&
      json.containsKey('name');}
SecondaryDnsAclRequest copyWith({SecondaryDnsIpRange? ipRange, SecondaryDnsAclComponentsSchemasName? name, }) {return SecondaryDnsAclRequest(
  ipRange: ipRange ?? this.ipRange,
  name: name ?? this.name,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is SecondaryDnsAclRequest &&
          ipRange == other.ipRange &&
          name == other.name;}
@override int get hashCode {return Object.hash(ipRange, name);}
@override String toString() {return 'SecondaryDnsAclRequest(ipRange: $ipRange, name: $name)';}
}
