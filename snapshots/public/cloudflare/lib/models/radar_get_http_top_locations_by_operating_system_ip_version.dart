// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByOperatingSystemIpVersion {const RadarGetHttpTopLocationsByOperatingSystemIpVersion._(this.value);

factory RadarGetHttpTopLocationsByOperatingSystemIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTopLocationsByOperatingSystemIpVersion._(json),
}; }

static const RadarGetHttpTopLocationsByOperatingSystemIpVersion iPv4 = RadarGetHttpTopLocationsByOperatingSystemIpVersion._('IPv4');

static const RadarGetHttpTopLocationsByOperatingSystemIpVersion iPv6 = RadarGetHttpTopLocationsByOperatingSystemIpVersion._('IPv6');

static const List<RadarGetHttpTopLocationsByOperatingSystemIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByOperatingSystemIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByOperatingSystemIpVersion($value)'; } 
 }
