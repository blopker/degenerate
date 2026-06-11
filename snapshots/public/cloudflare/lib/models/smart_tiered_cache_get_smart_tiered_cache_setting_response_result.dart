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
@immutable final class SmartTieredCacheGetSmartTieredCacheSettingResponseResult {const SmartTieredCacheGetSmartTieredCacheSettingResponseResult({required this.id, required this.value, this.modifiedOn, });

factory SmartTieredCacheGetSmartTieredCacheSettingResponseResult.fromJson(Map<String, dynamic> json) { return SmartTieredCacheGetSmartTieredCacheSettingResponseResult(
  id: SmartTieredCacheGetSmartTieredCacheSettingResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesSmartTieredCacheValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final SmartTieredCacheGetSmartTieredCacheSettingResponseResultId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

/// Value of the Smart Tiered Cache zone setting.
final CacheRulesSmartTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
SmartTieredCacheGetSmartTieredCacheSettingResponseResult copyWith({SmartTieredCacheGetSmartTieredCacheSettingResponseResultId? id, DateTime? Function()? modifiedOn, CacheRulesSmartTieredCacheValue? value, }) { return SmartTieredCacheGetSmartTieredCacheSettingResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
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
