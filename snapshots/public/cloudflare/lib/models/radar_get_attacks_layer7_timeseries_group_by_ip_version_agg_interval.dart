// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval {const RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval $15m = RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval._('15m');

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval $1h = RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval._('1h');

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval $1d = RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval._('1d');

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval $1w = RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval._('1w');

static const List<RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByIpVersionAggInterval($value)'; } 
 }
