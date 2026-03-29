// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetCtTimeseriesValidationLevel {const RadarGetCtTimeseriesValidationLevel._(this.value);

factory RadarGetCtTimeseriesValidationLevel.fromJson(String json) { return switch (json) {
  'DOMAIN' => domain,
  'ORGANIZATION' => organization,
  'EXTENDED' => extended,
  _ => RadarGetCtTimeseriesValidationLevel._(json),
}; }

static const RadarGetCtTimeseriesValidationLevel domain = RadarGetCtTimeseriesValidationLevel._('DOMAIN');

static const RadarGetCtTimeseriesValidationLevel organization = RadarGetCtTimeseriesValidationLevel._('ORGANIZATION');

static const RadarGetCtTimeseriesValidationLevel extended = RadarGetCtTimeseriesValidationLevel._('EXTENDED');

static const List<RadarGetCtTimeseriesValidationLevel> values = [domain, organization, extended];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtTimeseriesValidationLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtTimeseriesValidationLevel($value)'; } 
 }
