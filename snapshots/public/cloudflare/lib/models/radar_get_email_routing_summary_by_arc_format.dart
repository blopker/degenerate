// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetEmailRoutingSummaryByArcFormat {const RadarGetEmailRoutingSummaryByArcFormat._(this.value);

factory RadarGetEmailRoutingSummaryByArcFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailRoutingSummaryByArcFormat._(json),
}; }

static const RadarGetEmailRoutingSummaryByArcFormat $json = RadarGetEmailRoutingSummaryByArcFormat._('JSON');

static const RadarGetEmailRoutingSummaryByArcFormat csv = RadarGetEmailRoutingSummaryByArcFormat._('CSV');

static const List<RadarGetEmailRoutingSummaryByArcFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByArcFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByArcFormat($value)'; } 
 }
