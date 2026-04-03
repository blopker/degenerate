// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupIpVersion {const RadarGetHttpTimeseriesGroupIpVersion._(this.value);

factory RadarGetHttpTimeseriesGroupIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTimeseriesGroupIpVersion._(json),
}; }

static const RadarGetHttpTimeseriesGroupIpVersion iPv4 = RadarGetHttpTimeseriesGroupIpVersion._('IPv4');

static const RadarGetHttpTimeseriesGroupIpVersion iPv6 = RadarGetHttpTimeseriesGroupIpVersion._('IPv6');

static const List<RadarGetHttpTimeseriesGroupIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupIpVersion($value)'; } 
 }
