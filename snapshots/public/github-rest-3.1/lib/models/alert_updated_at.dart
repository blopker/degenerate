// GENERATED CODE - DO NOT MODIFY BY HAND

/// The time that the alert was last updated in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
extension type AlertUpdatedAt(DateTime value) {
factory AlertUpdatedAt.fromJson(String json) => AlertUpdatedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
