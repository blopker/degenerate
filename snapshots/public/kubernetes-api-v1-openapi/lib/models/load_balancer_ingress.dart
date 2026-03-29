// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'port_status.dart';/// LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
final class LoadBalancerIngress {const LoadBalancerIngress({this.hostname, this.ip, this.ipMode, this.ports, });

factory LoadBalancerIngress.fromJson(Map<String, dynamic> json) { return LoadBalancerIngress(
  hostname: json['hostname'] as String?,
  ip: json['ip'] as String?,
  ipMode: json['ipMode'] as String?,
  ports: (json['ports'] as List<dynamic>?)?.map((e) => PortStatus.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
final String? hostname;

/// IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
final String? ip;

/// IPMode specifies how the load-balancer IP behaves, and may only be specified when the ip field is specified. Setting this to "VIP" indicates that traffic is delivered to the node with the destination set to the load-balancer's IP and port. Setting this to "Proxy" indicates that traffic is delivered to the node or pod with the destination set to the node's IP and node port or the pod's IP and port. Service implementations may use this information to adjust traffic routing.
final String? ipMode;

/// Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
final List<PortStatus>? ports;

Map<String, dynamic> toJson() { return {
  'hostname': ?hostname,
  'ip': ?ip,
  'ipMode': ?ipMode,
  if (ports != null) 'ports': ports?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
LoadBalancerIngress copyWith({String Function()? hostname, String Function()? ip, String Function()? ipMode, List<PortStatus> Function()? ports, }) { return LoadBalancerIngress(
  hostname: hostname != null ? hostname() : this.hostname,
  ip: ip != null ? ip() : this.ip,
  ipMode: ipMode != null ? ipMode() : this.ipMode,
  ports: ports != null ? ports() : this.ports,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancerIngress &&
          hostname == other.hostname &&
          ip == other.ip &&
          ipMode == other.ipMode &&
          listEquals(ports, other.ports); } 
@override int get hashCode { return Object.hash(hostname, ip, ipMode, Object.hashAll(ports ?? const [])); } 
@override String toString() { return 'LoadBalancerIngress(hostname: $hostname, ip: $ip, ipMode: $ipMode, ports: $ports)'; } 
 }
