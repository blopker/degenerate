// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetHttpTopAsesByDeviceTypeFormat {const RadarGetHttpTopAsesByDeviceTypeFormat._(this.value);

factory RadarGetHttpTopAsesByDeviceTypeFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopAsesByDeviceTypeFormat._(json),
}; }

static const RadarGetHttpTopAsesByDeviceTypeFormat $json = RadarGetHttpTopAsesByDeviceTypeFormat._('JSON');

static const RadarGetHttpTopAsesByDeviceTypeFormat csv = RadarGetHttpTopAsesByDeviceTypeFormat._('CSV');

static const List<RadarGetHttpTopAsesByDeviceTypeFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByDeviceTypeFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByDeviceTypeFormat($value)'; } 
 }
