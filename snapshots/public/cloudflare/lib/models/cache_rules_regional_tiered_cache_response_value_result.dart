// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_regional_tiered_cache_value.dart';@immutable final class CacheRulesRegionalTieredCacheResponseValueResult {const CacheRulesRegionalTieredCacheResponseValueResult({required this.value});

factory CacheRulesRegionalTieredCacheResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesRegionalTieredCacheResponseValueResult(
  value: CacheRulesRegionalTieredCacheValue.fromJson(json['value'] as String),
); }

final CacheRulesRegionalTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
CacheRulesRegionalTieredCacheResponseValueResult copyWith({CacheRulesRegionalTieredCacheValue? value}) { return CacheRulesRegionalTieredCacheResponseValueResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesRegionalTieredCacheResponseValueResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesRegionalTieredCacheResponseValueResult(value: $value)'; } 
 }
