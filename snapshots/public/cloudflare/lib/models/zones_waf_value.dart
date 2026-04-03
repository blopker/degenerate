// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesWafValue {const ZonesWafValue._(this.value);

factory ZonesWafValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesWafValue._(json),
}; }

static const ZonesWafValue $on = ZonesWafValue._('on');

static const ZonesWafValue off = ZonesWafValue._('off');

static const List<ZonesWafValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesWafValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesWafValue($value)'; } 
 }
