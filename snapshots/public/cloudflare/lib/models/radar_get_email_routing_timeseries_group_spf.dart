// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingTimeseriesGroupSpf {const RadarGetEmailRoutingTimeseriesGroupSpf._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingTimeseriesGroupSpf._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupSpf pass = RadarGetEmailRoutingTimeseriesGroupSpf._('PASS');

static const RadarGetEmailRoutingTimeseriesGroupSpf none = RadarGetEmailRoutingTimeseriesGroupSpf._('NONE');

static const RadarGetEmailRoutingTimeseriesGroupSpf fail = RadarGetEmailRoutingTimeseriesGroupSpf._('FAIL');

static const List<RadarGetEmailRoutingTimeseriesGroupSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupSpf($value)'; } 
 }
