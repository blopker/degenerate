// GENERATED CODE - DO NOT MODIFY BY HAND

/// A list of products to bypass for a request when using the `bypass` action.
final class FirewallProducts2 {const FirewallProducts2._(this.value);

factory FirewallProducts2.fromJson(String json) { return switch (json) {
  'zoneLockdown' => zoneLockdown,
  'uaBlock' => uaBlock,
  'bic' => bic,
  'hot' => hot,
  'securityLevel' => securityLevel,
  'rateLimit' => rateLimit,
  'waf' => waf,
  _ => FirewallProducts2._(json),
}; }

static const FirewallProducts2 zoneLockdown = FirewallProducts2._('zoneLockdown');

static const FirewallProducts2 uaBlock = FirewallProducts2._('uaBlock');

static const FirewallProducts2 bic = FirewallProducts2._('bic');

static const FirewallProducts2 hot = FirewallProducts2._('hot');

static const FirewallProducts2 securityLevel = FirewallProducts2._('securityLevel');

static const FirewallProducts2 rateLimit = FirewallProducts2._('rateLimit');

static const FirewallProducts2 waf = FirewallProducts2._('waf');

static const List<FirewallProducts2> values = [zoneLockdown, uaBlock, bic, hot, securityLevel, rateLimit, waf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallProducts2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallProducts2($value)'; } 
 }
