// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_adaptive_routing.dart';import 'load_balancing_fallback_pool.dart';import 'load_balancing_location_strategy.dart';import 'load_balancing_random_steering.dart';import 'load_balancing_session_affinity.dart';import 'load_balancing_session_affinity_attributes.dart';import 'load_balancing_session_affinity_ttl.dart';import 'load_balancing_steering_policy.dart';import 'load_balancing_ttl.dart';/// A collection of overrides to apply to the load balancer when this rule's condition is true. All fields are optional.
final class LoadBalancingRules2Overrides {const LoadBalancingRules2Overrides({this.adaptiveRouting, this.countryPools, this.defaultPools, this.fallbackPool, this.locationStrategy, this.popPools, this.randomSteering, this.regionPools, this.sessionAffinity, this.sessionAffinityAttributes, this.sessionAffinityTtl, this.steeringPolicy, this.ttl, });

factory LoadBalancingRules2Overrides.fromJson(Map<String, dynamic> json) { return LoadBalancingRules2Overrides(
  adaptiveRouting: json['adaptive_routing'] != null ? LoadBalancingAdaptiveRouting.fromJson(json['adaptive_routing'] as Map<String, dynamic>) : null,
  countryPools: (json['country_pools'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList())),
  defaultPools: (json['default_pools'] as List<dynamic>?)?.map((e) => e as String).toList(),
  fallbackPool: json['fallback_pool'] != null ? LoadBalancingFallbackPool.fromJson(json['fallback_pool'] as String) : null,
  locationStrategy: json['location_strategy'] != null ? LoadBalancingLocationStrategy.fromJson(json['location_strategy'] as Map<String, dynamic>) : null,
  popPools: (json['pop_pools'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList())),
  randomSteering: json['random_steering'] != null ? LoadBalancingRandomSteering.fromJson(json['random_steering'] as Map<String, dynamic>) : null,
  regionPools: (json['region_pools'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList())),
  sessionAffinity: json['session_affinity'] != null ? LoadBalancingSessionAffinity.fromJson(json['session_affinity'] as String) : null,
  sessionAffinityAttributes: json['session_affinity_attributes'] != null ? LoadBalancingSessionAffinityAttributes.fromJson(json['session_affinity_attributes'] as Map<String, dynamic>) : null,
  sessionAffinityTtl: json['session_affinity_ttl'] != null ? LoadBalancingSessionAffinityTtl.fromJson(json['session_affinity_ttl'] as num) : null,
  steeringPolicy: json['steering_policy'] != null ? LoadBalancingSteeringPolicy.fromJson(json['steering_policy'] as String) : null,
  ttl: json['ttl'] != null ? LoadBalancingTtl.fromJson(json['ttl'] as num) : null,
); }

final LoadBalancingAdaptiveRouting? adaptiveRouting;

/// A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region_pool mapping if it exists else to default_pools.
final Map<String,List<String>>? countryPools;

/// A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when region_pools are not configured for a given region.
final List<String>? defaultPools;

/// The pool ID to use when all other pools are detected as unhealthy.
final LoadBalancingFallbackPool? fallbackPool;

final LoadBalancingLocationStrategy? locationStrategy;

/// Enterprise only: A mapping of Cloudflare PoP identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). Any PoPs not explicitly defined will fall back to using the corresponding country_pool, then region_pool mapping if it exists else to default_pools.
final Map<String,List<String>>? popPools;

final LoadBalancingRandomSteering? randomSteering;

/// A mapping of region codes to a list of pool IDs (ordered by their failover priority) for the given region. Any regions not explicitly defined will fall back to using default_pools.
final Map<String,List<String>>? regionPools;

final LoadBalancingSessionAffinity? sessionAffinity;

final LoadBalancingSessionAffinityAttributes? sessionAffinityAttributes;

final LoadBalancingSessionAffinityTtl? sessionAffinityTtl;

final LoadBalancingSteeringPolicy? steeringPolicy;

final LoadBalancingTtl? ttl;

Map<String, dynamic> toJson() { return {
  if (adaptiveRouting != null) 'adaptive_routing': adaptiveRouting?.toJson(),
  if (countryPools != null) 'country_pools': countryPools?.map((k, v) => MapEntry(k, v)),
  'default_pools': ?defaultPools,
  if (fallbackPool != null) 'fallback_pool': fallbackPool?.toJson(),
  if (locationStrategy != null) 'location_strategy': locationStrategy?.toJson(),
  if (popPools != null) 'pop_pools': popPools?.map((k, v) => MapEntry(k, v)),
  if (randomSteering != null) 'random_steering': randomSteering?.toJson(),
  if (regionPools != null) 'region_pools': regionPools?.map((k, v) => MapEntry(k, v)),
  if (sessionAffinity != null) 'session_affinity': sessionAffinity?.toJson(),
  if (sessionAffinityAttributes != null) 'session_affinity_attributes': sessionAffinityAttributes?.toJson(),
  if (sessionAffinityTtl != null) 'session_affinity_ttl': sessionAffinityTtl?.toJson(),
  if (steeringPolicy != null) 'steering_policy': steeringPolicy?.toJson(),
  if (ttl != null) 'ttl': ttl?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'adaptive_routing', 'country_pools', 'default_pools', 'fallback_pool', 'location_strategy', 'pop_pools', 'random_steering', 'region_pools', 'session_affinity', 'session_affinity_attributes', 'session_affinity_ttl', 'steering_policy', 'ttl'}.contains(key)); } 
