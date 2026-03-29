// GENERATED CODE - DO NOT MODIFY BY HAND

/// The date and time the destination address has been created.
extension type EmailCreated(DateTime value) {
factory EmailCreated.fromJson(String json) => EmailCreated(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
