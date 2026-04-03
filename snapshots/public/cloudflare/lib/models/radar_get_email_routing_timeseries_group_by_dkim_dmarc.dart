// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingTimeseriesGroupByDkimDmarc {const RadarGetEmailRoutingTimeseriesGroupByDkimDmarc._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByDkimDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingTimeseriesGroupByDkimDmarc._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByDkimDmarc pass = RadarGetEmailRoutingTimeseriesGroupByDkimDmarc._('PASS');

static const RadarGetEmailRoutingTimeseriesGroupByDkimDmarc none = RadarGetEmailRoutingTimeseriesGroupByDkimDmarc._('NONE');

static const RadarGetEmailRoutingTimeseriesGroupByDkimDmarc fail = RadarGetEmailRoutingTimeseriesGroupByDkimDmarc._('FAIL');

static const List<RadarGetEmailRoutingTimeseriesGroupByDkimDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByDkimDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByDkimDmarc($value)'; } 
 }
