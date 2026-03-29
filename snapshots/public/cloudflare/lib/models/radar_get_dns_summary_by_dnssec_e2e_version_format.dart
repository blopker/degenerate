// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetDnsSummaryByDnssecE2eVersionFormat {const RadarGetDnsSummaryByDnssecE2eVersionFormat._(this.value);

factory RadarGetDnsSummaryByDnssecE2eVersionFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsSummaryByDnssecE2eVersionFormat._(json),
}; }

static const RadarGetDnsSummaryByDnssecE2eVersionFormat $json = RadarGetDnsSummaryByDnssecE2eVersionFormat._('JSON');

static const RadarGetDnsSummaryByDnssecE2eVersionFormat csv = RadarGetDnsSummaryByDnssecE2eVersionFormat._('CSV');

static const List<RadarGetDnsSummaryByDnssecE2eVersionFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByDnssecE2eVersionFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByDnssecE2eVersionFormat($value)'; } 
 }
