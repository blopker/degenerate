// GENERATED CODE - DO NOT MODIFY BY HAND

/// IP version.
final class RadarGetDnsAs112TopLocationsByIpVersionIpVersion {const RadarGetDnsAs112TopLocationsByIpVersionIpVersion._(this.value);

factory RadarGetDnsAs112TopLocationsByIpVersionIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetDnsAs112TopLocationsByIpVersionIpVersion._(json),
}; }

static const RadarGetDnsAs112TopLocationsByIpVersionIpVersion iPv4 = RadarGetDnsAs112TopLocationsByIpVersionIpVersion._('IPv4');

static const RadarGetDnsAs112TopLocationsByIpVersionIpVersion iPv6 = RadarGetDnsAs112TopLocationsByIpVersionIpVersion._('IPv6');

static const List<RadarGetDnsAs112TopLocationsByIpVersionIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TopLocationsByIpVersionIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsByIpVersionIpVersion($value)'; } 
 }
