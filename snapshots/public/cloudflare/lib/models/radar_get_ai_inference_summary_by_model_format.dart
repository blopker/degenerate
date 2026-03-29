// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetAiInferenceSummaryByModelFormat {const RadarGetAiInferenceSummaryByModelFormat._(this.value);

factory RadarGetAiInferenceSummaryByModelFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAiInferenceSummaryByModelFormat._(json),
}; }

static const RadarGetAiInferenceSummaryByModelFormat $json = RadarGetAiInferenceSummaryByModelFormat._('JSON');

static const RadarGetAiInferenceSummaryByModelFormat csv = RadarGetAiInferenceSummaryByModelFormat._('CSV');

static const List<RadarGetAiInferenceSummaryByModelFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceSummaryByModelFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceSummaryByModelFormat($value)'; } 
 }
