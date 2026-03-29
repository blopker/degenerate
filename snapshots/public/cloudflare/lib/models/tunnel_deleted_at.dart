// GENERATED CODE - DO NOT MODIFY BY HAND

/// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
extension type TunnelDeletedAt(DateTime value) {
factory TunnelDeletedAt.fromJson(String json) => TunnelDeletedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
