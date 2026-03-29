// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetOriginsSummaryFormat {const RadarGetOriginsSummaryFormat._(this.value);

factory RadarGetOriginsSummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetOriginsSummaryFormat._(json),
}; }

static const RadarGetOriginsSummaryFormat $json = RadarGetOriginsSummaryFormat._('JSON');

static const RadarGetOriginsSummaryFormat csv = RadarGetOriginsSummaryFormat._('CSV');

static const List<RadarGetOriginsSummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginsSummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginsSummaryFormat($value)'; } 
 }
