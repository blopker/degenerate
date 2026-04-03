// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetDnsTimeseriesGroupByResponseTtlAggInterval {const RadarGetDnsTimeseriesGroupByResponseTtlAggInterval._(this.value);

factory RadarGetDnsTimeseriesGroupByResponseTtlAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetDnsTimeseriesGroupByResponseTtlAggInterval._(json),
}; }

static const RadarGetDnsTimeseriesGroupByResponseTtlAggInterval $15m = RadarGetDnsTimeseriesGroupByResponseTtlAggInterval._('15m');

static const RadarGetDnsTimeseriesGroupByResponseTtlAggInterval $1h = RadarGetDnsTimeseriesGroupByResponseTtlAggInterval._('1h');

static const RadarGetDnsTimeseriesGroupByResponseTtlAggInterval $1d = RadarGetDnsTimeseriesGroupByResponseTtlAggInterval._('1d');

static const RadarGetDnsTimeseriesGroupByResponseTtlAggInterval $1w = RadarGetDnsTimeseriesGroupByResponseTtlAggInterval._('1w');

static const List<RadarGetDnsTimeseriesGroupByResponseTtlAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByResponseTtlAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByResponseTtlAggInterval($value)'; } 
 }
