// GENERATED CODE - DO NOT MODIFY BY HAND

/// Determines the authoritative location when ECS is not preferred, does not exist in the request, or its GeoIP lookup is unsuccessful.
/// - `"pop"`: Use the Cloudflare PoP location.
/// - `"resolver_ip"`: Use the DNS resolver GeoIP location. If the GeoIP lookup is unsuccessful, use the Cloudflare PoP location.
final class LoadBalancingLocationStrategyMode {const LoadBalancingLocationStrategyMode._(this.value);

factory LoadBalancingLocationStrategyMode.fromJson(String json) { return switch (json) {
  'pop' => pop,
  'resolver_ip' => resolverIp,
  _ => LoadBalancingLocationStrategyMode._(json),
}; }

static const LoadBalancingLocationStrategyMode pop = LoadBalancingLocationStrategyMode._('pop');

static const LoadBalancingLocationStrategyMode resolverIp = LoadBalancingLocationStrategyMode._('resolver_ip');

static const List<LoadBalancingLocationStrategyMode> values = [pop, resolverIp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LoadBalancingLocationStrategyMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LoadBalancingLocationStrategyMode($value)'; } 
 }
/// Whether the EDNS Client Subnet (ECS) GeoIP should be preferred as the authoritative location.
/// - `"always"`: Always prefer ECS.
/// - `"never"`: Never prefer ECS.
/// - `"proximity"`: Prefer ECS only when `steering_policy="proximity"`.
/// - `"geo"`: Prefer ECS only when `steering_policy="geo"`.
final class LoadBalancingLocationStrategyPreferEcs {const LoadBalancingLocationStrategyPreferEcs._(this.value);

factory LoadBalancingLocationStrategyPreferEcs.fromJson(String json) { return switch (json) {
  'always' => always,
  'never' => never,
  'proximity' => proximity,
  'geo' => geo,
  _ => LoadBalancingLocationStrategyPreferEcs._(json),
}; }

static const LoadBalancingLocationStrategyPreferEcs always = LoadBalancingLocationStrategyPreferEcs._('always');

static const LoadBalancingLocationStrategyPreferEcs never = LoadBalancingLocationStrategyPreferEcs._('never');

static const LoadBalancingLocationStrategyPreferEcs proximity = LoadBalancingLocationStrategyPreferEcs._('proximity');

static const LoadBalancingLocationStrategyPreferEcs geo = LoadBalancingLocationStrategyPreferEcs._('geo');

static const List<LoadBalancingLocationStrategyPreferEcs> values = [always, never, proximity, geo];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LoadBalancingLocationStrategyPreferEcs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LoadBalancingLocationStrategyPreferEcs($value)'; } 
 }
/// Controls location-based steering for non-proxied requests. See `steering_policy` to learn how steering is affected.
final class LoadBalancingLocationStrategy {const LoadBalancingLocationStrategy({this.mode = LoadBalancingLocationStrategyMode.pop, this.preferEcs = LoadBalancingLocationStrategyPreferEcs.proximity, });

factory LoadBalancingLocationStrategy.fromJson(Map<String, dynamic> json) { return LoadBalancingLocationStrategy(
  mode: json.containsKey('mode') ? LoadBalancingLocationStrategyMode.fromJson(json['mode'] as String) : LoadBalancingLocationStrategyMode.pop,
  preferEcs: json.containsKey('prefer_ecs') ? LoadBalancingLocationStrategyPreferEcs.fromJson(json['prefer_ecs'] as String) : LoadBalancingLocationStrategyPreferEcs.proximity,
); }

/// Determines the authoritative location when ECS is not preferred, does not exist in the request, or its GeoIP lookup is unsuccessful.
/// - `"pop"`: Use the Cloudflare PoP location.
/// - `"resolver_ip"`: Use the DNS resolver GeoIP location. If the GeoIP lookup is unsuccessful, use the Cloudflare PoP location.
final LoadBalancingLocationStrategyMode mode;

/// Whether the EDNS Client Subnet (ECS) GeoIP should be preferred as the authoritative location.
/// - `"always"`: Always prefer ECS.
/// - `"never"`: Never prefer ECS.
/// - `"proximity"`: Prefer ECS only when `steering_policy="proximity"`.
/// - `"geo"`: Prefer ECS only when `steering_policy="geo"`.
final LoadBalancingLocationStrategyPreferEcs preferEcs;

Map<String, dynamic> toJson() { return {
  'mode': mode.toJson(),
  'prefer_ecs': preferEcs.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
LoadBalancingLocationStrategy copyWith({LoadBalancingLocationStrategyMode Function()? mode, LoadBalancingLocationStrategyPreferEcs Function()? preferEcs, }) { return LoadBalancingLocationStrategy(
  mode: mode != null ? mode() : this.mode,
  preferEcs: preferEcs != null ? preferEcs() : this.preferEcs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingLocationStrategy &&
          mode == other.mode &&
          preferEcs == other.preferEcs; } 
@override int get hashCode { return Object.hash(mode, preferEcs); } 
@override String toString() { return 'LoadBalancingLocationStrategy(mode: $mode, preferEcs: $preferEcs)'; } 
 }
