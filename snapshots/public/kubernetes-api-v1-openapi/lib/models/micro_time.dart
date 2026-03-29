// GENERATED CODE - DO NOT MODIFY BY HAND

/// MicroTime is version of Time with microsecond level precision.
extension type MicroTime(DateTime value) {
factory MicroTime.fromJson(String json) => MicroTime(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
