// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingTimeseriesGroupByEncryptedIpVersion {const RadarGetEmailRoutingTimeseriesGroupByEncryptedIpVersion._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByEncryptedIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetEmailRoutingTimeseriesGroupByEncryptedIpVersion._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedIpVersion iPv4 = RadarGetEmailRoutingTimeseriesGroupByEncryptedIpVersion._('IPv4');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedIpVersion iPv6 = RadarGetEmailRoutingTimeseriesGroupByEncryptedIpVersion._('IPv6');

static const List<RadarGetEmailRoutingTimeseriesGroupByEncryptedIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByEncryptedIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByEncryptedIpVersion($value)'; } 
 }
