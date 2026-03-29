// GENERATED CODE - DO NOT MODIFY BY HAND

/// The date and time the item was created.
extension type CallsCreated(DateTime value) {
factory CallsCreated.fromJson(String json) => CallsCreated(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
