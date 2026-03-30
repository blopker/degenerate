// GENERATED CODE - DO NOT MODIFY BY HAND

/// The port number to connect to for the health check. Required for TCP, UDP, and SMTP checks. HTTP and HTTPS checks should only define the port when using a non-standard port (HTTP: default 80, HTTPS: default 443).
extension type const LoadBalancingPort(int value) {
factory LoadBalancingPort.fromJson(num json) => LoadBalancingPort(json.toInt());

num toJson() => value;

}
