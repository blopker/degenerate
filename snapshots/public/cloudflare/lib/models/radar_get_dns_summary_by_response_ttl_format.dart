// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetDnsSummaryByResponseTtlFormat {const RadarGetDnsSummaryByResponseTtlFormat._(this.value);

factory RadarGetDnsSummaryByResponseTtlFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsSummaryByResponseTtlFormat._(json),
}; }

static const RadarGetDnsSummaryByResponseTtlFormat $json = RadarGetDnsSummaryByResponseTtlFormat._('JSON');

static const RadarGetDnsSummaryByResponseTtlFormat csv = RadarGetDnsSummaryByResponseTtlFormat._('CSV');

static const List<RadarGetDnsSummaryByResponseTtlFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByResponseTtlFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByResponseTtlFormat($value)'; } 
 }
