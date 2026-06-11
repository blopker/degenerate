// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ID of the zone setting.
@immutable final class CacheRulesCacheReserveId {const CacheRulesCacheReserveId._(this.value);

factory CacheRulesCacheReserveId.fromJson(String json) { return switch (json) {
  'cache_reserve' => cacheReserve,
  _ => CacheRulesCacheReserveId._(json),
}; }

static const CacheRulesCacheReserveId cacheReserve = CacheRulesCacheReserveId._('cache_reserve');

static const List<CacheRulesCacheReserveId> values = [cacheReserve];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesCacheReserveId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesCacheReserveId($value)'; } 
 }
/// Increase cache lifetimes by automatically storing all cacheable files into Cloudflare's persistent object storage buckets. Requires Cache Reserve subscription. Note: using Tiered Cache with Cache Reserve is highly recommended to reduce Reserve operations costs. See the [developer docs](https://developers.cloudflare.com/cache/about/cache-reserve) for more information.
@immutable final class CacheRulesCacheReserve {const CacheRulesCacheReserve({required this.id, this.modifiedOn, });

factory CacheRulesCacheReserve.fromJson(Map<String, dynamic> json) { return CacheRulesCacheReserve(
  id: CacheRulesCacheReserveId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
); }

/// ID of the zone setting.
final CacheRulesCacheReserveId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
CacheRulesCacheReserve copyWith({CacheRulesCacheReserveId? id, DateTime? Function()? modifiedOn, }) { return CacheRulesCacheReserve(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesCacheReserve &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(id, modifiedOn); } 
@override String toString() { return 'CacheRulesCacheReserve(id: $id, modifiedOn: $modifiedOn)'; } 
 }
