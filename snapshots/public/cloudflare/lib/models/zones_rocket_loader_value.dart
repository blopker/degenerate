// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesRocketLoaderValue {const ZonesRocketLoaderValue._(this.value);

factory ZonesRocketLoaderValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesRocketLoaderValue._(json),
}; }

static const ZonesRocketLoaderValue $on = ZonesRocketLoaderValue._('on');

static const ZonesRocketLoaderValue off = ZonesRocketLoaderValue._('off');

static const List<ZonesRocketLoaderValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesRocketLoaderValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesRocketLoaderValue($value)'; } 
 }
