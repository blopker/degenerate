// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByHttpProtocolIpVersion {const RadarGetHttpTimeseriesGroupByHttpProtocolIpVersion._(this.value);

factory RadarGetHttpTimeseriesGroupByHttpProtocolIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTimeseriesGroupByHttpProtocolIpVersion._(json),
}; }

static const RadarGetHttpTimeseriesGroupByHttpProtocolIpVersion iPv4 = RadarGetHttpTimeseriesGroupByHttpProtocolIpVersion._('IPv4');

static const RadarGetHttpTimeseriesGroupByHttpProtocolIpVersion iPv6 = RadarGetHttpTimeseriesGroupByHttpProtocolIpVersion._('IPv6');

static const List<RadarGetHttpTimeseriesGroupByHttpProtocolIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByHttpProtocolIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpProtocolIpVersion($value)'; } 
 }
