// GENERATED CODE - DO NOT MODIFY BY HAND

/// Whether to enable (the default) this origin within the pool. Disabled origins will not receive traffic and are excluded from health checks. The origin will only be disabled for the current pool.
extension type const LoadBalancingSchemasEnabled(bool value) {
factory LoadBalancingSchemasEnabled.fromJson(bool json) => LoadBalancingSchemasEnabled(json);

bool toJson() => value;

}
