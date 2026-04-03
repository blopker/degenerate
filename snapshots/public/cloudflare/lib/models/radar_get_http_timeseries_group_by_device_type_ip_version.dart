// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByDeviceTypeIpVersion {const RadarGetHttpTimeseriesGroupByDeviceTypeIpVersion._(this.value);

factory RadarGetHttpTimeseriesGroupByDeviceTypeIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTimeseriesGroupByDeviceTypeIpVersion._(json),
}; }

static const RadarGetHttpTimeseriesGroupByDeviceTypeIpVersion iPv4 = RadarGetHttpTimeseriesGroupByDeviceTypeIpVersion._('IPv4');

static const RadarGetHttpTimeseriesGroupByDeviceTypeIpVersion iPv6 = RadarGetHttpTimeseriesGroupByDeviceTypeIpVersion._('IPv6');

static const List<RadarGetHttpTimeseriesGroupByDeviceTypeIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByDeviceTypeIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByDeviceTypeIpVersion($value)'; } 
 }