LoadBalancingRules2Overrides copyWith({LoadBalancingAdaptiveRouting Function()? adaptiveRouting, Map<String, List<String>> Function()? countryPools, List<String> Function()? defaultPools, LoadBalancingFallbackPool Function()? fallbackPool, LoadBalancingLocationStrategy Function()? locationStrategy, Map<String, List<String>> Function()? popPools, LoadBalancingRandomSteering Function()? randomSteering, Map<String, List<String>> Function()? regionPools, LoadBalancingSessionAffinity Function()? sessionAffinity, LoadBalancingSessionAffinityAttributes Function()? sessionAffinityAttributes, LoadBalancingSessionAffinityTtl Function()? sessionAffinityTtl, LoadBalancingSteeringPolicy Function()? steeringPolicy, LoadBalancingTtl Function()? ttl, }) { return LoadBalancingRules2Overrides(
  adaptiveRouting: adaptiveRouting != null ? adaptiveRouting() : this.adaptiveRouting,
  countryPools: countryPools != null ? countryPools() : this.countryPools,
  defaultPools: defaultPools != null ? defaultPools() : this.defaultPools,
  fallbackPool: fallbackPool != null ? fallbackPool() : this.fallbackPool,
  locationStrategy: locationStrategy != null ? locationStrategy() : this.locationStrategy,
  popPools: popPools != null ? popPools() : this.popPools,
  randomSteering: randomSteering != null ? randomSteering() : this.randomSteering,
  regionPools: regionPools != null ? regionPools() : this.regionPools,
  sessionAffinity: sessionAffinity != null ? sessionAffinity() : this.sessionAffinity,
  sessionAffinityAttributes: sessionAffinityAttributes != null ? sessionAffinityAttributes() : this.sessionAffinityAttributes,
  sessionAffinityTtl: sessionAffinityTtl != null ? sessionAffinityTtl() : this.sessionAffinityTtl,
  steeringPolicy: steeringPolicy != null ? steeringPolicy() : this.steeringPolicy,
  ttl: ttl != null ? ttl() : this.ttl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingRules2Overrides &&
          adaptiveRouting == other.adaptiveRouting &&
          countryPools == other.countryPools &&
          listEquals(defaultPools, other.defaultPools) &&
          fallbackPool == other.fallbackPool &&
          locationStrategy == other.locationStrategy &&
          popPools == other.popPools &&
          randomSteering == other.randomSteering &&
          regionPools == other.regionPools &&
          sessionAffinity == other.sessionAffinity &&
          sessionAffinityAttributes == other.sessionAffinityAttributes &&
          sessionAffinityTtl == other.sessionAffinityTtl &&
          steeringPolicy == other.steeringPolicy &&
          ttl == other.ttl; } 
@override int get hashCode { return Object.hash(adaptiveRouting, countryPools, Object.hashAll(defaultPools ?? const []), fallbackPool, locationStrategy, popPools, randomSteering, regionPools, sessionAffinity, sessionAffinityAttributes, sessionAffinityTtl, steeringPolicy, ttl); } 
@override String toString() { return 'LoadBalancingRules2Overrides(adaptiveRouting: $adaptiveRouting, countryPools: $countryPools, defaultPools: $defaultPools, fallbackPool: $fallbackPool, locationStrategy: $locationStrategy, popPools: $popPools, randomSteering: $randomSteering, regionPools: $regionPools, sessionAffinity: $sessionAffinity, sessionAffinityAttributes: $sessionAffinityAttributes, sessionAffinityTtl: $sessionAffinityTtl, steeringPolicy: $steeringPolicy, ttl: $ttl)'; } 
 }
