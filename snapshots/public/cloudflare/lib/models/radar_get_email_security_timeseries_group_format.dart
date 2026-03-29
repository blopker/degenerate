// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetEmailSecurityTimeseriesGroupFormat {const RadarGetEmailSecurityTimeseriesGroupFormat._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecurityTimeseriesGroupFormat._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupFormat $json = RadarGetEmailSecurityTimeseriesGroupFormat._('JSON');

static const RadarGetEmailSecurityTimeseriesGroupFormat csv = RadarGetEmailSecurityTimeseriesGroupFormat._('CSV');

static const List<RadarGetEmailSecurityTimeseriesGroupFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupFormat($value)'; } 
 }
