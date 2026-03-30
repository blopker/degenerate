// GENERATED CODE - DO NOT MODIFY BY HAND

/// The time on which the token was created.
extension type IamIssuedOn(DateTime value) {
factory IamIssuedOn.fromJson(String json) => IamIssuedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
