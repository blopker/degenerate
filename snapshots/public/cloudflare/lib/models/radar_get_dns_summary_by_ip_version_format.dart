// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetDnsSummaryByIpVersionFormat {const RadarGetDnsSummaryByIpVersionFormat._(this.value);

factory RadarGetDnsSummaryByIpVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsSummaryByIpVersionFormat._(json),
}; }

static const RadarGetDnsSummaryByIpVersionFormat $json = RadarGetDnsSummaryByIpVersionFormat._('JSON');

static const RadarGetDnsSummaryByIpVersionFormat csv = RadarGetDnsSummaryByIpVersionFormat._('CSV');

static const List<RadarGetDnsSummaryByIpVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByIpVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByIpVersionFormat($value)'; } 
 }
