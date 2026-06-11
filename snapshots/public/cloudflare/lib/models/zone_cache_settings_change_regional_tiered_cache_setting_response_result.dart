// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_regional_tiered_cache_value.dart';/// ID of the zone setting.
@immutable final class ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId {const ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId._(this.value);

factory ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId.fromJson(String json) { return switch (json) {
  'tc_regional' => tcRegional,
  _ => ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId._(json),
}; }

static const ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId tcRegional = ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId._('tc_regional');

static const List<ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId> values = [tcRegional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId($value)'; } 
 }
@immutable final class ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult {const ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult({required this.id, required this.value, this.modifiedOn, });

factory ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult(
  id: ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesRegionalTieredCacheValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

/// Value of the Regional Tiered Cache zone setting.
final CacheRulesRegionalTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult copyWith({ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResultId? id, DateTime? Function()? modifiedOn, CacheRulesRegionalTieredCacheValue? value, }) { return ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'ZoneCacheSettingsChangeRegionalTieredCacheSettingResponseResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
