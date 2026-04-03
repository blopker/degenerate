// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer7TimeseriesIpVersion {const RadarGetAttacksLayer7TimeseriesIpVersion._(this.value);

factory RadarGetAttacksLayer7TimeseriesIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetAttacksLayer7TimeseriesIpVersion._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesIpVersion iPv4 = RadarGetAttacksLayer7TimeseriesIpVersion._('IPv4');

static const RadarGetAttacksLayer7TimeseriesIpVersion iPv6 = RadarGetAttacksLayer7TimeseriesIpVersion._('IPv6');

static const List<RadarGetAttacksLayer7TimeseriesIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesIpVersion($value)'; } 
 }
