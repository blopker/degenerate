// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetAttacksLayer3TimeseriesGroupAggInterval {const RadarGetAttacksLayer3TimeseriesGroupAggInterval._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetAttacksLayer3TimeseriesGroupAggInterval._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupAggInterval $15m = RadarGetAttacksLayer3TimeseriesGroupAggInterval._('15m');

static const RadarGetAttacksLayer3TimeseriesGroupAggInterval $1h = RadarGetAttacksLayer3TimeseriesGroupAggInterval._('1h');

static const RadarGetAttacksLayer3TimeseriesGroupAggInterval $1d = RadarGetAttacksLayer3TimeseriesGroupAggInterval._('1d');

static const RadarGetAttacksLayer3TimeseriesGroupAggInterval $1w = RadarGetAttacksLayer3TimeseriesGroupAggInterval._('1w');

static const List<RadarGetAttacksLayer3TimeseriesGroupAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupAggInterval($value)'; } 
 }
