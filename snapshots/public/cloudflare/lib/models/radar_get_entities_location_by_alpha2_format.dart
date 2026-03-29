// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetEntitiesLocationByAlpha2Format {const RadarGetEntitiesLocationByAlpha2Format._(this.value);

factory RadarGetEntitiesLocationByAlpha2Format.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEntitiesLocationByAlpha2Format._(json),
}; }

static const RadarGetEntitiesLocationByAlpha2Format $json = RadarGetEntitiesLocationByAlpha2Format._('JSON');

static const RadarGetEntitiesLocationByAlpha2Format csv = RadarGetEntitiesLocationByAlpha2Format._('CSV');

static const List<RadarGetEntitiesLocationByAlpha2Format> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEntitiesLocationByAlpha2Format && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEntitiesLocationByAlpha2Format($value)'; } 
 }
