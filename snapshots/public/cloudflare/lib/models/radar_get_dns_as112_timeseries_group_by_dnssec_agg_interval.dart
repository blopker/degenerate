// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval {const RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval._(this.value);

factory RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval._(json),
}; }

static const RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval $15m = RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval._('15m');

static const RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval $1h = RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval._('1h');

static const RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval $1d = RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval._('1d');

static const RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval $1w = RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval._('1w');

static const List<RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByDnssecAggInterval($value)'; } 
 }
