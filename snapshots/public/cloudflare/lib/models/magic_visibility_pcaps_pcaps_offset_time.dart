// GENERATED CODE - DO NOT MODIFY BY HAND

/// The RFC 3339 offset timestamp from which to query backwards for packets. Must be within the last 24h. When this field is empty, defaults to time of request.
extension type MagicVisibilityPcapsPcapsOffsetTime(DateTime value) {
factory MagicVisibilityPcapsPcapsOffsetTime.fromJson(String json) => MagicVisibilityPcapsPcapsOffsetTime(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
