// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetNetflowsTimeseriesGroupNormalization {const RadarGetNetflowsTimeseriesGroupNormalization._(this.value);

factory RadarGetNetflowsTimeseriesGroupNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  _ => RadarGetNetflowsTimeseriesGroupNormalization._(json),
}; }

static const RadarGetNetflowsTimeseriesGroupNormalization percentage = RadarGetNetflowsTimeseriesGroupNormalization._('PERCENTAGE');

static const RadarGetNetflowsTimeseriesGroupNormalization min0Max = RadarGetNetflowsTimeseriesGroupNormalization._('MIN0_MAX');

static const List<RadarGetNetflowsTimeseriesGroupNormalization> values = [percentage, min0Max];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetNetflowsTimeseriesGroupNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetNetflowsTimeseriesGroupNormalization($value)'; } 
 }
