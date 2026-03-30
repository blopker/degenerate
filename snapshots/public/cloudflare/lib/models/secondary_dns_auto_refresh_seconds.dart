// GENERATED CODE - DO NOT MODIFY BY HAND

/// How often should a secondary zone auto refresh regardless of DNS NOTIFY.
/// Not applicable for primary zones.
extension type const SecondaryDnsAutoRefreshSeconds(double value) {
factory SecondaryDnsAutoRefreshSeconds.fromJson(num json) => SecondaryDnsAutoRefreshSeconds(json.toDouble());

num toJson() => value;

}
