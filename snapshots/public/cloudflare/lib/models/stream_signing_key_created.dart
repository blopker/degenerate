// GENERATED CODE - DO NOT MODIFY BY HAND

/// The date and time a signing key was created.
extension type StreamSigningKeyCreated(DateTime value) {
factory StreamSigningKeyCreated.fromJson(String json) => StreamSigningKeyCreated(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
