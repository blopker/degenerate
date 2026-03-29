// GENERATED CODE - DO NOT MODIFY BY HAND

/// The expiration time on or after which the JWT MUST NOT be accepted for processing.
extension type IamExpiresOn(DateTime value) {
factory IamExpiresOn.fromJson(String json) => IamExpiresOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
