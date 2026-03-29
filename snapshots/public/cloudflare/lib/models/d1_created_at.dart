// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the timestamp the resource was created as an ISO8601 string.
extension type D1CreatedAt(DateTime value) {
factory D1CreatedAt.fromJson(String json) => D1CreatedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
