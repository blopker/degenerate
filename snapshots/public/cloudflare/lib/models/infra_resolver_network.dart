// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class InfraResolverNetwork {const InfraResolverNetwork({this.resolverIps, required this.tunnelId, });

factory InfraResolverNetwork.fromJson(Map<String, dynamic> json) { return InfraResolverNetwork(
  resolverIps: (json['resolver_ips'] as List<dynamic>?)?.map((e) => e as String).toList(),
  tunnelId: json['tunnel_id'] as String,
); }

final List<String>? resolverIps;

final String tunnelId;

Map<String, dynamic> toJson() { return {
  'resolver_ips': ?resolverIps,
  'tunnel_id': tunnelId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tunnel_id') && json['tunnel_id'] is String; } 
InfraResolverNetwork copyWith({List<String>? Function()? resolverIps, String? tunnelId, }) { return InfraResolverNetwork(
  resolverIps: resolverIps != null ? resolverIps() : this.resolverIps,
  tunnelId: tunnelId ?? this.tunnelId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraResolverNetwork &&
          listEquals(resolverIps, other.resolverIps) &&
          tunnelId == other.tunnelId; } 
@override int get hashCode { return Object.hash(Object.hashAll(resolverIps ?? const []), tunnelId); } 
@override String toString() { return 'InfraResolverNetwork(resolverIps: $resolverIps, tunnelId: $tunnelId)'; } 
 }
