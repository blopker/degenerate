// GENERATED CODE - DO NOT MODIFY BY HAND

/// Value of the Cache Reserve zone setting.
final class CacheRulesCacheReserveValue {const CacheRulesCacheReserveValue._(this.value);

factory CacheRulesCacheReserveValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => CacheRulesCacheReserveValue._(json),
}; }

static const CacheRulesCacheReserveValue $on = CacheRulesCacheReserveValue._('on');

static const CacheRulesCacheReserveValue off = CacheRulesCacheReserveValue._('off');

static const List<CacheRulesCacheReserveValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesCacheReserveValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesCacheReserveValue($value)'; } 
 }
