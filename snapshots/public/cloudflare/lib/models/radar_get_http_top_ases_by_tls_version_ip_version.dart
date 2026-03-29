// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopAsesByTlsVersionIpVersion {const RadarGetHttpTopAsesByTlsVersionIpVersion._(this.value);

factory RadarGetHttpTopAsesByTlsVersionIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpTopAsesByTlsVersionIpVersion._(json),
}; }

static const RadarGetHttpTopAsesByTlsVersionIpVersion iPv4 = RadarGetHttpTopAsesByTlsVersionIpVersion._('IPv4');

static const RadarGetHttpTopAsesByTlsVersionIpVersion iPv6 = RadarGetHttpTopAsesByTlsVersionIpVersion._('IPv6');

static const List<RadarGetHttpTopAsesByTlsVersionIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByTlsVersionIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByTlsVersionIpVersion($value)'; } 
 }
