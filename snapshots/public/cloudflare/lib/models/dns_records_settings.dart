// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Settings for the DNS record.
@immutable final class DnsRecordsSettings {const DnsRecordsSettings({this.ipv4Only, this.ipv6Only, });

factory DnsRecordsSettings.fromJson(Map<String, dynamic> json) { return DnsRecordsSettings(
  ipv4Only: json['ipv4_only'] as bool?,
  ipv6Only: json['ipv6_only'] as bool?,
); }

/// When enabled, only A records will be generated, and AAAA records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
final bool? ipv4Only;

/// When enabled, only AAAA records will be generated, and A records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
final bool? ipv6Only;

/// The value with the schema default applied when absent.
bool get ipv4OnlyOrDefault { return ipv4Only ?? false; } 
/// The value with the schema default applied when absent.
bool get ipv6OnlyOrDefault { return ipv6Only ?? false; } 
Map<String, dynamic> toJson() { return {
  'ipv4_only': ?ipv4Only,
  'ipv6_only': ?ipv6Only,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ipv4_only', 'ipv6_only'}.contains(key)); } 
DnsRecordsSettings copyWith({bool? Function()? ipv4Only, bool? Function()? ipv6Only, }) { return DnsRecordsSettings(
  ipv4Only: ipv4Only != null ? ipv4Only() : this.ipv4Only,
  ipv6Only: ipv6Only != null ? ipv6Only() : this.ipv6Only,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsSettings &&
          ipv4Only == other.ipv4Only &&
          ipv6Only == other.ipv6Only; } 
@override int get hashCode { return Object.hash(ipv4Only, ipv6Only); } 
@override String toString() { return 'DnsRecordsSettings(ipv4Only: $ipv4Only, ipv6Only: $ipv6Only)'; } 
 }
