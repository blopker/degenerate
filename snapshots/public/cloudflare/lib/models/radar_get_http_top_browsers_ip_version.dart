// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopBrowsersIpVersion {const RadarGetHttpTopBrowsersIpVersion._(this.value);

factory RadarGetHttpTopBrowsersIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTopBrowsersIpVersion._(json),
}; }

static const RadarGetHttpTopBrowsersIpVersion iPv4 = RadarGetHttpTopBrowsersIpVersion._('IPv4');

static const RadarGetHttpTopBrowsersIpVersion iPv6 = RadarGetHttpTopBrowsersIpVersion._('IPv6');

static const List<RadarGetHttpTopBrowsersIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowsersIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowsersIpVersion($value)'; } 
 }
