// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// value of the zone setting.
@immutable final class ZonesTlsClientAuthValue {const ZonesTlsClientAuthValue._(this.value);

factory ZonesTlsClientAuthValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesTlsClientAuthValue._(json),
}; }

static const ZonesTlsClientAuthValue $on = ZonesTlsClientAuthValue._('on');

static const ZonesTlsClientAuthValue off = ZonesTlsClientAuthValue._('off');

static const List<ZonesTlsClientAuthValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesTlsClientAuthValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesTlsClientAuthValue($value)'; } 
 }
