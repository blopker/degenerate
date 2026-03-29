// GENERATED CODE - DO NOT MODIFY BY HAND

/// Cloudflare continues to track connections for several minutes after they disconnect. This is an optimization to improve latency and reliability of reconnecting.  If `true`, the connection has disconnected but is still being tracked. If `false`, the connection is actively serving traffic.
extension type const TunnelIsPendingReconnect(bool value) {
factory TunnelIsPendingReconnect.fromJson(bool json) => TunnelIsPendingReconnect(json);

bool toJson() => value;

}
