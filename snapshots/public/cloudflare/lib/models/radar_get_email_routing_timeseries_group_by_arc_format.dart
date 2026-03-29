// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetEmailRoutingTimeseriesGroupByArcFormat {const RadarGetEmailRoutingTimeseriesGroupByArcFormat._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByArcFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailRoutingTimeseriesGroupByArcFormat._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByArcFormat $json = RadarGetEmailRoutingTimeseriesGroupByArcFormat._('JSON');

static const RadarGetEmailRoutingTimeseriesGroupByArcFormat csv = RadarGetEmailRoutingTimeseriesGroupByArcFormat._('CSV');

static const List<RadarGetEmailRoutingTimeseriesGroupByArcFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByArcFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByArcFormat($value)'; } 
 }
