// GENERATED CODE - DO NOT MODIFY BY HAND

/// The name of the rate limit (`requests`, `tokens`).
/// 
final class RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName {const RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName._(this.value);

factory RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName.fromJson(String json) { return switch (json) {
  'requests' => requests,
  'tokens' => tokens,
  _ => RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName._(json),
}; }

static const RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName requests = RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName._('requests');

static const RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName tokens = RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName._('tokens');

static const List<RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName> values = [requests, tokens];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName($value)'; } 
 }
final class RealtimeBetaServerEventRateLimitsUpdatedRateLimits {const RealtimeBetaServerEventRateLimitsUpdatedRateLimits({this.name, this.limit, this.remaining, this.resetSeconds, });

factory RealtimeBetaServerEventRateLimitsUpdatedRateLimits.fromJson(Map<String, dynamic> json) { return RealtimeBetaServerEventRateLimitsUpdatedRateLimits(
  name: json['name'] != null ? RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName.fromJson(json['name'] as String) : null,
  limit: json['limit'] != null ? (json['limit'] as num).toInt() : null,
  remaining: json['remaining'] != null ? (json['remaining'] as num).toInt() : null,
  resetSeconds: json['reset_seconds'] != null ? (json['reset_seconds'] as num).toDouble() : null,
); }

/// The name of the rate limit (`requests`, `tokens`).
/// 
final RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName? name;

/// The maximum allowed value for the rate limit.
final int? limit;

/// The remaining value before the limit is reached.
final int? remaining;

/// Seconds until the rate limit resets.
final double? resetSeconds;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
  'limit': ?limit,
  'remaining': ?remaining,
  'reset_seconds': ?resetSeconds,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimeBetaServerEventRateLimitsUpdatedRateLimits copyWith({RealtimeBetaServerEventRateLimitsUpdatedRateLimitsName Function()? name, int Function()? limit, int Function()? remaining, double Function()? resetSeconds, }) { return RealtimeBetaServerEventRateLimitsUpdatedRateLimits(
  name: name != null ? name() : this.name,
  limit: limit != null ? limit() : this.limit,
  remaining: remaining != null ? remaining() : this.remaining,
  resetSeconds: resetSeconds != null ? resetSeconds() : this.resetSeconds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaServerEventRateLimitsUpdatedRateLimits &&
          name == other.name &&
          limit == other.limit &&
          remaining == other.remaining &&
          resetSeconds == other.resetSeconds; } 
@override int get hashCode { return Object.hash(name, limit, remaining, resetSeconds); } 
@override String toString() { return 'RealtimeBetaServerEventRateLimitsUpdatedRateLimits(name: $name, limit: $limit, remaining: $remaining, resetSeconds: $resetSeconds)'; } 
 }
