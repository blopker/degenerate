// GENERATED CODE - DO NOT MODIFY BY HAND

/// Value of the Tiered Cache zone setting.
final class CacheRulesTieredCacheValue {const CacheRulesTieredCacheValue._(this.value);

factory CacheRulesTieredCacheValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => CacheRulesTieredCacheValue._(json),
}; }

static const CacheRulesTieredCacheValue $on = CacheRulesTieredCacheValue._('on');

static const CacheRulesTieredCacheValue off = CacheRulesTieredCacheValue._('off');

static const List<CacheRulesTieredCacheValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesTieredCacheValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesTieredCacheValue($value)'; } 
 }
