// GENERATED CODE - DO NOT MODIFY BY HAND

/// The name of a legacy security product to skip the execution of.
final class RulesetsSkipProducts2 {const RulesetsSkipProducts2._(this.value);

factory RulesetsSkipProducts2.fromJson(String json) { return switch (json) {
  'bic' => bic,
  'hot' => hot,
  'rateLimit' => rateLimit,
  'securityLevel' => securityLevel,
  'uaBlock' => uaBlock,
  'waf' => waf,
  'zoneLockdown' => zoneLockdown,
  _ => RulesetsSkipProducts2._(json),
}; }

static const RulesetsSkipProducts2 bic = RulesetsSkipProducts2._('bic');

static const RulesetsSkipProducts2 hot = RulesetsSkipProducts2._('hot');

static const RulesetsSkipProducts2 rateLimit = RulesetsSkipProducts2._('rateLimit');

static const RulesetsSkipProducts2 securityLevel = RulesetsSkipProducts2._('securityLevel');

static const RulesetsSkipProducts2 uaBlock = RulesetsSkipProducts2._('uaBlock');

static const RulesetsSkipProducts2 waf = RulesetsSkipProducts2._('waf');

static const RulesetsSkipProducts2 zoneLockdown = RulesetsSkipProducts2._('zoneLockdown');

static const List<RulesetsSkipProducts2> values = [bic, hot, rateLimit, securityLevel, uaBlock, waf, zoneLockdown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RulesetsSkipProducts2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RulesetsSkipProducts2($value)'; } 
 }
