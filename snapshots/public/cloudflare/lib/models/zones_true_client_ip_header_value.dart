// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesTrueClientIpHeaderValue {const ZonesTrueClientIpHeaderValue._(this.value);

factory ZonesTrueClientIpHeaderValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesTrueClientIpHeaderValue._(json),
}; }

static const ZonesTrueClientIpHeaderValue $on = ZonesTrueClientIpHeaderValue._('on');

static const ZonesTrueClientIpHeaderValue off = ZonesTrueClientIpHeaderValue._('off');

static const List<ZonesTrueClientIpHeaderValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesTrueClientIpHeaderValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesTrueClientIpHeaderValue($value)'; } 
 }
