// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_tiered_cache_value.dart';@immutable final class TieredCachingPatchTieredCachingSettingResponseResult {const TieredCachingPatchTieredCachingSettingResponseResult({required this.value});

factory TieredCachingPatchTieredCachingSettingResponseResult.fromJson(Map<String, dynamic> json) { return TieredCachingPatchTieredCachingSettingResponseResult(
  value: CacheRulesTieredCacheValue.fromJson(json['value'] as String),
); }

/// Value of the Tiered Cache zone setting.
final CacheRulesTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
TieredCachingPatchTieredCachingSettingResponseResult copyWith({CacheRulesTieredCacheValue? value}) { return TieredCachingPatchTieredCachingSettingResponseResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TieredCachingPatchTieredCachingSettingResponseResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TieredCachingPatchTieredCachingSettingResponseResult(value: $value)'; } 
 }
