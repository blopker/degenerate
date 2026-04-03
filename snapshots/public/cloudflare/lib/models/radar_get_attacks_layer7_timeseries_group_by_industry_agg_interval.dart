// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval {const RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval $15m = RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval._('15m');

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval $1h = RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval._('1h');

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval $1d = RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval._('1d');

static const RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval $1w = RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval._('1w');

static const List<RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByIndustryAggInterval($value)'; } 
 }
