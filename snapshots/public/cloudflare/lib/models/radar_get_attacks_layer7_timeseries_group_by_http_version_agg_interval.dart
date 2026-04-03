// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval {const RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval $15m = RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval._('15m');

static const RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval $1h = RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval._('1h');

static const RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval $1d = RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval._('1d');

static const RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval $1w = RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval._('1w');

static const List<RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByHttpVersionAggInterval($value)'; } 
 }
