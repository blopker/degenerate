// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_adaptive_routing.dart';import 'load_balancing_components_schemas_description.dart';import 'load_balancing_components_schemas_enabled.dart';import 'load_balancing_components_schemas_name.dart';import 'load_balancing_fallback_pool.dart';import 'load_balancing_location_strategy.dart';import 'load_balancing_proxied.dart';import 'load_balancing_random_steering.dart';import 'load_balancing_rules2.dart';import 'load_balancing_session_affinity.dart';import 'load_balancing_session_affinity_attributes.dart';import 'load_balancing_session_affinity_ttl.dart';import 'load_balancing_steering_policy.dart';import 'load_balancing_ttl.dart';@immutable final class LoadBalancersPatchLoadBalancerRequest {const LoadBalancersPatchLoadBalancerRequest({this.adaptiveRouting, this.countryPools, this.defaultPools, this.description, this.enabled, this.fallbackPool, this.locationStrategy, this.name, this.popPools, this.proxied, this.randomSteering, this.regionPools, this.rules, this.sessionAffinity, this.sessionAffinityAttributes, this.sessionAffinityTtl, this.steeringPolicy, this.ttl, });

factory LoadBalancersPatchLoadBalancerRequest.fromJson(Map<String, dynamic> json) { return LoadBalancersPatchLoadBalancerRequest(
  adaptiveRouting: json['adaptive_routing'] != null ? LoadBalancingAdaptiveRouting.fromJson(json['adaptive_routing'] as Map<String, dynamic>) : null,
  countryPools: (json['country_pools'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList())),
  defaultPools: (json['default_pools'] as List<dynamic>?)?.map((e) => e as String).toList(),
  description: json['description'] != null ? LoadBalancingComponentsSchemasDescription.fromJson(json['description'] as String) : null,
  enabled: json['enabled'] != null ? LoadBalancingComponentsSchemasEnabled.fromJson(json['enabled'] as bool) : null,
  fallbackPool: json['fallback_pool'] != null ? LoadBalancingFallbackPool.fromJson(json['fallback_pool'] as String) : null,
  locationStrategy: json['location_strategy'] != null ? LoadBalancingLocationStrategy.fromJson(json['location_strategy'] as Map<String, dynamic>) : null,
  name: json['name'] != null ? LoadBalancingComponentsSchemasName.fromJson(json['name'] as String) : null,
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
); }

final LoadBalancingAdaptiveRouting? adaptiveRouting;

/// A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region_pool mapping if it exists else to default_pools.
final Map<String,List<String>>? countryPools;

/// A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when region_pools are not configured for a given region.
final List<String>? defaultPools;

/// Object description.
final LoadBalancingComponentsSchemasDescription? description;

/// Whether to enable (the default) this load balancer.
final LoadBalancingComponentsSchemasEnabled? enabled;

/// The pool ID to use when all other pools are detected as unhealthy.
final LoadBalancingFallbackPool? fallbackPool;

final LoadBalancingLocationStrategy? locationStrategy;

/// The DNS hostname to associate with your Load Balancer. If this hostname already exists as a DNS record in Cloudflare's DNS, the Load Balancer will take precedence and the DNS record will not be used.
final LoadBalancingComponentsSchemasName? name;

/// Enterprise only: A mapping of Cloudflare PoP identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). Any PoPs not explicitly defined will fall back to using the corresponding country_pool, then region_pool mapping if it exists else to default_pools.
final Map<String,List<String>>? popPools;

/// Whether the hostname should be gray clouded (false) or orange clouded (true).
final LoadBalancingProxied? proxied;

final LoadBalancingRandomSteering? randomSteering;

/// A mapping of region codes to a list of pool IDs (ordered by their failover priority) for the given region. Any regions not explicitly defined will fall back to using default_pools.
final Map<String,List<String>>? regionPools;

/// BETA Field Not General Access: A list of rules for this load balancer to execute.
final List<LoadBalancingRules2>? rules;

