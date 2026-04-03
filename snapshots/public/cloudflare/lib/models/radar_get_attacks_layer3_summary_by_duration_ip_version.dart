// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3SummaryByDurationIpVersion {const RadarGetAttacksLayer3SummaryByDurationIpVersion._(this.value);

factory RadarGetAttacksLayer3SummaryByDurationIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetAttacksLayer3SummaryByDurationIpVersion._(json),
}; }

static const RadarGetAttacksLayer3SummaryByDurationIpVersion iPv4 = RadarGetAttacksLayer3SummaryByDurationIpVersion._('IPv4');

static const RadarGetAttacksLayer3SummaryByDurationIpVersion iPv6 = RadarGetAttacksLayer3SummaryByDurationIpVersion._('IPv6');

static const List<RadarGetAttacksLayer3SummaryByDurationIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3SummaryByDurationIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByDurationIpVersion($value)'; } 
 }
