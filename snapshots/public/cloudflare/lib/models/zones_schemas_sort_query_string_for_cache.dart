// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_sort_query_string_for_cache_value.dart';/// Cloudflare will treat files with the same query strings as the same file in cache, regardless of the order of the query strings. This is limited to Enterprise Zones.
@immutable final class ZonesSchemasSortQueryStringForCache {const ZonesSchemasSortQueryStringForCache({required this.id, required this.value, this.editable = true, this.modifiedOn, });

factory ZonesSchemasSortQueryStringForCache.fromJson(Map<String, dynamic> json) { return ZonesSchemasSortQueryStringForCache(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesSortQueryStringForCacheValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

final ZonesSortQueryStringForCacheValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSchemasSortQueryStringForCache copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesSortQueryStringForCacheValue? value, }) { return ZonesSchemasSortQueryStringForCache(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSchemasSortQueryStringForCache &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesSchemasSortQueryStringForCache(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
