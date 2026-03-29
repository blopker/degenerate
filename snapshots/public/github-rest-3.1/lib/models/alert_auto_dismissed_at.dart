// GENERATED CODE - DO NOT MODIFY BY HAND

/// The time that the alert was auto-dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
extension type AlertAutoDismissedAt(DateTime value) {
factory AlertAutoDismissedAt.fromJson(String json) => AlertAutoDismissedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
