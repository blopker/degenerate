// GENERATED CODE - DO NOT MODIFY BY HAND

/// End date and time of requesting data period in ISO 8601 format.
extension type DnsAnalyticsUntil(DateTime value) {
factory DnsAnalyticsUntil.fromJson(String json) => DnsAnalyticsUntil(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
