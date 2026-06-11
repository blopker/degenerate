// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesIpGeolocationValue {const ZonesIpGeolocationValue._(this.value);

factory ZonesIpGeolocationValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesIpGeolocationValue._(json),
}; }

static const ZonesIpGeolocationValue $on = ZonesIpGeolocationValue._('on');

static const ZonesIpGeolocationValue off = ZonesIpGeolocationValue._('off');

static const List<ZonesIpGeolocationValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesIpGeolocationValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesIpGeolocationValue($value)'; } 
 }
