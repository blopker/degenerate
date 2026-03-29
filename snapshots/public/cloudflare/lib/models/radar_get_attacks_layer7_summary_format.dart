// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetAttacksLayer7SummaryFormat {const RadarGetAttacksLayer7SummaryFormat._(this.value);

factory RadarGetAttacksLayer7SummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer7SummaryFormat._(json),
}; }

static const RadarGetAttacksLayer7SummaryFormat $json = RadarGetAttacksLayer7SummaryFormat._('JSON');

static const RadarGetAttacksLayer7SummaryFormat csv = RadarGetAttacksLayer7SummaryFormat._('CSV');

static const List<RadarGetAttacksLayer7SummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7SummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryFormat($value)'; } 
 }
