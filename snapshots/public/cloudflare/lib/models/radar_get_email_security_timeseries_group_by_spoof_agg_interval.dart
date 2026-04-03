// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval {const RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval.fromJson(String json) { return switch (json) {
  '15m' => $15m,
  '1h' => $1h,
  '1d' => $1d,
  '1w' => $1w,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval $15m = RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval._('15m');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval $1h = RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval._('1h');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval $1d = RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval._('1d');

static const RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval $1w = RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval._('1w');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval> values = [$15m, $1h, $1d, $1w];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpoofAggInterval($value)'; } 
 }
