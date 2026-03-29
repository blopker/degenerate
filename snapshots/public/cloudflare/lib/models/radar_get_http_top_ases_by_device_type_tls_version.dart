// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopAsesByDeviceTypeTlsVersion {const RadarGetHttpTopAsesByDeviceTypeTlsVersion._(this.value);

factory RadarGetHttpTopAsesByDeviceTypeTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  'TLSvQUIC' => tlSvQuic,
  _ => RadarGetHttpTopAsesByDeviceTypeTlsVersion._(json),
}; }

static const RadarGetHttpTopAsesByDeviceTypeTlsVersion tlSv10 = RadarGetHttpTopAsesByDeviceTypeTlsVersion._('TLSv1_0');

static const RadarGetHttpTopAsesByDeviceTypeTlsVersion tlSv11 = RadarGetHttpTopAsesByDeviceTypeTlsVersion._('TLSv1_1');

static const RadarGetHttpTopAsesByDeviceTypeTlsVersion tlSv12 = RadarGetHttpTopAsesByDeviceTypeTlsVersion._('TLSv1_2');

static const RadarGetHttpTopAsesByDeviceTypeTlsVersion tlSv13 = RadarGetHttpTopAsesByDeviceTypeTlsVersion._('TLSv1_3');

static const RadarGetHttpTopAsesByDeviceTypeTlsVersion tlSvQuic = RadarGetHttpTopAsesByDeviceTypeTlsVersion._('TLSvQUIC');

static const List<RadarGetHttpTopAsesByDeviceTypeTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13, tlSvQuic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByDeviceTypeTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByDeviceTypeTlsVersion($value)'; } 
 }
