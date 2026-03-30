// GENERATED CODE - DO NOT MODIFY BY HAND

/// A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy. This parameter is only valid for HTTP and HTTPS monitors.
extension type const LoadBalancingExpectedBody(String value) {
factory LoadBalancingExpectedBody.fromJson(String json) => LoadBalancingExpectedBody(json);

String toJson() => value;

}
