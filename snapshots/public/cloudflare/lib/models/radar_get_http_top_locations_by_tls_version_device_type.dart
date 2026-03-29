// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByTlsVersionDeviceType {const RadarGetHttpTopLocationsByTlsVersionDeviceType._(this.value);

factory RadarGetHttpTopLocationsByTlsVersionDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpTopLocationsByTlsVersionDeviceType._(json),
}; }

static const RadarGetHttpTopLocationsByTlsVersionDeviceType desktop = RadarGetHttpTopLocationsByTlsVersionDeviceType._('DESKTOP');

static const RadarGetHttpTopLocationsByTlsVersionDeviceType mobile = RadarGetHttpTopLocationsByTlsVersionDeviceType._('MOBILE');

static const RadarGetHttpTopLocationsByTlsVersionDeviceType $other = RadarGetHttpTopLocationsByTlsVersionDeviceType._('OTHER');

static const List<RadarGetHttpTopLocationsByTlsVersionDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByTlsVersionDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByTlsVersionDeviceType($value)'; } 
 }
