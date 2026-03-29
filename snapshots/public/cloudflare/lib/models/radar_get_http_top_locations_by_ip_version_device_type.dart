// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByIpVersionDeviceType {const RadarGetHttpTopLocationsByIpVersionDeviceType._(this.value);

factory RadarGetHttpTopLocationsByIpVersionDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpTopLocationsByIpVersionDeviceType._(json),
}; }

static const RadarGetHttpTopLocationsByIpVersionDeviceType desktop = RadarGetHttpTopLocationsByIpVersionDeviceType._('DESKTOP');

static const RadarGetHttpTopLocationsByIpVersionDeviceType mobile = RadarGetHttpTopLocationsByIpVersionDeviceType._('MOBILE');

static const RadarGetHttpTopLocationsByIpVersionDeviceType $other = RadarGetHttpTopLocationsByIpVersionDeviceType._('OTHER');

static const List<RadarGetHttpTopLocationsByIpVersionDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByIpVersionDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByIpVersionDeviceType($value)'; } 
 }
