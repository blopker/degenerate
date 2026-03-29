// GENERATED CODE - DO NOT MODIFY BY HAND

extension type RumTimestamp(DateTime value) {
factory RumTimestamp.fromJson(String json) => RumTimestamp(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
