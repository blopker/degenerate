// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_adaptive_routing.dart';import 'load_balancing_components_schemas_description.dart';import 'load_balancing_components_schemas_enabled.dart';import 'load_balancing_components_schemas_name.dart';import 'load_balancing_fallback_pool.dart';import 'load_balancing_load_balancer_components_schemas_identifier.dart';import 'load_balancing_location_strategy.dart';import 'load_balancing_proxied.dart';import 'load_balancing_random_steering.dart';import 'load_balancing_rules2.dart';import 'load_balancing_session_affinity.dart';import 'load_balancing_session_affinity_attributes.dart';import 'load_balancing_session_affinity_ttl.dart';import 'load_balancing_steering_policy.dart';import 'load_balancing_timestamp.dart';import 'load_balancing_ttl.dart';extension type const LoadBalancingComponentsSchemasZoneName(String value) {
factory LoadBalancingComponentsSchemasZoneName.fromJson(String json) => LoadBalancingComponentsSchemasZoneName(json);

String toJson() => value;

}
@immutable final class LoadBalancingLoadBalancer {const LoadBalancingLoadBalancer({this.adaptiveRouting, this.countryPools, this.createdOn, this.defaultPools, this.description, this.enabled, this.fallbackPool, this.id, this.locationStrategy, this.modifiedOn, this.name, this.networks, this.popPools, this.proxied, this.randomSteering, this.regionPools, this.rules, this.sessionAffinity, this.sessionAffinityAttributes, this.sessionAffinityTtl, this.steeringPolicy, this.ttl, this.zoneName, });

factory LoadBalancingLoadBalancer.fromJson(Map<String, dynamic> json) { return LoadBalancingLoadBalancer(
  adaptiveRouting: json['adaptive_routing'] != null ? LoadBalancingAdaptiveRouting.fromJson(json['adaptive_routing'] as Map<String, dynamic>) : null,
  countryPools: (json['country_pools'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList())),
  createdOn: json['created_on'] != null ? LoadBalancingTimestamp.fromJson(json['created_on'] as String) : null,
  defaultPools: (json['default_pools'] as List<dynamic>?)?.map((e) => e as String).toList(),
  description: json['description'] != null ? LoadBalancingComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  enabled: json['enabled'] != null ? LoadBalancingComponentsSchemasEnabled.fromJson(json['enabled'] as bool) : null,
  fallbackPool: json['fallback_pool'] != null ? LoadBalancingFallbackPool.fromJson(json['fallback_pool'] as String) : null,
  id: json['id'] != null ? LoadBalancingLoadBalancerComponentsSchemasIdentifier.fromJson(json['id'] as String) : null,
  locationStrategy: json['location_strategy'] != null ? LoadBalancingLocationStrategy.fromJson(json['location_strategy'] as Map<String, dynamic>) : null,
  modifiedOn: json['modified_on'] != null ? LoadBalancingTimestamp.fromJson(json['modified_on'] as String) : null,
  name: json['name'] != null ? LoadBalancingComponentsSchemasName.fromJson(json['name'] as String) : null,
  networks: (json['networks'] as List<dynamic>?)?.map((e) => e as String).toList(),
  popPools: (json['pop_pools'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList())),
  proxied: json['proxied'] != null ? LoadBalancingProxied.fromJson(json['proxied'] as bool) : null,
  randomSteering: json['random_steering'] != null ? LoadBalancingRandomSteering.fromJson(json['random_steering'] as Map<String, dynamic>) : null,
  regionPools: (json['region_pools'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList())),
  rules: (json['rules'] as List<dynamic>?)?.map((e) => LoadBalancingRules2.fromJson(e as Map<String, dynamic>)).toList(),
  sessionAffinity: json['session_affinity'] != null ? LoadBalancingSessionAffinity.fromJson(json['session_affinity'] as String) : null,
  sessionAffinityAttributes: json['session_affinity_attributes'] != null ? LoadBalancingSessionAffinityAttributes.fromJson(json['session_affinity_attributes'] as Map<String, dynamic>) : null,
  sessionAffinityTtl: json['session_affinity_ttl'] != null ? LoadBalancingSessionAffinityTtl.fromJson(json['session_affinity_ttl'] as num) : null,
  steeringPolicy: json['steering_policy'] != null ? LoadBalancingSteeringPolicy.fromJson(json['steering_policy'] as String) : null,
  ttl: json['ttl'] != null ? LoadBalancingTtl.fromJson(json['ttl'] as num) : null,
  zoneName: json['zone_name'] != null ? LoadBalancingComponentsSchemasZoneName.fromJson(json['zone_name'] as String) : null,
); }

final LoadBalancingAdaptiveRouting? adaptiveRouting;

/// A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region_pool mapping if it exists else to default_pools.
final Map<String,List<String>>? countryPools;

final LoadBalancingTimestamp? createdOn;

/// A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when region_pools are not configured for a given region.
final List<String>? defaultPools;

/// Object description.
final LoadBalancingComponentsSchemasDescription? description;

/// Whether to enable (the default) this load balancer.
final LoadBalancingComponentsSchemasEnabled? enabled;

/// The pool ID to use when all other pools are detected as unhealthy.
final LoadBalancingFallbackPool? fallbackPool;

final LoadBalancingLoadBalancerComponentsSchemasIdentifier? id;

final LoadBalancingLocationStrategy? locationStrategy;

final LoadBalancingTimestamp? modifiedOn;

/// The DNS hostname to associate with your Load Balancer. If this hostname already exists as a DNS record in Cloudflare's DNS, the Load Balancer will take precedence and the DNS record will not be used.
final LoadBalancingComponentsSchemasName? name;

final List<String>? networks;

final Map<String,List<String>>? popPools;

final LoadBalancingProxied? proxied;

final LoadBalancingRandomSteering? randomSteering;

final Map<String,List<String>>? regionPools;

final List<LoadBalancingRules2>? rules;

final LoadBalancingSessionAffinity? sessionAffinity;

final LoadBalancingSessionAffinityAttributes? sessionAffinityAttributes;

final LoadBalancingSessionAffinityTtl? sessionAffinityTtl;

final LoadBalancingSteeringPolicy? steeringPolicy;

final LoadBalancingTtl? ttl;

final LoadBalancingComponentsSchemasZoneName? zoneName;

Map<String, dynamic> toJson() { return {
  if (adaptiveRouting != null) 'adaptive_routing': adaptiveRouting?.toJson(),
  'country_pools': ?countryPools,
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  'default_pools': ?defaultPools,
  if (description != null) 'description': description?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (fallbackPool != null) 'fallback_pool': fallbackPool?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (locationStrategy != null) 'location_strategy': locationStrategy?.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  if (name != null) 'name': name?.toJson(),
  'networks': ?networks,
  'pop_pools': ?popPools,
  if (proxied != null) 'proxied': proxied?.toJson(),
  if (randomSteering != null) 'random_steering': randomSteering?.toJson(),
  'region_pools': ?regionPools,
  if (rules != null) 'rules': rules?.map((e) => e.toJson()).toList(),
  if (sessionAffinity != null) 'session_affinity': sessionAffinity?.toJson(),
  if (sessionAffinityAttributes != null) 'session_affinity_attributes': sessionAffinityAttributes?.toJson(),
  if (sessionAffinityTtl != null) 'session_affinity_ttl': sessionAffinityTtl?.toJson(),
  if (steeringPolicy != null) 'steering_policy': steeringPolicy?.toJson(),
  if (ttl != null) 'ttl': ttl?.toJson(),
  if (zoneName != null) 'zone_name': zoneName?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'adaptive_routing', 'country_pools', 'created_on', 'default_pools', 'description', 'enabled', 'fallback_pool', 'id', 'location_strategy', 'modified_on', 'name', 'networks', 'pop_pools', 'proxied', 'random_steering', 'region_pools', 'rules', 'session_affinity', 'session_affinity_attributes', 'session_affinity_ttl', 'steering_policy', 'ttl', 'zone_name'}.contains(key)); } 
