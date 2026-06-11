// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesOrangeToOrangeValue {const ZonesOrangeToOrangeValue._(this.value);

factory ZonesOrangeToOrangeValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesOrangeToOrangeValue._(json),
}; }

static const ZonesOrangeToOrangeValue $on = ZonesOrangeToOrangeValue._('on');

static const ZonesOrangeToOrangeValue off = ZonesOrangeToOrangeValue._('off');

static const List<ZonesOrangeToOrangeValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesOrangeToOrangeValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesOrangeToOrangeValue($value)'; } 
 }
