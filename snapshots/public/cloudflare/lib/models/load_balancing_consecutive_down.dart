// GENERATED CODE - DO NOT MODIFY BY HAND

/// To be marked unhealthy the monitored origin must fail this healthcheck N consecutive times.
extension type const LoadBalancingConsecutiveDown(int value) {
factory LoadBalancingConsecutiveDown.fromJson(num json) => LoadBalancingConsecutiveDown(json.toInt());

num toJson() => value;

}
