// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_origin_health_ip.dart';@immutable final class LoadBalancingOriginHealth {const LoadBalancingOriginHealth({this.ip});

factory LoadBalancingOriginHealth.fromJson(Map<String, dynamic> json) { return LoadBalancingOriginHealth(
  ip: json['ip'] != null ? LoadBalancingOriginHealthIp.fromJson(json['ip'] as Map<String, dynamic>) : null,
); }

final LoadBalancingOriginHealthIp? ip;

Map<String, dynamic> toJson() { return {
  if (ip != null) 'ip': ip?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ip'}.contains(key)); } 
LoadBalancingOriginHealth copyWith({LoadBalancingOriginHealthIp Function()? ip}) { return LoadBalancingOriginHealth(
  ip: ip != null ? ip() : this.ip,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingOriginHealth &&
          ip == other.ip; } 
@override int get hashCode { return ip.hashCode; } 
@override String toString() { return 'LoadBalancingOriginHealth(ip: $ip)'; } 
 }