/// Specifies the type of session affinity the load balancer should use unless specified as `"none"`. The supported types are: - `"cookie"`: On the first request to a proxied load balancer, a cookie is generated, encoding information of which origin the request will be forwarded to. Subsequent requests, by the same client to the same load balancer, will be sent to the origin server the cookie encodes, for the duration of the cookie and as long as the origin server remains healthy. If the cookie has expired or the origin server is unhealthy, then a new origin server is calculated and used. - `"ip_cookie"`: Behaves the same as `"cookie"` except the initial origin selection is stable and based on the client's ip address. - `"header"`: On the first request to a proxied load balancer, a session key based on the configured HTTP headers (see `session_affinity_attributes.headers`) is generated, encoding the request headers used for storing in the load balancer session state which origin the request will be forwarded to. Subsequent requests to the load balancer with the same headers will be sent to the same origin server, for the duration of the session and as long as the origin server remains healthy. If the session has been idle for the duration of `session_affinity_ttl` seconds or the origin server is unhealthy, then a new origin server is calculated and used. See `headers` in `session_affinity_attributes` for additional required configuration.
final LoadBalancingSessionAffinity? sessionAffinity;

final LoadBalancingSessionAffinityAttributes? sessionAffinityAttributes;

/// Time, in seconds, until a client's session expires after being created. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. The accepted ranges per `session_affinity` policy are: - `"cookie"` / `"ip_cookie"`: The current default of 23 hours will be used unless explicitly set. The accepted range of values is between [1800, 604800]. - `"header"`: The current default of 1800 seconds will be used unless explicitly set. The accepted range of values is between [30, 3600]. Note: With session affinity by header, sessions only expire after they haven't been used for the number of seconds specified.
final LoadBalancingSessionAffinityTtl? sessionAffinityTtl;

/// Steering Policy for this load balancer.
/// - `"off"`: Use `default_pools`.
/// - `"geo"`: Use `region_pools`/`country_pools`/`pop_pools`. For non-proxied requests, the country for `country_pools` is determined by `location_strategy`.
/// - `"random"`: Select a pool randomly.
/// - `"dynamic_latency"`: Use round trip time to select the closest pool in default_pools (requires pool health checks).
/// - `"proximity"`: Use the pools' latitude and longitude to select the closest pool using the Cloudflare PoP location for proxied requests or the location determined by `location_strategy` for non-proxied requests.
/// - `"least_outstanding_requests"`: Select a pool by taking into consideration `random_steering` weights, as well as each pool's number of outstanding requests. Pools with more pending requests are weighted proportionately less relative to others.
/// - `"least_connections"`: Select a pool by taking into consideration `random_steering` weights, as well as each pool's number of open connections. Pools with more open connections are weighted proportionately less relative to others. Supported for HTTP/1 and HTTP/2 connections.
/// - `""`: Will map to `"geo"` if you use `region_pools`/`country_pools`/`pop_pools` otherwise `"off"`.
final LoadBalancingSteeringPolicy? steeringPolicy;

/// Time to live (TTL) of the DNS entry for the IP address returned by this load balancer. This only applies to gray-clouded (unproxied) load balancers.
final LoadBalancingTtl? ttl;

Map<String, dynamic> toJson() { return {
  if (adaptiveRouting != null) 'adaptive_routing': adaptiveRouting?.toJson(),
  if (countryPools != null) 'country_pools': countryPools?.map((k, v) => MapEntry(k, v)),
  'default_pools': ?defaultPools,
  if (description != null) 'description': description?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (fallbackPool != null) 'fallback_pool': fallbackPool?.toJson(),
  if (locationStrategy != null) 'location_strategy': locationStrategy?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (popPools != null) 'pop_pools': popPools?.map((k, v) => MapEntry(k, v)),
  if (proxied != null) 'proxied': proxied?.toJson(),
  if (randomSteering != null) 'random_steering': randomSteering?.toJson(),
  if (regionPools != null) 'region_pools': regionPools?.map((k, v) => MapEntry(k, v)),
  if (rules != null) 'rules': rules?.map((e) => e.toJson()).toList(),
  if (sessionAffinity != null) 'session_affinity': sessionAffinity?.toJson(),
  if (sessionAffinityAttributes != null) 'session_affinity_attributes': sessionAffinityAttributes?.toJson(),
  if (sessionAffinityTtl != null) 'session_affinity_ttl': sessionAffinityTtl?.toJson(),
  if (steeringPolicy != null) 'steering_policy': steeringPolicy?.toJson(),
  if (ttl != null) 'ttl': ttl?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'adaptive_routing', 'country_pools', 'default_pools', 'description', 'enabled', 'fallback_pool', 'location_strategy', 'name', 'pop_pools', 'proxied', 'random_steering', 'region_pools', 'rules', 'session_affinity', 'session_affinity_attributes', 'session_affinity_ttl', 'steering_policy', 'ttl'}.contains(key)); } 
