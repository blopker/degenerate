// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingTimeseriesGroupByDkimArc {const RadarGetEmailRoutingTimeseriesGroupByDkimArc._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByDkimArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingTimeseriesGroupByDkimArc._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByDkimArc pass = RadarGetEmailRoutingTimeseriesGroupByDkimArc._('PASS');

static const RadarGetEmailRoutingTimeseriesGroupByDkimArc none = RadarGetEmailRoutingTimeseriesGroupByDkimArc._('NONE');

static const RadarGetEmailRoutingTimeseriesGroupByDkimArc fail = RadarGetEmailRoutingTimeseriesGroupByDkimArc._('FAIL');

static const List<RadarGetEmailRoutingTimeseriesGroupByDkimArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByDkimArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByDkimArc($value)'; } 
 }
