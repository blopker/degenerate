// GENERATED CODE - DO NOT MODIFY BY HAND

/// Timestamp of when the tunnel established at least one connection to Cloudflare's edge. If `null`, the tunnel is inactive.
extension type TunnelConnsActiveAt(DateTime value) {
factory TunnelConnsActiveAt.fromJson(String json) => TunnelConnsActiveAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
