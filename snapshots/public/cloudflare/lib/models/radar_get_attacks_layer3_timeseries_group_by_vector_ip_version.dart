// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3TimeseriesGroupByVectorIpVersion {const RadarGetAttacksLayer3TimeseriesGroupByVectorIpVersion._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByVectorIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetAttacksLayer3TimeseriesGroupByVectorIpVersion._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByVectorIpVersion iPv4 = RadarGetAttacksLayer3TimeseriesGroupByVectorIpVersion._('IPv4');

static const RadarGetAttacksLayer3TimeseriesGroupByVectorIpVersion iPv6 = RadarGetAttacksLayer3TimeseriesGroupByVectorIpVersion._('IPv6');

static const List<RadarGetAttacksLayer3TimeseriesGroupByVectorIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByVectorIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByVectorIpVersion($value)'; } 
 }
