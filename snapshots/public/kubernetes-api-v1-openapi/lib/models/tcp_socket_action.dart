// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'io_k8s_apimachinery_pkg_util_intstr_int_or_string.dart';/// TCPSocketAction describes an action based on opening a socket
@immutable final class TcpSocketAction {const TcpSocketAction({required this.port, this.host, });

factory TcpSocketAction.fromJson(Map<String, dynamic> json) { return TcpSocketAction(
  host: json['host'] as String?,
  port: OneOf2.parse(json['port'], fromA: (v) => (v as num).toInt(), fromB: (v) => v as String,),
); }

/// Optional: Host name to connect to, defaults to the pod IP.
final String? host;

/// Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
final IoK8sApimachineryPkgUtilIntstrIntOrString port;

Map<String, dynamic> toJson() { return {
  'host': ?host,
  'port': port.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('port'); } 
TcpSocketAction copyWith({String Function()? host, IoK8sApimachineryPkgUtilIntstrIntOrString? port, }) { return TcpSocketAction(
  host: host != null ? host() : this.host,
  port: port ?? this.port,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TcpSocketAction &&
          host == other.host &&
          port == other.port; } 
@override int get hashCode { return Object.hash(host, port); } 
@override String toString() { return 'TcpSocketAction(host: $host, port: $port)'; } 
 }
