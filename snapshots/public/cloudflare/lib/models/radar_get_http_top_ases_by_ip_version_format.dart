// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetHttpTopAsesByIpVersionFormat {const RadarGetHttpTopAsesByIpVersionFormat._(this.value);

factory RadarGetHttpTopAsesByIpVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopAsesByIpVersionFormat._(json),
}; }

static const RadarGetHttpTopAsesByIpVersionFormat $json = RadarGetHttpTopAsesByIpVersionFormat._('JSON');

static const RadarGetHttpTopAsesByIpVersionFormat csv = RadarGetHttpTopAsesByIpVersionFormat._('CSV');

static const List<RadarGetHttpTopAsesByIpVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByIpVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByIpVersionFormat($value)'; } 
 }
