// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetAttacksLayer3TimeseriesGroupFormat {const RadarGetAttacksLayer3TimeseriesGroupFormat._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer3TimeseriesGroupFormat._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupFormat $json = RadarGetAttacksLayer3TimeseriesGroupFormat._('JSON');

static const RadarGetAttacksLayer3TimeseriesGroupFormat csv = RadarGetAttacksLayer3TimeseriesGroupFormat._('CSV');

static const List<RadarGetAttacksLayer3TimeseriesGroupFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupFormat($value)'; } 
 }
