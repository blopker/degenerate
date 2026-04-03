// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_health_details_result_pop_health.dart';/// A list of regions from which to run health checks. Null means every Cloudflare data center.
@immutable final class LoadBalancingHealthDetailsResult {const LoadBalancingHealthDetailsResult({this.poolId, this.popHealth, });

factory LoadBalancingHealthDetailsResult.fromJson(Map<String, dynamic> json) { return LoadBalancingHealthDetailsResult(
  poolId: json['pool_id'] as String?,
  popHealth: json['pop_health'] != null ? LoadBalancingHealthDetailsResultPopHealth.fromJson(json['pop_health'] as Map<String, dynamic>) : null,
); }

/// Pool ID.
final String? poolId;

/// List of regions and associated health status.
final LoadBalancingHealthDetailsResultPopHealth? popHealth;

Map<String, dynamic> toJson() { return {
  'pool_id': ?poolId,
  if (popHealth != null) 'pop_health': popHealth?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pool_id', 'pop_health'}.contains(key)); } 
LoadBalancingHealthDetailsResult copyWith({String Function()? poolId, LoadBalancingHealthDetailsResultPopHealth Function()? popHealth, }) { return LoadBalancingHealthDetailsResult(
  poolId: poolId != null ? poolId() : this.poolId,
  popHealth: popHealth != null ? popHealth() : this.popHealth,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingHealthDetailsResult &&
          poolId == other.poolId &&
          popHealth == other.popHealth; } 
@override int get hashCode { return Object.hash(poolId, popHealth); } 
@override String toString() { return 'LoadBalancingHealthDetailsResult(poolId: $poolId, popHealth: $popHealth)'; } 
 }
