// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByIpVersionHttpVersion {const RadarGetHttpTopLocationsByIpVersionHttpVersion._(this.value);

factory RadarGetHttpTopLocationsByIpVersionHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetHttpTopLocationsByIpVersionHttpVersion._(json),
}; }

static const RadarGetHttpTopLocationsByIpVersionHttpVersion httPv1 = RadarGetHttpTopLocationsByIpVersionHttpVersion._('HTTPv1');

static const RadarGetHttpTopLocationsByIpVersionHttpVersion httPv2 = RadarGetHttpTopLocationsByIpVersionHttpVersion._('HTTPv2');

static const RadarGetHttpTopLocationsByIpVersionHttpVersion httPv3 = RadarGetHttpTopLocationsByIpVersionHttpVersion._('HTTPv3');

static const List<RadarGetHttpTopLocationsByIpVersionHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByIpVersionHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByIpVersionHttpVersion($value)'; } 
 }
