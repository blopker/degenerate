// GENERATED CODE - DO NOT MODIFY BY HAND

/// Start date and time of requesting data period in ISO 8601 format.
extension type DnsAnalyticsSince(DateTime value) {
factory DnsAnalyticsSince.fromJson(String json) => DnsAnalyticsSince(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