LoadBalancingLoadBalancer copyWith({LoadBalancingAdaptiveRouting Function()? adaptiveRouting, Map<String, List<String>> Function()? countryPools, LoadBalancingTimestamp Function()? createdOn, List<String> Function()? defaultPools, LoadBalancingComponentsSchemasDescription Function()? description, LoadBalancingComponentsSchemasEnabled Function()? enabled, LoadBalancingFallbackPool Function()? fallbackPool, LoadBalancingLoadBalancerComponentsSchemasIdentifier Function()? id, LoadBalancingLocationStrategy Function()? locationStrategy, LoadBalancingTimestamp Function()? modifiedOn, LoadBalancingComponentsSchemasName Function()? name, List<String> Function()? networks, Map<String, List<String>> Function()? popPools, LoadBalancingProxied Function()? proxied, LoadBalancingRandomSteering Function()? randomSteering, Map<String, List<String>> Function()? regionPools, List<LoadBalancingRules2> Function()? rules, LoadBalancingSessionAffinity Function()? sessionAffinity, LoadBalancingSessionAffinityAttributes Function()? sessionAffinityAttributes, LoadBalancingSessionAffinityTtl Function()? sessionAffinityTtl, LoadBalancingSteeringPolicy Function()? steeringPolicy, LoadBalancingTtl Function()? ttl, LoadBalancingComponentsSchemasZoneName Function()? zoneName, }) { return LoadBalancingLoadBalancer(
  adaptiveRouting: adaptiveRouting != null ? adaptiveRouting() : this.adaptiveRouting,
  countryPools: countryPools != null ? countryPools() : this.countryPools,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  defaultPools: defaultPools != null ? defaultPools() : this.defaultPools,
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  fallbackPool: fallbackPool != null ? fallbackPool() : this.fallbackPool,
  id: id != null ? id() : this.id,
  locationStrategy: locationStrategy != null ? locationStrategy() : this.locationStrategy,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  name: name != null ? name() : this.name,
  networks: networks != null ? networks() : this.networks,
  popPools: popPools != null ? popPools() : this.popPools,
  proxied: proxied != null ? proxied() : this.proxied,
  randomSteering: randomSteering != null ? randomSteering() : this.randomSteering,
  regionPools: regionPools != null ? regionPools() : this.regionPools,
  rules: rules != null ? rules() : this.rules,
  sessionAffinity: sessionAffinity != null ? sessionAffinity() : this.sessionAffinity,
  sessionAffinityAttributes: sessionAffinityAttributes != null ? sessionAffinityAttributes() : this.sessionAffinityAttributes,
  sessionAffinityTtl: sessionAffinityTtl != null ? sessionAffinityTtl() : this.sessionAffinityTtl,
  steeringPolicy: steeringPolicy != null ? steeringPolicy() : this.steeringPolicy,
  ttl: ttl != null ? ttl() : this.ttl,
  zoneName: zoneName != null ? zoneName() : this.zoneName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingLoadBalancer &&
          adaptiveRouting == other.adaptiveRouting &&
          countryPools == other.countryPools &&
          createdOn == other.createdOn &&
          listEquals(defaultPools, other.defaultPools) &&
          description == other.description &&
          enabled == other.enabled &&
          fallbackPool == other.fallbackPool &&
          id == other.id &&
          locationStrategy == other.locationStrategy &&
          modifiedOn == other.modifiedOn &&
          name == other.name &&
          listEquals(networks, other.networks) &&
          popPools == other.popPools &&
          proxied == other.proxied &&
          randomSteering == other.randomSteering &&
          regionPools == other.regionPools &&
          listEquals(rules, other.rules) &&
          sessionAffinity == other.sessionAffinity &&
          sessionAffinityAttributes == other.sessionAffinityAttributes &&
          sessionAffinityTtl == other.sessionAffinityTtl &&
          steeringPolicy == other.steeringPolicy &&
          ttl == other.ttl &&
          zoneName == other.zoneName; } 
@override int get hashCode { return Object.hashAll([adaptiveRouting, countryPools, createdOn, Object.hashAll(defaultPools ?? const []), description, enabled, fallbackPool, id, locationStrategy, modifiedOn, name, Object.hashAll(networks ?? const []), popPools, proxied, randomSteering, regionPools, Object.hashAll(rules ?? const []), sessionAffinity, sessionAffinityAttributes, sessionAffinityTtl, steeringPolicy, ttl, zoneName]); } 
@override String toString() { return 'LoadBalancingLoadBalancer(adaptiveRouting: $adaptiveRouting, countryPools: $countryPools, createdOn: $createdOn, defaultPools: $defaultPools, description: $description, enabled: $enabled, fallbackPool: $fallbackPool, id: $id, locationStrategy: $locationStrategy, modifiedOn: $modifiedOn, name: $name, networks: $networks, popPools: $popPools, proxied: $proxied, randomSteering: $randomSteering, regionPools: $regionPools, rules: $rules, sessionAffinity: $sessionAffinity, sessionAffinityAttributes: $sessionAffinityAttributes, sessionAffinityTtl: $sessionAffinityTtl, steeringPolicy: $steeringPolicy, ttl: $ttl, zoneName: $zoneName)'; } 
 }
