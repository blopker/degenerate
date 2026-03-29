// GENERATED CODE - DO NOT MODIFY BY HAND

/// The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
extension type const SmartshieldRetries(int value) {
factory SmartshieldRetries.fromJson(num json) => SmartshieldRetries(json.toInt());

num toJson() => value;

}
