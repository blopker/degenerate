// GENERATED CODE - DO NOT MODIFY BY HAND

/// Settings for the DNS record.
final class DnsRecordsSettings {const DnsRecordsSettings({this.ipv4Only = false, this.ipv6Only = false, });

factory DnsRecordsSettings.fromJson(Map<String, dynamic> json) { return DnsRecordsSettings(
  ipv4Only: json.containsKey('ipv4_only') ? json['ipv4_only'] as bool : false,
  ipv6Only: json.containsKey('ipv6_only') ? json['ipv6_only'] as bool : false,
); }

/// When enabled, only A records will be generated, and AAAA records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
final bool ipv4Only;

/// When enabled, only AAAA records will be generated, and A records will not be created. This setting is intended for exceptional cases. Note that this option only applies to proxied records and it has no effect on whether Cloudflare communicates with the origin using IPv4 or IPv6.
final bool ipv6Only;

Map<String, dynamic> toJson() { return {
  'ipv4_only': ipv4Only,
  'ipv6_only': ipv6Only,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
DnsRecordsSettings copyWith({bool Function()? ipv4Only, bool Function()? ipv6Only, }) { return DnsRecordsSettings(
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
