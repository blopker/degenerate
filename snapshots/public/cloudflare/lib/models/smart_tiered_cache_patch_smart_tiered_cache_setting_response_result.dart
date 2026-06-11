// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_smart_tiered_cache_value.dart';/// ID of the zone setting.
@immutable final class SmartTieredCachePatchSmartTieredCacheSettingResponseResultId {const SmartTieredCachePatchSmartTieredCacheSettingResponseResultId._(this.value);

factory SmartTieredCachePatchSmartTieredCacheSettingResponseResultId.fromJson(String json) { return switch (json) {
  'tiered_cache_smart_topology_enable' => tieredCacheSmartTopologyEnable,
  _ => SmartTieredCachePatchSmartTieredCacheSettingResponseResultId._(json),
}; }

static const SmartTieredCachePatchSmartTieredCacheSettingResponseResultId tieredCacheSmartTopologyEnable = SmartTieredCachePatchSmartTieredCacheSettingResponseResultId._('tiered_cache_smart_topology_enable');

static const List<SmartTieredCachePatchSmartTieredCacheSettingResponseResultId> values = [tieredCacheSmartTopologyEnable];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmartTieredCachePatchSmartTieredCacheSettingResponseResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartTieredCachePatchSmartTieredCacheSettingResponseResultId($value)'; } 
 }
@immutable final class SmartTieredCachePatchSmartTieredCacheSettingResponseResult {const SmartTieredCachePatchSmartTieredCacheSettingResponseResult({required this.id, required this.value, this.modifiedOn, });

factory SmartTieredCachePatchSmartTieredCacheSettingResponseResult.fromJson(Map<String, dynamic> json) { return SmartTieredCachePatchSmartTieredCacheSettingResponseResult(
  id: SmartTieredCachePatchSmartTieredCacheSettingResponseResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesSmartTieredCacheValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final SmartTieredCachePatchSmartTieredCacheSettingResponseResultId id;

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
SmartTieredCachePatchSmartTieredCacheSettingResponseResult copyWith({SmartTieredCachePatchSmartTieredCacheSettingResponseResultId? id, DateTime? Function()? modifiedOn, CacheRulesSmartTieredCacheValue? value, }) { return SmartTieredCachePatchSmartTieredCacheSettingResponseResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartTieredCachePatchSmartTieredCacheSettingResponseResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'SmartTieredCachePatchSmartTieredCacheSettingResponseResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
