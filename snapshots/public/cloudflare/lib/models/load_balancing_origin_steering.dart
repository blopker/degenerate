// GENERATED CODE - DO NOT MODIFY BY HAND

/// The type of origin steering policy to use.
/// - `"random"`: Select an origin randomly.
/// - `"hash"`: Select an origin by computing a hash over the CF-Connecting-IP address.
/// - `"least_outstanding_requests"`: Select an origin by taking into consideration origin weights, as well as each origin's number of outstanding requests. Origins with more pending requests are weighted proportionately less relative to others.
/// - `"least_connections"`: Select an origin by taking into consideration origin weights, as well as each origin's number of open connections. Origins with more open connections are weighted proportionately less relative to others. Supported for HTTP/1 and HTTP/2 connections.
final class LoadBalancingOriginSteeringPolicy {const LoadBalancingOriginSteeringPolicy._(this.value);

factory LoadBalancingOriginSteeringPolicy.fromJson(String json) { return switch (json) {
  'random' => random,
  'hash' => hash,
  'least_outstanding_requests' => leastOutstandingRequests,
  'least_connections' => leastConnections,
  _ => LoadBalancingOriginSteeringPolicy._(json),
}; }

static const LoadBalancingOriginSteeringPolicy random = LoadBalancingOriginSteeringPolicy._('random');

static const LoadBalancingOriginSteeringPolicy hash = LoadBalancingOriginSteeringPolicy._('hash');

static const LoadBalancingOriginSteeringPolicy leastOutstandingRequests = LoadBalancingOriginSteeringPolicy._('least_outstanding_requests');

static const LoadBalancingOriginSteeringPolicy leastConnections = LoadBalancingOriginSteeringPolicy._('least_connections');

static const List<LoadBalancingOriginSteeringPolicy> values = [random, hash, leastOutstandingRequests, leastConnections];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LoadBalancingOriginSteeringPolicy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LoadBalancingOriginSteeringPolicy($value)'; } 
 }
/// Configures origin steering for the pool. Controls how origins are selected for new sessions and traffic without session affinity.
final class LoadBalancingOriginSteering {const LoadBalancingOriginSteering({this.policy = LoadBalancingOriginSteeringPolicy.random});

factory LoadBalancingOriginSteering.fromJson(Map<String, dynamic> json) { return LoadBalancingOriginSteering(
  policy: json.containsKey('policy') ? LoadBalancingOriginSteeringPolicy.fromJson(json['policy'] as String) : LoadBalancingOriginSteeringPolicy.random,
); }

/// The type of origin steering policy to use.
/// - `"random"`: Select an origin randomly.
/// - `"hash"`: Select an origin by computing a hash over the CF-Connecting-IP address.
/// - `"least_outstanding_requests"`: Select an origin by taking into consideration origin weights, as well as each origin's number of outstanding requests. Origins with more pending requests are weighted proportionately less relative to others.
/// - `"least_connections"`: Select an origin by taking into consideration origin weights, as well as each origin's number of open connections. Origins with more open connections are weighted proportionately less relative to others. Supported for HTTP/1 and HTTP/2 connections.
final LoadBalancingOriginSteeringPolicy policy;

Map<String, dynamic> toJson() { return {
  'policy': policy.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'policy'}.contains(key)); } 
LoadBalancingOriginSteering copyWith({LoadBalancingOriginSteeringPolicy Function()? policy}) { return LoadBalancingOriginSteering(
  policy: policy != null ? policy() : this.policy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingOriginSteering &&
          policy == other.policy; } 
@override int get hashCode { return policy.hashCode; } 
@override String toString() { return 'LoadBalancingOriginSteering(policy: $policy)'; } 
 }
