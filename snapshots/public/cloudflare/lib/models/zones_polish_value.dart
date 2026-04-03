// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesPolishValue {const ZonesPolishValue._(this.value);

factory ZonesPolishValue.fromJson(String json) { return switch (json) {
  'off' => off,
  'lossless' => lossless,
  'lossy' => lossy,
  _ => ZonesPolishValue._(json),
}; }

static const ZonesPolishValue off = ZonesPolishValue._('off');

static const ZonesPolishValue lossless = ZonesPolishValue._('lossless');

static const ZonesPolishValue lossy = ZonesPolishValue._('lossy');

static const List<ZonesPolishValue> values = [off, lossless, lossy];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesPolishValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesPolishValue($value)'; } 
 }
