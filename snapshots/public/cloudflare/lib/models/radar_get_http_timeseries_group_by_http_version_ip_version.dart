// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupByHttpVersionIpVersion {const RadarGetHttpTimeseriesGroupByHttpVersionIpVersion._(this.value);

factory RadarGetHttpTimeseriesGroupByHttpVersionIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTimeseriesGroupByHttpVersionIpVersion._(json),
}; }

static const RadarGetHttpTimeseriesGroupByHttpVersionIpVersion iPv4 = RadarGetHttpTimeseriesGroupByHttpVersionIpVersion._('IPv4');

static const RadarGetHttpTimeseriesGroupByHttpVersionIpVersion iPv6 = RadarGetHttpTimeseriesGroupByHttpVersionIpVersion._('IPv6');

static const List<RadarGetHttpTimeseriesGroupByHttpVersionIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByHttpVersionIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpVersionIpVersion($value)'; } 
 }
