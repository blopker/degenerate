// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Turn on or off the reordering of query strings. When query strings have the same structure, caching improves.
/// 
@immutable final class ZonesSortQueryStringForCacheId {const ZonesSortQueryStringForCacheId._(this.value);

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
/// The status of Query String Sort
/// 
@immutable final class ZonesSortQueryStringForCacheValue2 {const ZonesSortQueryStringForCacheValue2._(this.value);

factory ZonesSortQueryStringForCacheValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesSortQueryStringForCacheValue2._(json),
}; }

static const ZonesSortQueryStringForCacheValue2 $on = ZonesSortQueryStringForCacheValue2._('on');

static const ZonesSortQueryStringForCacheValue2 off = ZonesSortQueryStringForCacheValue2._('off');

static const List<ZonesSortQueryStringForCacheValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSortQueryStringForCacheValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesSortQueryStringForCacheValue2($value)'; } 
 }
@immutable final class ZonesSortQueryStringForCache {const ZonesSortQueryStringForCache({this.id, this.value, });

factory ZonesSortQueryStringForCache.fromJson(Map<String, dynamic> json) { return ZonesSortQueryStringForCache(
  id: json['id'] != null ? ZonesSortQueryStringForCacheId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesSortQueryStringForCacheValue2.fromJson(json['value'] as String) : null,
); }

/// Turn on or off the reordering of query strings. When query strings have the same structure, caching improves.
/// 
final ZonesSortQueryStringForCacheId? id;

/// The status of Query String Sort
/// 
final ZonesSortQueryStringForCacheValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesSortQueryStringForCache copyWith({ZonesSortQueryStringForCacheId Function()? id, ZonesSortQueryStringForCacheValue2 Function()? value, }) { return ZonesSortQueryStringForCache(
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
