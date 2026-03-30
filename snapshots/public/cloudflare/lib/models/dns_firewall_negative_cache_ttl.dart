// GENERATED CODE - DO NOT MODIFY BY HAND

/// This setting controls how long DNS Firewall should cache negative
/// responses (e.g., NXDOMAIN) from the upstream servers.
/// 
/// This setting does not affect the TTL value in the DNS response
/// Cloudflare returns to clients. Cloudflare will always forward the TTL
/// value received from upstream nameservers.
/// 
extension type const DnsFirewallNegativeCacheTtl(double value) {
factory DnsFirewallNegativeCacheTtl.fromJson(num json) => DnsFirewallNegativeCacheTtl(json.toDouble());

num toJson() => value;

}
