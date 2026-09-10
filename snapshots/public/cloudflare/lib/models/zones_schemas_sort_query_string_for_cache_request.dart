// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_sort_query_string_for_cache_value.dart';/// Cloudflare will treat files with the same query strings as the same file in cache, regardless of the order of the query strings. This is limited to Enterprise Zones.
@immutable final class ZonesSchemasSortQueryStringForCacheRequest {const ZonesSchemasSortQueryStringForCacheRequest({required this.id, required this.value, });

factory ZonesSchemasSortQueryStringForCacheRequest.fromJson(Map<String, dynamic> json) { return ZonesSchemasSortQueryStringForCacheRequest(
  id: json['id'],
  value: ZonesSortQueryStringForCacheValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesSortQueryStringForCacheValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSchemasSortQueryStringForCacheRequest copyWith({dynamic Function()? id, ZonesSortQueryStringForCacheValue? value, }) { return ZonesSchemasSortQueryStringForCacheRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSchemasSortQueryStringForCacheRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesSchemasSortQueryStringForCacheRequest(id: $id, value: $value)'; } 
 }
