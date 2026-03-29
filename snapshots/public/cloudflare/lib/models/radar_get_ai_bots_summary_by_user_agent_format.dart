// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetAiBotsSummaryByUserAgentFormat {const RadarGetAiBotsSummaryByUserAgentFormat._(this.value);

factory RadarGetAiBotsSummaryByUserAgentFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAiBotsSummaryByUserAgentFormat._(json),
}; }

static const RadarGetAiBotsSummaryByUserAgentFormat $json = RadarGetAiBotsSummaryByUserAgentFormat._('JSON');

static const RadarGetAiBotsSummaryByUserAgentFormat csv = RadarGetAiBotsSummaryByUserAgentFormat._('CSV');

static const List<RadarGetAiBotsSummaryByUserAgentFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiBotsSummaryByUserAgentFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiBotsSummaryByUserAgentFormat($value)'; } 
 }