LoadBalancersPatchLoadBalancerRequest copyWith({LoadBalancingAdaptiveRouting Function()? adaptiveRouting, Map<String, List<String>> Function()? countryPools, List<String> Function()? defaultPools, LoadBalancingComponentsSchemasDescription Function()? description, LoadBalancingComponentsSchemasEnabled Function()? enabled, LoadBalancingFallbackPool Function()? fallbackPool, LoadBalancingLocationStrategy Function()? locationStrategy, LoadBalancingComponentsSchemasName Function()? name, Map<String, List<String>> Function()? popPools, LoadBalancingProxied Function()? proxied, LoadBalancingRandomSteering Function()? randomSteering, Map<String, List<String>> Function()? regionPools, List<LoadBalancingRules2> Function()? rules, LoadBalancingSessionAffinity Function()? sessionAffinity, LoadBalancingSessionAffinityAttributes Function()? sessionAffinityAttributes, LoadBalancingSessionAffinityTtl Function()? sessionAffinityTtl, LoadBalancingSteeringPolicy Function()? steeringPolicy, LoadBalancingTtl Function()? ttl, }) { return LoadBalancersPatchLoadBalancerRequest(
  adaptiveRouting: adaptiveRouting != null ? adaptiveRouting() : this.adaptiveRouting,
  countryPools: countryPools != null ? countryPools() : this.countryPools,
  defaultPools: defaultPools != null ? defaultPools() : this.defaultPools,
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  fallbackPool: fallbackPool != null ? fallbackPool() : this.fallbackPool,
  locationStrategy: locationStrategy != null ? locationStrategy() : this.locationStrategy,
  name: name != null ? name() : this.name,
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
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancersPatchLoadBalancerRequest &&
          adaptiveRouting == other.adaptiveRouting &&
          countryPools == other.countryPools &&
          listEquals(defaultPools, other.defaultPools) &&
          description == other.description &&
          enabled == other.enabled &&
          fallbackPool == other.fallbackPool &&
          locationStrategy == other.locationStrategy &&
          name == other.name &&
          popPools == other.popPools &&
          proxied == other.proxied &&
          randomSteering == other.randomSteering &&
          regionPools == other.regionPools &&
          listEquals(rules, other.rules) &&
          sessionAffinity == other.sessionAffinity &&
          sessionAffinityAttributes == other.sessionAffinityAttributes &&
          sessionAffinityTtl == other.sessionAffinityTtl &&
          steeringPolicy == other.steeringPolicy &&
          ttl == other.ttl; } 
@override int get hashCode { return Object.hash(adaptiveRouting, countryPools, Object.hashAll(defaultPools ?? const []), description, enabled, fallbackPool, locationStrategy, name, popPools, proxied, randomSteering, regionPools, Object.hashAll(rules ?? const []), sessionAffinity, sessionAffinityAttributes, sessionAffinityTtl, steeringPolicy, ttl); } 
@override String toString() { return 'LoadBalancersPatchLoadBalancerRequest(adaptiveRouting: $adaptiveRouting, countryPools: $countryPools, defaultPools: $defaultPools, description: $description, enabled: $enabled, fallbackPool: $fallbackPool, locationStrategy: $locationStrategy, name: $name, popPools: $popPools, proxied: $proxied, randomSteering: $randomSteering, regionPools: $regionPools, rules: $rules, sessionAffinity: $sessionAffinity, sessionAffinityAttributes: $sessionAffinityAttributes, sessionAffinityTtl: $sessionAffinityTtl, steeringPolicy: $steeringPolicy, ttl: $ttl)'; } 
 }
