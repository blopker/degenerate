// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_regional_tiered_cache_value.dart';@immutable final class ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult {const ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult({required this.value});

factory ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult(
  value: CacheRulesRegionalTieredCacheValue.fromJson(json['value'] as String),
); }

/// Value of the Regional Tiered Cache zone setting.
final CacheRulesRegionalTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult copyWith({CacheRulesRegionalTieredCacheValue? value}) { return ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult(value: $value)'; } 
 }
