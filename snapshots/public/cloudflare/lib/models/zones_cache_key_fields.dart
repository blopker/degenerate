// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_cache_key_fields_value.dart';/// Control specifically what variables to include when deciding which
/// resources to cache. This allows customers to determine what to cache
/// based on something other than just the URL.
/// 
final class ZonesCacheKeyFieldsId {const ZonesCacheKeyFieldsId._(this.value);

factory ZonesCacheKeyFieldsId.fromJson(String json) { return switch (json) {
  'cache_key_fields' => cacheKeyFields,
  _ => ZonesCacheKeyFieldsId._(json),
}; }

static const ZonesCacheKeyFieldsId cacheKeyFields = ZonesCacheKeyFieldsId._('cache_key_fields');

static const List<ZonesCacheKeyFieldsId> values = [cacheKeyFields];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheKeyFieldsId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheKeyFieldsId($value)'; } 
 }
final class ZonesCacheKeyFields {const ZonesCacheKeyFields({this.id, this.value, });

factory ZonesCacheKeyFields.fromJson(Map<String, dynamic> json) { return ZonesCacheKeyFields(
  id: json['id'] != null ? ZonesCacheKeyFieldsId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesCacheKeyFieldsValue.fromJson(json['value'] as Map<String, dynamic>) : null,
); }

/// Control specifically what variables to include when deciding which
/// resources to cache. This allows customers to determine what to cache
/// based on something other than just the URL.
/// 
final ZonesCacheKeyFieldsId? id;

final ZonesCacheKeyFieldsValue? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZonesCacheKeyFields copyWith({ZonesCacheKeyFieldsId Function()? id, ZonesCacheKeyFieldsValue Function()? value, }) { return ZonesCacheKeyFields(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCacheKeyFields &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesCacheKeyFields(id: $id, value: $value)'; } 
 }
