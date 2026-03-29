// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_cache_level_value.dart';/// Apply custom caching based on the option selected.
/// 
final class ZonesCacheLevelId {const ZonesCacheLevelId._(this.value);

factory ZonesCacheLevelId.fromJson(String json) { return switch (json) {
  'cache_level' => cacheLevel,
  _ => ZonesCacheLevelId._(json),
}; }

static const ZonesCacheLevelId cacheLevel = ZonesCacheLevelId._('cache_level');

static const List<ZonesCacheLevelId> values = [cacheLevel];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheLevelId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheLevelId($value)'; } 
 }
final class ZonesCacheLevel {const ZonesCacheLevel({this.id, this.value, });

factory ZonesCacheLevel.fromJson(Map<String, dynamic> json) { return ZonesCacheLevel(
  id: json['id'] != null ? ZonesCacheLevelId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesCacheLevelValue.fromJson(json['value'] as String) : null,
); }

/// Apply custom caching based on the option selected.
/// 
final ZonesCacheLevelId? id;

/// * `bypass`: Cloudflare does not cache.
/// * `basic`: Delivers resources from cache when there is no query
///   string.
/// * `simplified`: Delivers the same resource to everyone independent
///   of the query string.
/// * `aggressive`: Caches all static content that has a query string.
/// * `cache_everything`: Treats all content as static and caches all
///   file types beyond the [Cloudflare default cached
///   content](https://developers.cloudflare.com/cache/concepts/default-cache-behavior/#default-cached-file-extensions).
/// 
final ZonesCacheLevelValue? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZonesCacheLevel copyWith({ZonesCacheLevelId Function()? id, ZonesCacheLevelValue Function()? value, }) { return ZonesCacheLevel(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCacheLevel &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesCacheLevel(id: $id, value: $value)'; } 
 }
