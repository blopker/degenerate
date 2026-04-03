// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3TimeseriesGroupIpVersion {const RadarGetAttacksLayer3TimeseriesGroupIpVersion._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetAttacksLayer3TimeseriesGroupIpVersion._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupIpVersion iPv4 = RadarGetAttacksLayer3TimeseriesGroupIpVersion._('IPv4');

static const RadarGetAttacksLayer3TimeseriesGroupIpVersion iPv6 = RadarGetAttacksLayer3TimeseriesGroupIpVersion._('IPv6');

static const List<RadarGetAttacksLayer3TimeseriesGroupIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupIpVersion($value)'; } 
 }
