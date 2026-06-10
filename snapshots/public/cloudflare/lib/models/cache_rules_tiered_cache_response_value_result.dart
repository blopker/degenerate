// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_tiered_cache_value.dart';@immutable final class CacheRulesTieredCacheResponseValueResult {const CacheRulesTieredCacheResponseValueResult({required this.value});

factory CacheRulesTieredCacheResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesTieredCacheResponseValueResult(
  value: CacheRulesTieredCacheValue.fromJson(json['value'] as String),
); }

final CacheRulesTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
CacheRulesTieredCacheResponseValueResult copyWith({CacheRulesTieredCacheValue? value}) { return CacheRulesTieredCacheResponseValueResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesTieredCacheResponseValueResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesTieredCacheResponseValueResult(value: $value)'; } 
 }
