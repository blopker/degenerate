// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_smart_tiered_cache_value.dart';/// ID of the zone setting.
@immutable final class SmartTieredCacheGetSmartTieredCacheSettingResponseResultId {const SmartTieredCacheGetSmartTieredCacheSettingResponseResultId._(this.value);

factory SmartTieredCacheGetSmartTieredCacheSettingResponseResultId.fromJson(String json) { return switch (json) {
  'tiered_cache_smart_topology_enable' => tieredCacheSmartTopologyEnable,
  _ => SmartTieredCacheGetSmartTieredCacheSettingResponseResultId._(json),
}; }

static const SmartTieredCacheGetSmartTieredCacheSettingResponseResultId tieredCacheSmartTopologyEnable = SmartTieredCacheGetSmartTieredCacheSettingResponseResultId._('tiered_cache_smart_topology_enable');

static const List<SmartTieredCacheGetSmartTieredCacheSettingResponseResultId> values = [tieredCacheSmartTopologyEnable];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmartTieredCacheGetSmartTieredCacheSettingResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartTieredCacheGetSmartTieredCacheSettingResponseResultId($value)'; } 
 }
@immutable final class SmartTieredCacheGetSmartTieredCacheSettingResponseResult {const SmartTieredCacheGetSmartTieredCacheSettingResponseResult({required this.id, required this.value, this.modifiedOn = const Omittable.absent(), });

factory SmartTieredCacheGetSmartTieredCacheSettingResponseResult.fromJson(Map<String, dynamic> json) { return SmartTieredCacheGetSmartTieredCacheSettingResponseResult(
  id: SmartTieredCacheGetSmartTieredCacheSettingResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
  value: CacheRulesSmartTieredCacheValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final SmartTieredCacheGetSmartTieredCacheSettingResponseResultId id;

/// Last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

/// Value of the Smart Tiered Cache zone setting.
final CacheRulesSmartTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
SmartTieredCacheGetSmartTieredCacheSettingResponseResult copyWith({SmartTieredCacheGetSmartTieredCacheSettingResponseResultId? id, Omittable<DateTime?>? modifiedOn, CacheRulesSmartTieredCacheValue? value, }) { return SmartTieredCacheGetSmartTieredCacheSettingResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartTieredCacheGetSmartTieredCacheSettingResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'SmartTieredCacheGetSmartTieredCacheSettingResponseResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
