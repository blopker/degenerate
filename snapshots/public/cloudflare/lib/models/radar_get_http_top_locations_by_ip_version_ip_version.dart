// GENERATED CODE - DO NOT MODIFY BY HAND

/// IP version.
final class RadarGetHttpTopLocationsByIpVersionIpVersion {const RadarGetHttpTopLocationsByIpVersionIpVersion._(this.value);

factory RadarGetHttpTopLocationsByIpVersionIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTopLocationsByIpVersionIpVersion._(json),
}; }

static const RadarGetHttpTopLocationsByIpVersionIpVersion iPv4 = RadarGetHttpTopLocationsByIpVersionIpVersion._('IPv4');

static const RadarGetHttpTopLocationsByIpVersionIpVersion iPv6 = RadarGetHttpTopLocationsByIpVersionIpVersion._('IPv6');

static const List<RadarGetHttpTopLocationsByIpVersionIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByIpVersionIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByIpVersionIpVersion($value)'; } 
 }
