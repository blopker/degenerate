// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_sort_query_string_for_cache_value.dart';/// Turn on or off the reordering of query strings. When query strings have the same structure, caching improves.
/// 
final class ZonesSortQueryStringForCacheId {const ZonesSortQueryStringForCacheId._(this.value);

factory ZonesSortQueryStringForCacheId.fromJson(String json) { return switch (json) {
  'sort_query_string_for_cache' => sortQueryStringForCache,
  _ => ZonesSortQueryStringForCacheId._(json),
}; }

static const ZonesSortQueryStringForCacheId sortQueryStringForCache = ZonesSortQueryStringForCacheId._('sort_query_string_for_cache');

static const List<ZonesSortQueryStringForCacheId> values = [sortQueryStringForCache];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSortQueryStringForCacheId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesSortQueryStringForCacheId($value)'; } 
 }
final class ZonesSortQueryStringForCache {const ZonesSortQueryStringForCache({this.id, this.value, });

factory ZonesSortQueryStringForCache.fromJson(Map<String, dynamic> json) { return ZonesSortQueryStringForCache(
  id: json['id'] != null ? ZonesSortQueryStringForCacheId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesSortQueryStringForCacheValue.fromJson(json['value'] as String) : null,
); }

/// Turn on or off the reordering of query strings. When query strings have the same structure, caching improves.
/// 
final ZonesSortQueryStringForCacheId? id;

/// The status of Query String Sort
/// 
final ZonesSortQueryStringForCacheValue? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesSortQueryStringForCache copyWith({ZonesSortQueryStringForCacheId Function()? id, ZonesSortQueryStringForCacheValue Function()? value, }) { return ZonesSortQueryStringForCache(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSortQueryStringForCache &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesSortQueryStringForCache(id: $id, value: $value)'; } 
 }
