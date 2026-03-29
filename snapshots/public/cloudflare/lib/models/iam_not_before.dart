// GENERATED CODE - DO NOT MODIFY BY HAND

/// The time before which the token MUST NOT be accepted for processing.
extension type IamNotBefore(DateTime value) {
factory IamNotBefore.fromJson(String json) => IamNotBefore(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
