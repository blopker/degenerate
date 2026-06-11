// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesWebpValue {const ZonesWebpValue._(this.value);

factory ZonesWebpValue.fromJson(String json) { return switch (json) {
  'off' => off,
  'on' => $on,
  _ => ZonesWebpValue._(json),
}; }

static const ZonesWebpValue off = ZonesWebpValue._('off');

static const ZonesWebpValue $on = ZonesWebpValue._('on');

static const List<ZonesWebpValue> values = [off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesWebpValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesWebpValue($value)'; } 
 }
