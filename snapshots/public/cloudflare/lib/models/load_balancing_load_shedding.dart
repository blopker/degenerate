// GENERATED CODE - DO NOT MODIFY BY HAND

/// The default policy to use when load shedding. A random policy randomly sheds a given percent of requests. A hash policy computes a hash over the CF-Connecting-IP address and sheds all requests originating from a percent of IPs.
final class LoadBalancingLoadSheddingDefaultPolicy {const LoadBalancingLoadSheddingDefaultPolicy._(this.value);

factory LoadBalancingLoadSheddingDefaultPolicy.fromJson(String json) { return switch (json) {
  'random' => random,
  'hash' => hash,
  _ => LoadBalancingLoadSheddingDefaultPolicy._(json),
}; }

static const LoadBalancingLoadSheddingDefaultPolicy random = LoadBalancingLoadSheddingDefaultPolicy._('random');

static const LoadBalancingLoadSheddingDefaultPolicy hash = LoadBalancingLoadSheddingDefaultPolicy._('hash');

static const List<LoadBalancingLoadSheddingDefaultPolicy> values = [random, hash];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LoadBalancingLoadSheddingDefaultPolicy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LoadBalancingLoadSheddingDefaultPolicy($value)'; } 
 }
/// Only the hash policy is supported for existing sessions (to avoid exponential decay).
final class LoadBalancingLoadSheddingSessionPolicy {const LoadBalancingLoadSheddingSessionPolicy._(this.value);

factory LoadBalancingLoadSheddingSessionPolicy.fromJson(String json) { return switch (json) {
  'hash' => hash,
  _ => LoadBalancingLoadSheddingSessionPolicy._(json),
}; }

static const LoadBalancingLoadSheddingSessionPolicy hash = LoadBalancingLoadSheddingSessionPolicy._('hash');

static const List<LoadBalancingLoadSheddingSessionPolicy> values = [hash];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LoadBalancingLoadSheddingSessionPolicy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LoadBalancingLoadSheddingSessionPolicy($value)'; } 
 }
/// Configures load shedding policies and percentages for the pool.
final class LoadBalancingLoadShedding {const LoadBalancingLoadShedding({this.defaultPercent = 0.0, this.defaultPolicy = LoadBalancingLoadSheddingDefaultPolicy.random, this.sessionPercent = 0.0, this.sessionPolicy = LoadBalancingLoadSheddingSessionPolicy.hash, });

factory LoadBalancingLoadShedding.fromJson(Map<String, dynamic> json) { return LoadBalancingLoadShedding(
  defaultPercent: json.containsKey('default_percent') ? (json['default_percent'] as num).toDouble() : 0.0,
  defaultPolicy: json.containsKey('default_policy') ? LoadBalancingLoadSheddingDefaultPolicy.fromJson(json['default_policy'] as String) : LoadBalancingLoadSheddingDefaultPolicy.random,
  sessionPercent: json.containsKey('session_percent') ? (json['session_percent'] as num).toDouble() : 0.0,
  sessionPolicy: json.containsKey('session_policy') ? LoadBalancingLoadSheddingSessionPolicy.fromJson(json['session_policy'] as String) : LoadBalancingLoadSheddingSessionPolicy.hash,
); }

/// The percent of traffic to shed from the pool, according to the default policy. Applies to new sessions and traffic without session affinity.
final double defaultPercent;

/// The default policy to use when load shedding. A random policy randomly sheds a given percent of requests. A hash policy computes a hash over the CF-Connecting-IP address and sheds all requests originating from a percent of IPs.
final LoadBalancingLoadSheddingDefaultPolicy defaultPolicy;

/// The percent of existing sessions to shed from the pool, according to the session policy.
final double sessionPercent;

/// Only the hash policy is supported for existing sessions (to avoid exponential decay).
final LoadBalancingLoadSheddingSessionPolicy sessionPolicy;

Map<String, dynamic> toJson() { return {
  'default_percent': defaultPercent,
  'default_policy': defaultPolicy.toJson(),
  'session_percent': sessionPercent,
  'session_policy': sessionPolicy.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
LoadBalancingLoadShedding copyWith({double Function()? defaultPercent, LoadBalancingLoadSheddingDefaultPolicy Function()? defaultPolicy, double Function()? sessionPercent, LoadBalancingLoadSheddingSessionPolicy Function()? sessionPolicy, }) { return LoadBalancingLoadShedding(
  defaultPercent: defaultPercent != null ? defaultPercent() : this.defaultPercent,
  defaultPolicy: defaultPolicy != null ? defaultPolicy() : this.defaultPolicy,
  sessionPercent: sessionPercent != null ? sessionPercent() : this.sessionPercent,
  sessionPolicy: sessionPolicy != null ? sessionPolicy() : this.sessionPolicy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingLoadShedding &&
          defaultPercent == other.defaultPercent &&
          defaultPolicy == other.defaultPolicy &&
          sessionPercent == other.sessionPercent &&
          sessionPolicy == other.sessionPolicy; } 
@override int get hashCode { return Object.hash(defaultPercent, defaultPolicy, sessionPercent, sessionPolicy); } 
@override String toString() { return 'LoadBalancingLoadShedding(defaultPercent: $defaultPercent, defaultPolicy: $defaultPolicy, sessionPercent: $sessionPercent, sessionPolicy: $sessionPolicy)'; } 
 }
