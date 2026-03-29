// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetHttpSummaryByTlsVersionFormat {const RadarGetHttpSummaryByTlsVersionFormat._(this.value);

factory RadarGetHttpSummaryByTlsVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetHttpSummaryByTlsVersionFormat._(json),
}; }

static const RadarGetHttpSummaryByTlsVersionFormat $json = RadarGetHttpSummaryByTlsVersionFormat._('JSON');

static const RadarGetHttpSummaryByTlsVersionFormat csv = RadarGetHttpSummaryByTlsVersionFormat._('CSV');

static const List<RadarGetHttpSummaryByTlsVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByTlsVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByTlsVersionFormat($value)'; } 
 }
