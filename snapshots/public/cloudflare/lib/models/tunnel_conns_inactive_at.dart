// GENERATED CODE - DO NOT MODIFY BY HAND

/// Timestamp of when the tunnel became inactive (no connections to Cloudflare's edge). If `null`, the tunnel is active.
extension type TunnelConnsInactiveAt(DateTime value) {
factory TunnelConnsInactiveAt.fromJson(String json) => TunnelConnsInactiveAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
