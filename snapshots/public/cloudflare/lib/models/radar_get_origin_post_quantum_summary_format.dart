// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetOriginPostQuantumSummaryFormat {const RadarGetOriginPostQuantumSummaryFormat._(this.value);

factory RadarGetOriginPostQuantumSummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetOriginPostQuantumSummaryFormat._(json),
}; }

static const RadarGetOriginPostQuantumSummaryFormat $json = RadarGetOriginPostQuantumSummaryFormat._('JSON');

static const RadarGetOriginPostQuantumSummaryFormat csv = RadarGetOriginPostQuantumSummaryFormat._('CSV');

static const List<RadarGetOriginPostQuantumSummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginPostQuantumSummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginPostQuantumSummaryFormat($value)'; } 
 }
