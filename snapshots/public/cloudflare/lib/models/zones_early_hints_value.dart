// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesEarlyHintsValue {const ZonesEarlyHintsValue._(this.value);

factory ZonesEarlyHintsValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesEarlyHintsValue._(json),
}; }

static const ZonesEarlyHintsValue $on = ZonesEarlyHintsValue._('on');

static const ZonesEarlyHintsValue off = ZonesEarlyHintsValue._('off');

static const List<ZonesEarlyHintsValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesEarlyHintsValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesEarlyHintsValue($value)'; } 
 }
