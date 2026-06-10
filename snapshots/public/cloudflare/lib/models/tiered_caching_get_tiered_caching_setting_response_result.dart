// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_tiered_cache_value.dart';@immutable final class TieredCachingGetTieredCachingSettingResponseResult {const TieredCachingGetTieredCachingSettingResponseResult({required this.value});

factory TieredCachingGetTieredCachingSettingResponseResult.fromJson(Map<String, dynamic> json) { return TieredCachingGetTieredCachingSettingResponseResult(
  value: CacheRulesTieredCacheValue.fromJson(json['value'] as String),
); }

/// Value of the Tiered Cache zone setting.
final CacheRulesTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
TieredCachingGetTieredCachingSettingResponseResult copyWith({CacheRulesTieredCacheValue? value}) { return TieredCachingGetTieredCachingSettingResponseResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TieredCachingGetTieredCachingSettingResponseResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TieredCachingGetTieredCachingSettingResponseResult(value: $value)'; } 
 }
