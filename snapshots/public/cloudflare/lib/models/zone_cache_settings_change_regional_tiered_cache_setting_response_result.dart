// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_regional_tiered_cache_value.dart';@immutable final class ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult {const ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult({required this.value});

factory ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult(
  value: CacheRulesRegionalTieredCacheValue.fromJson(json['value'] as String),
); }

/// Value of the Regional Tiered Cache zone setting.
final CacheRulesRegionalTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult copyWith({CacheRulesRegionalTieredCacheValue? value}) { return ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult(value: $value)'; } 
 }
