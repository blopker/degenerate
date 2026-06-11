// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cache_rules_smart_tiered_cache_value.dart';/// ID of the zone setting.
@immutable final class CacheRulesSmartTieredCacheResponseValueResultId {const CacheRulesSmartTieredCacheResponseValueResultId._(this.value);

factory CacheRulesSmartTieredCacheResponseValueResultId.fromJson(String json) { return switch (json) {
  'tiered_cache_smart_topology_enable' => tieredCacheSmartTopologyEnable,
  _ => CacheRulesSmartTieredCacheResponseValueResultId._(json),
}; }

static const CacheRulesSmartTieredCacheResponseValueResultId tieredCacheSmartTopologyEnable = CacheRulesSmartTieredCacheResponseValueResultId._('tiered_cache_smart_topology_enable');

static const List<CacheRulesSmartTieredCacheResponseValueResultId> values = [tieredCacheSmartTopologyEnable];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesSmartTieredCacheResponseValueResultId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesSmartTieredCacheResponseValueResultId($value)'; } 
 }
@immutable final class CacheRulesSmartTieredCacheResponseValueResult {const CacheRulesSmartTieredCacheResponseValueResult({required this.id, required this.value, this.modifiedOn, });

factory CacheRulesSmartTieredCacheResponseValueResult.fromJson(Map<String, dynamic> json) { return CacheRulesSmartTieredCacheResponseValueResult(
  id: CacheRulesSmartTieredCacheResponseValueResultId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: CacheRulesSmartTieredCacheValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final CacheRulesSmartTieredCacheResponseValueResultId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

final CacheRulesSmartTieredCacheValue value;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
CacheRulesSmartTieredCacheResponseValueResult copyWith({CacheRulesSmartTieredCacheResponseValueResultId? id, DateTime? Function()? modifiedOn, CacheRulesSmartTieredCacheValue? value, }) { return CacheRulesSmartTieredCacheResponseValueResult(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesSmartTieredCacheResponseValueResult &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, modifiedOn, value); } 
@override String toString() { return 'CacheRulesSmartTieredCacheResponseValueResult(id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
