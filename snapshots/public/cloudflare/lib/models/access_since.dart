// GENERATED CODE - DO NOT MODIFY BY HAND

/// the timestamp of the earliest update log.
extension type AccessSince(DateTime value) {
factory AccessSince.fromJson(String json) => AccessSince(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
