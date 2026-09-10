// GENERATED CODE - DO NOT MODIFY BY HAND

/// The port for upstream connections. A value of 0 means the default port for the protocol will be used.
extension type const LoadBalancingOriginPort(int value) {
factory LoadBalancingOriginPort.fromJson(num json) => LoadBalancingOriginPort(json.toInt());

num toJson() => value;

}
