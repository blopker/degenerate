// GENERATED CODE - DO NOT MODIFY BY HAND

/// By default, Cloudflare attempts to cache responses for as long as
/// indicated by the TTL received from upstream nameservers. This setting
/// sets a lower bound on this duration. For caching purposes, lower TTLs
/// will be increased to the minimum value defined by this setting.
/// 
/// This setting does not affect the TTL value in the DNS response
/// Cloudflare returns to clients. Cloudflare will always forward the TTL
/// value received from upstream nameservers.
/// 
/// Note that, even with this setting, there is no guarantee that a
/// response will be cached for at least the specified duration. Cached
/// responses may be removed earlier for capacity or other operational
/// reasons.
/// 
extension type const DnsFirewallMinimumCacheTtl(double value) {
factory DnsFirewallMinimumCacheTtl.fromJson(num json) => DnsFirewallMinimumCacheTtl(json.toDouble());

num toJson() => value;

}
