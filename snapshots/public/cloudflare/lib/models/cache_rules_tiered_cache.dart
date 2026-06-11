// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ID of the zone setting.
@immutable final class CacheRulesTieredCacheId {const CacheRulesTieredCacheId._(this.value);

factory CacheRulesTieredCacheId.fromJson(String json) { return switch (json) {
  'tiered_caching' => tieredCaching,
  _ => CacheRulesTieredCacheId._(json),
}; }

static const CacheRulesTieredCacheId tieredCaching = CacheRulesTieredCacheId._('tiered_caching');

static const List<CacheRulesTieredCacheId> values = [tieredCaching];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesTieredCacheId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesTieredCacheId($value)'; } 
 }
@immutable final class CacheRulesTieredCache {const CacheRulesTieredCache({required this.id, this.modifiedOn, });

factory CacheRulesTieredCache.fromJson(Map<String, dynamic> json) { return CacheRulesTieredCache(
  id: CacheRulesTieredCacheId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
); }

/// ID of the zone setting.
final CacheRulesTieredCacheId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
CacheRulesTieredCache copyWith({CacheRulesTieredCacheId? id, DateTime? Function()? modifiedOn, }) { return CacheRulesTieredCache(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesTieredCache &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(id, modifiedOn); } 
@override String toString() { return 'CacheRulesTieredCache(id: $id, modifiedOn: $modifiedOn)'; } 
 }
