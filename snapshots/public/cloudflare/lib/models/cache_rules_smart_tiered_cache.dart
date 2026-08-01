// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ID of the zone setting.
@immutable final class CacheRulesSmartTieredCacheId {const CacheRulesSmartTieredCacheId._(this.value);

factory CacheRulesSmartTieredCacheId.fromJson(String json) { return switch (json) {
  'tiered_cache_smart_topology_enable' => tieredCacheSmartTopologyEnable,
  _ => CacheRulesSmartTieredCacheId._(json),
}; }

static const CacheRulesSmartTieredCacheId tieredCacheSmartTopologyEnable = CacheRulesSmartTieredCacheId._('tiered_cache_smart_topology_enable');

static const List<CacheRulesSmartTieredCacheId> values = [tieredCacheSmartTopologyEnable];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesSmartTieredCacheId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesSmartTieredCacheId($value)'; } 
 }
@immutable final class CacheRulesSmartTieredCache {const CacheRulesSmartTieredCache({required this.id, this.modifiedOn = const Omittable.absent(), });

factory CacheRulesSmartTieredCache.fromJson(Map<String, dynamic> json) { return CacheRulesSmartTieredCache(
  id: CacheRulesSmartTieredCacheId.fromJson(json['id'] as String),
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
); }

/// ID of the zone setting.
final CacheRulesSmartTieredCacheId id;

/// Last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
CacheRulesSmartTieredCache copyWith({CacheRulesSmartTieredCacheId? id, Omittable<DateTime?>? modifiedOn, }) { return CacheRulesSmartTieredCache(
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesSmartTieredCache &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(id, modifiedOn); } 
@override String toString() { return 'CacheRulesSmartTieredCache(id: $id, modifiedOn: $modifiedOn)'; } 
 }
