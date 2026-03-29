// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetHttpTopLocationsByHttpProtocolFormat {const RadarGetHttpTopLocationsByHttpProtocolFormat._(this.value);

factory RadarGetHttpTopLocationsByHttpProtocolFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpTopLocationsByHttpProtocolFormat._(json),
}; }

static const RadarGetHttpTopLocationsByHttpProtocolFormat $json = RadarGetHttpTopLocationsByHttpProtocolFormat._('JSON');

static const RadarGetHttpTopLocationsByHttpProtocolFormat csv = RadarGetHttpTopLocationsByHttpProtocolFormat._('CSV');

static const List<RadarGetHttpTopLocationsByHttpProtocolFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpProtocolFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpProtocolFormat($value)'; } 
 }
