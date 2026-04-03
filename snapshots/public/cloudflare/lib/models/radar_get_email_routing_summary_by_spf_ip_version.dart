// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingSummaryBySpfIpVersion {const RadarGetEmailRoutingSummaryBySpfIpVersion._(this.value);

factory RadarGetEmailRoutingSummaryBySpfIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetEmailRoutingSummaryBySpfIpVersion._(json),
}; }

static const RadarGetEmailRoutingSummaryBySpfIpVersion iPv4 = RadarGetEmailRoutingSummaryBySpfIpVersion._('IPv4');

static const RadarGetEmailRoutingSummaryBySpfIpVersion iPv6 = RadarGetEmailRoutingSummaryBySpfIpVersion._('IPv6');

static const List<RadarGetEmailRoutingSummaryBySpfIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryBySpfIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryBySpfIpVersion($value)'; } 
 }
