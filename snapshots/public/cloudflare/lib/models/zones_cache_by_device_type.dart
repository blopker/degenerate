// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Separate cached content based on the visitor's device type.
/// 
@immutable final class ZonesCacheByDeviceTypeId {const ZonesCacheByDeviceTypeId._(this.value);

factory ZonesCacheByDeviceTypeId.fromJson(String json) { return switch (json) {
  'cache_by_device_type' => cacheByDeviceType,
  _ => ZonesCacheByDeviceTypeId._(json),
}; }

static const ZonesCacheByDeviceTypeId cacheByDeviceType = ZonesCacheByDeviceTypeId._('cache_by_device_type');

static const List<ZonesCacheByDeviceTypeId> values = [cacheByDeviceType];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheByDeviceTypeId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheByDeviceTypeId($value)'; } 
 }
/// The status of Cache By Device Type.
/// 
@immutable final class ZonesCacheByDeviceTypeValue {const ZonesCacheByDeviceTypeValue._(this.value);

factory ZonesCacheByDeviceTypeValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesCacheByDeviceTypeValue._(json),
}; }

static const ZonesCacheByDeviceTypeValue $on = ZonesCacheByDeviceTypeValue._('on');

static const ZonesCacheByDeviceTypeValue off = ZonesCacheByDeviceTypeValue._('off');

static const List<ZonesCacheByDeviceTypeValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheByDeviceTypeValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheByDeviceTypeValue($value)'; } 
 }
@immutable final class ZonesCacheByDeviceType {const ZonesCacheByDeviceType({this.id, this.value, });

factory ZonesCacheByDeviceType.fromJson(Map<String, dynamic> json) { return ZonesCacheByDeviceType(
  id: json['id'] != null ? ZonesCacheByDeviceTypeId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesCacheByDeviceTypeValue.fromJson(json['value'] as String) : null,
); }

/// Separate cached content based on the visitor's device type.
/// 
final ZonesCacheByDeviceTypeId? id;

/// The status of Cache By Device Type.
/// 
final ZonesCacheByDeviceTypeValue? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesCacheByDeviceType copyWith({ZonesCacheByDeviceTypeId Function()? id, ZonesCacheByDeviceTypeValue Function()? value, }) { return ZonesCacheByDeviceType(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCacheByDeviceType &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesCacheByDeviceType(id: $id, value: $value)'; } 
 }
