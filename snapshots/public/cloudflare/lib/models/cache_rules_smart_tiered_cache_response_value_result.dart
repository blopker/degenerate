// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_smart_tiered_cache_value.dart';@immutable final class CacheRulesSmartTieredCacheResponseValueResult {const CacheRulesSmartTieredCacheResponseValueResult({required this.value});

factory CacheRulesSmartTieredCacheResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesSmartTieredCacheResponseValueResult(
  value: CacheRulesSmartTieredCacheValue.fromJson(json['value'] as String),
); }

final CacheRulesSmartTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
CacheRulesSmartTieredCacheResponseValueResult copyWith({CacheRulesSmartTieredCacheValue? value}) { return CacheRulesSmartTieredCacheResponseValueResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesSmartTieredCacheResponseValueResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesSmartTieredCacheResponseValueResult(value: $value)'; } 
 }
