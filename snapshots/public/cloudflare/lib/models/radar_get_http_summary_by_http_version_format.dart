// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetHttpSummaryByHttpVersionFormat {const RadarGetHttpSummaryByHttpVersionFormat._(this.value);

factory RadarGetHttpSummaryByHttpVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpSummaryByHttpVersionFormat._(json),
}; }

static const RadarGetHttpSummaryByHttpVersionFormat $json = RadarGetHttpSummaryByHttpVersionFormat._('JSON');

static const RadarGetHttpSummaryByHttpVersionFormat csv = RadarGetHttpSummaryByHttpVersionFormat._('CSV');

static const List<RadarGetHttpSummaryByHttpVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByHttpVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByHttpVersionFormat($value)'; } 
 }
