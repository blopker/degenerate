// GENERATED CODE - DO NOT MODIFY BY HAND

/// Ratelimit in queries per second per datacenter (applies to DNS queries sent to the upstream nameservers configured on the cluster)
extension type const DnsFirewallRatelimit(double value) {
factory DnsFirewallRatelimit.fromJson(num json) => DnsFirewallRatelimit(json.toDouble());

num toJson() => value;

}
