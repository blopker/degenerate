// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ID of the zone setting.
@immutable final class CacheRulesRegionalTieredCacheId {const CacheRulesRegionalTieredCacheId._(this.value);

factory CacheRulesRegionalTieredCacheId.fromJson(String json) { return switch (json) {
  'tc_regional' => tcRegional,
  _ => CacheRulesRegionalTieredCacheId._(json),
}; }

static const CacheRulesRegionalTieredCacheId tcRegional = CacheRulesRegionalTieredCacheId._('tc_regional');

static const List<CacheRulesRegionalTieredCacheId> values = [tcRegional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesRegionalTieredCacheId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesRegionalTieredCacheId($value)'; } 
 }
/// Instructs Cloudflare to check a regional hub data center on the way to your upper tier. This can help improve performance for smart and custom tiered cache topologies.
@immutable final class CacheRulesRegionalTieredCache {const CacheRulesRegionalTieredCache({required this.id, this.modifiedOn = const Omittable.absent(), });

factory CacheRulesRegionalTieredCache.fromJson(Map<String, dynamic> json) { return CacheRulesRegionalTieredCache(
  id: CacheRulesRegionalTieredCacheId.fromJson(json['id'] as String),
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
); }

/// ID of the zone setting.
final CacheRulesRegionalTieredCacheId id;

/// Last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
CacheRulesRegionalTieredCache copyWith({CacheRulesRegionalTieredCacheId? id, Omittable<DateTime?>? modifiedOn, }) { return CacheRulesRegionalTieredCache(
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesRegionalTieredCache &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(id, modifiedOn); } 
@override String toString() { return 'CacheRulesRegionalTieredCache(id: $id, modifiedOn: $modifiedOn)'; } 
 }
