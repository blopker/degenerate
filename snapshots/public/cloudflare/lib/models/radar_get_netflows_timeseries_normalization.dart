// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetNetflowsTimeseriesNormalization {const RadarGetNetflowsTimeseriesNormalization._(this.value);

factory RadarGetNetflowsTimeseriesNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE_CHANGE' => percentageChange,
  'MIN0_MAX' => min0Max,
  _ => RadarGetNetflowsTimeseriesNormalization._(json),
}; }

static const RadarGetNetflowsTimeseriesNormalization percentageChange = RadarGetNetflowsTimeseriesNormalization._('PERCENTAGE_CHANGE');

static const RadarGetNetflowsTimeseriesNormalization min0Max = RadarGetNetflowsTimeseriesNormalization._('MIN0_MAX');

static const List<RadarGetNetflowsTimeseriesNormalization> values = [percentageChange, min0Max];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetNetflowsTimeseriesNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetNetflowsTimeseriesNormalization($value)'; } 
 }
