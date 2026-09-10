// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configures pool weights.
/// - `steering_policy="random"`: A random pool is selected with probability proportional to pool weights.
/// - `steering_policy="least_outstanding_requests"`: Use pool weights to scale each pool's outstanding requests.
/// - `steering_policy="least_connections"`: Use pool weights to scale each pool's open connections.
@immutable final class LoadBalancingRandomSteering {const LoadBalancingRandomSteering({this.defaultWeight, this.poolWeights, });

factory LoadBalancingRandomSteering.fromJson(Map<String, dynamic> json) { return LoadBalancingRandomSteering(
  defaultWeight: json['default_weight'] != null ? (json['default_weight'] as num).toDouble() : null,
  poolWeights: (json['pool_weights'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as num).toDouble())),
); }

/// The default weight for pools in the load balancer that are not specified in the pool_weights map.
final double? defaultWeight;

/// A mapping of pool IDs to custom weights. The weight is relative to other pools in the load balancer.
final Map<String,double>? poolWeights;

/// The value with the schema default applied when absent.
double get defaultWeightOrDefault { return defaultWeight ?? 1.0; } 
Map<String, dynamic> toJson() { return {
  'default_weight': ?defaultWeight,
  'pool_weights': ?poolWeights,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_weight', 'pool_weights'}.contains(key)); } 
LoadBalancingRandomSteering copyWith({double? Function()? defaultWeight, Map<String, double>? Function()? poolWeights, }) { return LoadBalancingRandomSteering(
  defaultWeight: defaultWeight != null ? defaultWeight() : this.defaultWeight,
  poolWeights: poolWeights != null ? poolWeights() : this.poolWeights,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingRandomSteering &&
          defaultWeight == other.defaultWeight &&
          poolWeights == other.poolWeights; } 
@override int get hashCode { return Object.hash(defaultWeight, poolWeights); } 
@override String toString() { return 'LoadBalancingRandomSteering(defaultWeight: $defaultWeight, poolWeights: $poolWeights)'; } 
 }
