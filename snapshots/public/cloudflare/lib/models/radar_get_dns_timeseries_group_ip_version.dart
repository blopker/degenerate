// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsTimeseriesGroupIpVersion {const RadarGetDnsTimeseriesGroupIpVersion._(this.value);

factory RadarGetDnsTimeseriesGroupIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetDnsTimeseriesGroupIpVersion._(json),
}; }

static const RadarGetDnsTimeseriesGroupIpVersion iPv4 = RadarGetDnsTimeseriesGroupIpVersion._('IPv4');

static const RadarGetDnsTimeseriesGroupIpVersion iPv6 = RadarGetDnsTimeseriesGroupIpVersion._('IPv6');

static const List<RadarGetDnsTimeseriesGroupIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupIpVersion($value)'; } 
 }
