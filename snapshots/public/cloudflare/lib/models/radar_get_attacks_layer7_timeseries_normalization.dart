// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetAttacksLayer7TimeseriesNormalization {const RadarGetAttacksLayer7TimeseriesNormalization._(this.value);

factory RadarGetAttacksLayer7TimeseriesNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE_CHANGE' => percentageChange,
  'MIN0_MAX' => min0Max,
  _ => RadarGetAttacksLayer7TimeseriesNormalization._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesNormalization percentageChange = RadarGetAttacksLayer7TimeseriesNormalization._('PERCENTAGE_CHANGE');

static const RadarGetAttacksLayer7TimeseriesNormalization min0Max = RadarGetAttacksLayer7TimeseriesNormalization._('MIN0_MAX');

static const List<RadarGetAttacksLayer7TimeseriesNormalization> values = [percentageChange, min0Max];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesNormalization($value)'; } 
 }
