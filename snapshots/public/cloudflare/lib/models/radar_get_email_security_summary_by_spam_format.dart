// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetEmailSecuritySummaryBySpamFormat {const RadarGetEmailSecuritySummaryBySpamFormat._(this.value);

factory RadarGetEmailSecuritySummaryBySpamFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecuritySummaryBySpamFormat._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpamFormat $json = RadarGetEmailSecuritySummaryBySpamFormat._('JSON');

static const RadarGetEmailSecuritySummaryBySpamFormat csv = RadarGetEmailSecuritySummaryBySpamFormat._('CSV');

static const List<RadarGetEmailSecuritySummaryBySpamFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpamFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpamFormat($value)'; } 
 }
