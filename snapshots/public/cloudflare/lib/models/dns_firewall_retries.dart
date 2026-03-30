// GENERATED CODE - DO NOT MODIFY BY HAND

/// Number of retries for fetching DNS responses from upstream nameservers (not counting the initial attempt)
extension type const DnsFirewallRetries(double value) {
factory DnsFirewallRetries.fromJson(num json) => DnsFirewallRetries(json.toDouble());

num toJson() => value;

}
