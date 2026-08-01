// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class InfraResolverNetwork {const InfraResolverNetwork({required this.tunnelId, this.resolverIps = const Omittable.absent(), });

factory InfraResolverNetwork.fromJson(Map<String, dynamic> json) { return InfraResolverNetwork(
  resolverIps: json.containsKey('resolver_ips') ? Omittable((json['resolver_ips'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  tunnelId: json['tunnel_id'] as String,
); }

final Omittable<List<String>?> resolverIps;

final String tunnelId;

Map<String, dynamic> toJson() { return {
  if (resolverIps.isPresent) 'resolver_ips': resolverIps.value,
  'tunnel_id': tunnelId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tunnel_id') && json['tunnel_id'] is String; } 
InfraResolverNetwork copyWith({Omittable<List<String>?>? resolverIps, String? tunnelId, }) { return InfraResolverNetwork(
  resolverIps: resolverIps ?? this.resolverIps,
  tunnelId: tunnelId ?? this.tunnelId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InfraResolverNetwork &&
          resolverIps.isPresent == other.resolverIps.isPresent &&
          listEquals(resolverIps.value, other.resolverIps.value) &&
          tunnelId == other.tunnelId; } 
@override int get hashCode { return Object.hash(Object.hashAll(resolverIps.value ?? const []), tunnelId); } 
@override String toString() { return 'InfraResolverNetwork(resolverIps: $resolverIps, tunnelId: $tunnelId)'; } 
 }
