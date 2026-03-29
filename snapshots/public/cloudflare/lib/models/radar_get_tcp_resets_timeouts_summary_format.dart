// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetTcpResetsTimeoutsSummaryFormat {const RadarGetTcpResetsTimeoutsSummaryFormat._(this.value);

factory RadarGetTcpResetsTimeoutsSummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetTcpResetsTimeoutsSummaryFormat._(json),
}; }

static const RadarGetTcpResetsTimeoutsSummaryFormat $json = RadarGetTcpResetsTimeoutsSummaryFormat._('JSON');

static const RadarGetTcpResetsTimeoutsSummaryFormat csv = RadarGetTcpResetsTimeoutsSummaryFormat._('CSV');

static const List<RadarGetTcpResetsTimeoutsSummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetTcpResetsTimeoutsSummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetTcpResetsTimeoutsSummaryFormat($value)'; } 
 }
