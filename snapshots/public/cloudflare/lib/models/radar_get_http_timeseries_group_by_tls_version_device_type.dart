// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupByTlsVersionDeviceType {const RadarGetHttpTimeseriesGroupByTlsVersionDeviceType._(this.value);

factory RadarGetHttpTimeseriesGroupByTlsVersionDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpTimeseriesGroupByTlsVersionDeviceType._(json),
}; }

static const RadarGetHttpTimeseriesGroupByTlsVersionDeviceType desktop = RadarGetHttpTimeseriesGroupByTlsVersionDeviceType._('DESKTOP');

static const RadarGetHttpTimeseriesGroupByTlsVersionDeviceType mobile = RadarGetHttpTimeseriesGroupByTlsVersionDeviceType._('MOBILE');

static const RadarGetHttpTimeseriesGroupByTlsVersionDeviceType $other = RadarGetHttpTimeseriesGroupByTlsVersionDeviceType._('OTHER');

static const List<RadarGetHttpTimeseriesGroupByTlsVersionDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByTlsVersionDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByTlsVersionDeviceType($value)'; } 
 }
