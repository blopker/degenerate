// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTimeseriesGroupByPostQuantumIpVersion {const RadarGetHttpTimeseriesGroupByPostQuantumIpVersion._(this.value);

factory RadarGetHttpTimeseriesGroupByPostQuantumIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTimeseriesGroupByPostQuantumIpVersion._(json),
}; }

static const RadarGetHttpTimeseriesGroupByPostQuantumIpVersion iPv4 = RadarGetHttpTimeseriesGroupByPostQuantumIpVersion._('IPv4');

static const RadarGetHttpTimeseriesGroupByPostQuantumIpVersion iPv6 = RadarGetHttpTimeseriesGroupByPostQuantumIpVersion._('IPv6');

static const List<RadarGetHttpTimeseriesGroupByPostQuantumIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByPostQuantumIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByPostQuantumIpVersion($value)'; } 
 }
