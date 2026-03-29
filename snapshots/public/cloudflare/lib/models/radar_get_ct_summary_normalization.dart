// GENERATED CODE - DO NOT MODIFY BY HAND

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetCtSummaryNormalization {const RadarGetCtSummaryNormalization._(this.value);

factory RadarGetCtSummaryNormalization.fromJson(String json) { return switch (json) {
  'RAW_VALUES' => rawValues,
  'PERCENTAGE' => percentage,
  _ => RadarGetCtSummaryNormalization._(json),
}; }

static const RadarGetCtSummaryNormalization rawValues = RadarGetCtSummaryNormalization._('RAW_VALUES');

static const RadarGetCtSummaryNormalization percentage = RadarGetCtSummaryNormalization._('PERCENTAGE');

static const List<RadarGetCtSummaryNormalization> values = [rawValues, percentage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtSummaryNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtSummaryNormalization($value)'; } 
 }
