// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesOriginErrorPagePassThruValue {const ZonesOriginErrorPagePassThruValue._(this.value);

factory ZonesOriginErrorPagePassThruValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesOriginErrorPagePassThruValue._(json),
}; }

static const ZonesOriginErrorPagePassThruValue $on = ZonesOriginErrorPagePassThruValue._('on');

static const ZonesOriginErrorPagePassThruValue off = ZonesOriginErrorPagePassThruValue._('off');

static const List<ZonesOriginErrorPagePassThruValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesOriginErrorPagePassThruValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesOriginErrorPagePassThruValue($value)'; } 
 }
