// GENERATED CODE - DO NOT MODIFY BY HAND

/// The time that the alert was dismissed in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`.
extension type AlertDismissedAt(DateTime value) {
factory AlertDismissedAt.fromJson(String json) => AlertDismissedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
