// GENERATED CODE - DO NOT MODIFY BY HAND

/// The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations.
extension type const LoadBalancingInterval(int value) {
factory LoadBalancingInterval.fromJson(num json) => LoadBalancingInterval(json.toInt());

num toJson() => value;

}
