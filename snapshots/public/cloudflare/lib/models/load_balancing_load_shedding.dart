// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The default policy to use when load shedding. A random policy randomly sheds a given percent of requests. A hash policy computes a hash over the CF-Connecting-IP address and sheds all requests originating from a percent of IPs.
@immutable final class LoadBalancingLoadSheddingDefaultPolicy {const LoadBalancingLoadSheddingDefaultPolicy._(this.value);

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
@immutable final class LoadBalancingLoadSheddingSessionPolicy {const LoadBalancingLoadSheddingSessionPolicy._(this.value);

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
@immutable final class LoadBalancingLoadShedding {const LoadBalancingLoadShedding({this.defaultPercent, this.defaultPolicy, this.sessionPercent, this.sessionPolicy, });

factory LoadBalancingLoadShedding.fromJson(Map<String, dynamic> json) { return LoadBalancingLoadShedding(
  defaultPercent: json['default_percent'] != null ? (json['default_percent'] as num).toDouble() : null,
  defaultPolicy: json['default_policy'] != null ? LoadBalancingLoadSheddingDefaultPolicy.fromJson(json['default_policy'] as String) : null,
  sessionPercent: json['session_percent'] != null ? (json['session_percent'] as num).toDouble() : null,
  sessionPolicy: json['session_policy'] != null ? LoadBalancingLoadSheddingSessionPolicy.fromJson(json['session_policy'] as String) : null,
); }

/// The percent of traffic to shed from the pool, according to the default policy. Applies to new sessions and traffic without session affinity.
final double? defaultPercent;

/// The default policy to use when load shedding. A random policy randomly sheds a given percent of requests. A hash policy computes a hash over the CF-Connecting-IP address and sheds all requests originating from a percent of IPs.
final LoadBalancingLoadSheddingDefaultPolicy? defaultPolicy;

/// The percent of existing sessions to shed from the pool, according to the session policy.
final double? sessionPercent;

/// Only the hash policy is supported for existing sessions (to avoid exponential decay).
final LoadBalancingLoadSheddingSessionPolicy? sessionPolicy;

/// The value with the schema default applied when absent.
double get defaultPercentOrDefault { return defaultPercent ?? 0.0; } 
/// The value with the schema default applied when absent.
LoadBalancingLoadSheddingDefaultPolicy get defaultPolicyOrDefault { return defaultPolicy ?? LoadBalancingLoadSheddingDefaultPolicy.fromJson('random'); } 
/// The value with the schema default applied when absent.
double get sessionPercentOrDefault { return sessionPercent ?? 0.0; } 
/// The value with the schema default applied when absent.
LoadBalancingLoadSheddingSessionPolicy get sessionPolicyOrDefault { return sessionPolicy ?? LoadBalancingLoadSheddingSessionPolicy.fromJson('hash'); } 
Map<String, dynamic> toJson() { return {
  'default_percent': ?defaultPercent,
  if (defaultPolicy != null) 'default_policy': defaultPolicy?.toJson(),
  'session_percent': ?sessionPercent,
  if (sessionPolicy != null) 'session_policy': sessionPolicy?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_percent', 'default_policy', 'session_percent', 'session_policy'}.contains(key)); } 
LoadBalancingLoadShedding copyWith({double? Function()? defaultPercent, LoadBalancingLoadSheddingDefaultPolicy? Function()? defaultPolicy, double? Function()? sessionPercent, LoadBalancingLoadSheddingSessionPolicy? Function()? sessionPolicy, }) { return LoadBalancingLoadShedding(
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
