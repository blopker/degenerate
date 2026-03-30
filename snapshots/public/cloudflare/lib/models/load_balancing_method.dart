// GENERATED CODE - DO NOT MODIFY BY HAND

/// The method to use for the health check. This defaults to 'GET' for HTTP/HTTPS based checks and 'connection_established' for TCP based health checks.
extension type const LoadBalancingMethod(String value) {
factory LoadBalancingMethod.fromJson(String json) => LoadBalancingMethod(json);

String toJson() => value;

}
