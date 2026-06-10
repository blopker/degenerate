// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_cache_reserve_value.dart';@immutable final class ZoneCacheSettingsGetCacheReserveSettingResponseResult {const ZoneCacheSettingsGetCacheReserveSettingResponseResult({required this.value});

factory ZoneCacheSettingsGetCacheReserveSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsGetCacheReserveSettingResponseResult(
  value: CacheRulesCacheReserveValue.fromJson(json['value'] as String),
); }

/// Value of the Cache Reserve zone setting.
final CacheRulesCacheReserveValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
ZoneCacheSettingsGetCacheReserveSettingResponseResult copyWith({CacheRulesCacheReserveValue? value}) { return ZoneCacheSettingsGetCacheReserveSettingResponseResult(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsGetCacheReserveSettingResponseResult &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsGetCacheReserveSettingResponseResult(value: $value)'; } 
 }
