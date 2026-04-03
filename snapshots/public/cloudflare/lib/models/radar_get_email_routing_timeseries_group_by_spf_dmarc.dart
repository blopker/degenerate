// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingTimeseriesGroupBySpfDmarc {const RadarGetEmailRoutingTimeseriesGroupBySpfDmarc._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupBySpfDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingTimeseriesGroupBySpfDmarc._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupBySpfDmarc pass = RadarGetEmailRoutingTimeseriesGroupBySpfDmarc._('PASS');

static const RadarGetEmailRoutingTimeseriesGroupBySpfDmarc none = RadarGetEmailRoutingTimeseriesGroupBySpfDmarc._('NONE');

static const RadarGetEmailRoutingTimeseriesGroupBySpfDmarc fail = RadarGetEmailRoutingTimeseriesGroupBySpfDmarc._('FAIL');

static const List<RadarGetEmailRoutingTimeseriesGroupBySpfDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupBySpfDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupBySpfDmarc($value)'; } 
 }
