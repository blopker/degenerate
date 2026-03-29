// GENERATED CODE - DO NOT MODIFY BY HAND

/// The time that the alert was created in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
extension type AlertCreatedAt(DateTime value) {
factory AlertCreatedAt.fromJson(String json) => AlertCreatedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
