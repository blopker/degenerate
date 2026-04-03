// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopAsesByHttpVersionIpVersion {const RadarGetHttpTopAsesByHttpVersionIpVersion._(this.value);

factory RadarGetHttpTopAsesByHttpVersionIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTopAsesByHttpVersionIpVersion._(json),
}; }

static const RadarGetHttpTopAsesByHttpVersionIpVersion iPv4 = RadarGetHttpTopAsesByHttpVersionIpVersion._('IPv4');

static const RadarGetHttpTopAsesByHttpVersionIpVersion iPv6 = RadarGetHttpTopAsesByHttpVersionIpVersion._('IPv6');

static const List<RadarGetHttpTopAsesByHttpVersionIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByHttpVersionIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByHttpVersionIpVersion($value)'; } 
 }
