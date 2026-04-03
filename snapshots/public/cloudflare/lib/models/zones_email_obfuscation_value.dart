// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesEmailObfuscationValue {const ZonesEmailObfuscationValue._(this.value);

factory ZonesEmailObfuscationValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesEmailObfuscationValue._(json),
}; }

static const ZonesEmailObfuscationValue $on = ZonesEmailObfuscationValue._('on');

static const ZonesEmailObfuscationValue off = ZonesEmailObfuscationValue._('off');

static const List<ZonesEmailObfuscationValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesEmailObfuscationValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesEmailObfuscationValue($value)'; } 
 }
