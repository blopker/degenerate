// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_cache_reserve_value.dart';final class ZoneCacheSettingsChangeCacheReserveSettingRequest {const ZoneCacheSettingsChangeCacheReserveSettingRequest({required this.value});

factory ZoneCacheSettingsChangeCacheReserveSettingRequest.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsChangeCacheReserveSettingRequest(
  value: CacheRulesCacheReserveValue.fromJson(json['value'] as String),
); }

/// Value of the Cache Reserve zone setting.
final CacheRulesCacheReserveValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
ZoneCacheSettingsChangeCacheReserveSettingRequest copyWith({CacheRulesCacheReserveValue? value}) { return ZoneCacheSettingsChangeCacheReserveSettingRequest(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsChangeCacheReserveSettingRequest &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsChangeCacheReserveSettingRequest(value: $value)'; } 
 }
