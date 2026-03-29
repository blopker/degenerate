// GENERATED CODE - DO NOT MODIFY BY HAND

/// Origins.
final class RadarGetOriginsTimeseriesOrigin {const RadarGetOriginsTimeseriesOrigin._(this.value);

factory RadarGetOriginsTimeseriesOrigin.fromJson(String json) { return switch (json) {
  'AMAZON' => amazon,
  'GOOGLE' => google,
  'MICROSOFT' => microsoft,
  'ORACLE' => oracle,
  _ => RadarGetOriginsTimeseriesOrigin._(json),
}; }

static const RadarGetOriginsTimeseriesOrigin amazon = RadarGetOriginsTimeseriesOrigin._('AMAZON');

static const RadarGetOriginsTimeseriesOrigin google = RadarGetOriginsTimeseriesOrigin._('GOOGLE');

static const RadarGetOriginsTimeseriesOrigin microsoft = RadarGetOriginsTimeseriesOrigin._('MICROSOFT');

static const RadarGetOriginsTimeseriesOrigin oracle = RadarGetOriginsTimeseriesOrigin._('ORACLE');

static const List<RadarGetOriginsTimeseriesOrigin> values = [amazon, google, microsoft, oracle];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginsTimeseriesOrigin && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginsTimeseriesOrigin($value)'; } 
 }
