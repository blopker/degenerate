// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetAttacksLayer3TimeseriesGroupByIndustryNormalization {const RadarGetAttacksLayer3TimeseriesGroupByIndustryNormalization._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByIndustryNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  _ => RadarGetAttacksLayer3TimeseriesGroupByIndustryNormalization._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByIndustryNormalization percentage = RadarGetAttacksLayer3TimeseriesGroupByIndustryNormalization._('PERCENTAGE');

static const RadarGetAttacksLayer3TimeseriesGroupByIndustryNormalization min0Max = RadarGetAttacksLayer3TimeseriesGroupByIndustryNormalization._('MIN0_MAX');

static const List<RadarGetAttacksLayer3TimeseriesGroupByIndustryNormalization> values = [percentage, min0Max];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByIndustryNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByIndustryNormalization($value)'; } 
 }
