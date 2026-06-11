// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_cache_reserve_value.dart';/// ID of the zone setting.
@immutable final class ZoneCacheSettingsGetCacheReserveSettingResponseResultId {const ZoneCacheSettingsGetCacheReserveSettingResponseResultId._(this.value);

factory ZoneCacheSettingsGetCacheReserveSettingResponseResultId.fromJson(String json) { return switch (json) {
  'cache_reserve' => cacheReserve,
  _ => ZoneCacheSettingsGetCacheReserveSettingResponseResultId._(json),
}; }

static const ZoneCacheSettingsGetCacheReserveSettingResponseResultId cacheReserve = ZoneCacheSettingsGetCacheReserveSettingResponseResultId._('cache_reserve');

static const List<ZoneCacheSettingsGetCacheReserveSettingResponseResultId> values = [cacheReserve];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZoneCacheSettingsGetCacheReserveSettingResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsGetCacheReserveSettingResponseResultId($value)'; } 
 }
@immutable final class ZoneCacheSettingsGetCacheReserveSettingResponseResult {const ZoneCacheSettingsGetCacheReserveSettingResponseResult({required this.id, required this.value, this.modifiedOn, });

factory ZoneCacheSettingsGetCacheReserveSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsGetCacheReserveSettingResponseResult(
  id: ZoneCacheSettingsGetCacheReserveSettingResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesCacheReserveValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final ZoneCacheSettingsGetCacheReserveSettingResponseResultId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

/// Value of the Cache Reserve zone setting.
final CacheRulesCacheReserveValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZoneCacheSettingsGetCacheReserveSettingResponseResult copyWith({ZoneCacheSettingsGetCacheReserveSettingResponseResultId? id, DateTime? Function()? modifiedOn, CacheRulesCacheReserveValue? value, }) { return ZoneCacheSettingsGetCacheReserveSettingResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsGetCacheReserveSettingResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'ZoneCacheSettingsGetCacheReserveSettingResponseResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
