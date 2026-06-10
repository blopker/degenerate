// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_regional_tiered_cache_value.dart';/// ID of the zone setting.
@immutable final class ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId {const ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId._(this.value);

factory ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId.fromJson(String json) { return switch (json) {
  'tc_regional' => tcRegional,
  _ => ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId._(json),
}; }

static const ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId tcRegional = ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId._('tc_regional');

static const List<ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId> values = [tcRegional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId($value)'; } 
 }
@immutable final class ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult {const ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult({required this.id, required this.value, this.modifiedOn, });

factory ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult.fromJson(Map<String, dynamic> json) { return ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult(
  id: ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesRegionalTieredCacheValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId id;

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
ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult copyWith({ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResultId? id, DateTime? Function()? modifiedOn, CacheRulesRegionalTieredCacheValue? value, }) { return ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'ZoneCacheSettingsGetRegionalTieredCacheSettingResponseResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
