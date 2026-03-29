// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetEmailSecuritySummaryByArcFormat {const RadarGetEmailSecuritySummaryByArcFormat._(this.value);

factory RadarGetEmailSecuritySummaryByArcFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecuritySummaryByArcFormat._(json),
}; }

static const RadarGetEmailSecuritySummaryByArcFormat $json = RadarGetEmailSecuritySummaryByArcFormat._('JSON');

static const RadarGetEmailSecuritySummaryByArcFormat csv = RadarGetEmailSecuritySummaryByArcFormat._('CSV');

static const List<RadarGetEmailSecuritySummaryByArcFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByArcFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByArcFormat($value)'; } 
 }
