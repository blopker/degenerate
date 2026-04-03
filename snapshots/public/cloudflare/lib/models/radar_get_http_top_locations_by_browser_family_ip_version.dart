// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByBrowserFamilyIpVersion {const RadarGetHttpTopLocationsByBrowserFamilyIpVersion._(this.value);

factory RadarGetHttpTopLocationsByBrowserFamilyIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTopLocationsByBrowserFamilyIpVersion._(json),
}; }

static const RadarGetHttpTopLocationsByBrowserFamilyIpVersion iPv4 = RadarGetHttpTopLocationsByBrowserFamilyIpVersion._('IPv4');

static const RadarGetHttpTopLocationsByBrowserFamilyIpVersion iPv6 = RadarGetHttpTopLocationsByBrowserFamilyIpVersion._('IPv6');

static const List<RadarGetHttpTopLocationsByBrowserFamilyIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByBrowserFamilyIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByBrowserFamilyIpVersion($value)'; } 
 }
