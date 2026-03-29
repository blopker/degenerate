// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryByOperatingSystemIpVersion {const RadarGetHttpSummaryByOperatingSystemIpVersion._(this.value);

factory RadarGetHttpSummaryByOperatingSystemIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpSummaryByOperatingSystemIpVersion._(json),
}; }

static const RadarGetHttpSummaryByOperatingSystemIpVersion iPv4 = RadarGetHttpSummaryByOperatingSystemIpVersion._('IPv4');

static const RadarGetHttpSummaryByOperatingSystemIpVersion iPv6 = RadarGetHttpSummaryByOperatingSystemIpVersion._('IPv6');

static const List<RadarGetHttpSummaryByOperatingSystemIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByOperatingSystemIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByOperatingSystemIpVersion($value)'; } 
 }
