// GENERATED CODE - DO NOT MODIFY BY HAND

/// Expires the key at a certain time, measured in number of seconds since the UNIX epoch.
extension type const WorkersKvExpiration(double value) {
factory WorkersKvExpiration.fromJson(num json) => WorkersKvExpiration(json.toDouble());

num toJson() => value;

}
