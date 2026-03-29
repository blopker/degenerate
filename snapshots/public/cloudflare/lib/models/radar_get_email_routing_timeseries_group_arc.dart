// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingTimeseriesGroupArc {const RadarGetEmailRoutingTimeseriesGroupArc._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupArc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingTimeseriesGroupArc._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupArc pass = RadarGetEmailRoutingTimeseriesGroupArc._('PASS');

static const RadarGetEmailRoutingTimeseriesGroupArc none = RadarGetEmailRoutingTimeseriesGroupArc._('NONE');

static const RadarGetEmailRoutingTimeseriesGroupArc fail = RadarGetEmailRoutingTimeseriesGroupArc._('FAIL');

static const List<RadarGetEmailRoutingTimeseriesGroupArc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupArc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupArc($value)'; } 
 }
