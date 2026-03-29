// GENERATED CODE - DO NOT MODIFY BY HAND

/// The time that the alert was no longer detected and was considered fixed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
extension type AlertFixedAt(DateTime value) {
factory AlertFixedAt.fromJson(String json) => AlertFixedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
