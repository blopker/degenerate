// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetEmailRoutingTimeseriesGroupFormat {const RadarGetEmailRoutingTimeseriesGroupFormat._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailRoutingTimeseriesGroupFormat._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupFormat $json = RadarGetEmailRoutingTimeseriesGroupFormat._('JSON');

static const RadarGetEmailRoutingTimeseriesGroupFormat csv = RadarGetEmailRoutingTimeseriesGroupFormat._('CSV');

static const List<RadarGetEmailRoutingTimeseriesGroupFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupFormat($value)'; } 
 }
