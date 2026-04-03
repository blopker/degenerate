// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer7TimeseriesGroupByIndustryIpVersion {const RadarGetAttacksLayer7TimeseriesGroupByIndustryIpVersion._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByIndustryIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetAttacksLayer7TimeseriesGroupByIndustryIpVersion._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryIpVersion iPv4 = RadarGetAttacksLayer7TimeseriesGroupByIndustryIpVersion._('IPv4');

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryIpVersion iPv6 = RadarGetAttacksLayer7TimeseriesGroupByIndustryIpVersion._('IPv6');

static const List<RadarGetAttacksLayer7TimeseriesGroupByIndustryIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByIndustryIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByIndustryIpVersion($value)'; } 
 }
