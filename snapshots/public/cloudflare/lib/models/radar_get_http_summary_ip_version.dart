// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryIpVersion {const RadarGetHttpSummaryIpVersion._(this.value);

factory RadarGetHttpSummaryIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpSummaryIpVersion._(json),
}; }

static const RadarGetHttpSummaryIpVersion iPv4 = RadarGetHttpSummaryIpVersion._('IPv4');

static const RadarGetHttpSummaryIpVersion iPv6 = RadarGetHttpSummaryIpVersion._('IPv6');

static const List<RadarGetHttpSummaryIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryIpVersion($value)'; } 
 }
