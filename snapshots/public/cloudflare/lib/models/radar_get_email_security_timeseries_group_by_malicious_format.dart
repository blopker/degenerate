// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetEmailSecurityTimeseriesGroupByMaliciousFormat {const RadarGetEmailSecurityTimeseriesGroupByMaliciousFormat._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByMaliciousFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecurityTimeseriesGroupByMaliciousFormat._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByMaliciousFormat $json = RadarGetEmailSecurityTimeseriesGroupByMaliciousFormat._('JSON');

static const RadarGetEmailSecurityTimeseriesGroupByMaliciousFormat csv = RadarGetEmailSecurityTimeseriesGroupByMaliciousFormat._('CSV');

static const List<RadarGetEmailSecurityTimeseriesGroupByMaliciousFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByMaliciousFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByMaliciousFormat($value)'; } 
 }
