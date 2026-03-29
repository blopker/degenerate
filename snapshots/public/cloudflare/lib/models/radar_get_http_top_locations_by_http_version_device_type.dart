// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByHttpVersionDeviceType {const RadarGetHttpTopLocationsByHttpVersionDeviceType._(this.value);

factory RadarGetHttpTopLocationsByHttpVersionDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpTopLocationsByHttpVersionDeviceType._(json),
}; }

static const RadarGetHttpTopLocationsByHttpVersionDeviceType desktop = RadarGetHttpTopLocationsByHttpVersionDeviceType._('DESKTOP');

static const RadarGetHttpTopLocationsByHttpVersionDeviceType mobile = RadarGetHttpTopLocationsByHttpVersionDeviceType._('MOBILE');

static const RadarGetHttpTopLocationsByHttpVersionDeviceType $other = RadarGetHttpTopLocationsByHttpVersionDeviceType._('OTHER');

static const List<RadarGetHttpTopLocationsByHttpVersionDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpVersionDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpVersionDeviceType($value)'; } 
 }
