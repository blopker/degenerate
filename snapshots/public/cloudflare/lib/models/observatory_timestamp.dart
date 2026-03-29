// GENERATED CODE - DO NOT MODIFY BY HAND

extension type ObservatoryTimestamp(DateTime value) {
factory ObservatoryTimestamp.fromJson(String json) => ObservatoryTimestamp(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
