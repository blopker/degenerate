// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the Regional Tiered Cache zone setting.
@immutable final class CacheRulesRegionalTieredCacheValue {const CacheRulesRegionalTieredCacheValue._(this.value);

factory CacheRulesRegionalTieredCacheValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => CacheRulesRegionalTieredCacheValue._(json),
}; }

static const CacheRulesRegionalTieredCacheValue $on = CacheRulesRegionalTieredCacheValue._('on');

static const CacheRulesRegionalTieredCacheValue off = CacheRulesRegionalTieredCacheValue._('off');

static const List<CacheRulesRegionalTieredCacheValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesRegionalTieredCacheValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesRegionalTieredCacheValue($value)'; } 
 }
