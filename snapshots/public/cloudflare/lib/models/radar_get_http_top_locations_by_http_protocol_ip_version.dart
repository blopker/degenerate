// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByHttpProtocolIpVersion {const RadarGetHttpTopLocationsByHttpProtocolIpVersion._(this.value);

factory RadarGetHttpTopLocationsByHttpProtocolIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTopLocationsByHttpProtocolIpVersion._(json),
}; }

static const RadarGetHttpTopLocationsByHttpProtocolIpVersion iPv4 = RadarGetHttpTopLocationsByHttpProtocolIpVersion._('IPv4');

static const RadarGetHttpTopLocationsByHttpProtocolIpVersion iPv6 = RadarGetHttpTopLocationsByHttpProtocolIpVersion._('IPv6');

static const List<RadarGetHttpTopLocationsByHttpProtocolIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpProtocolIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpProtocolIpVersion($value)'; } 
 }
