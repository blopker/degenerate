// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetAttacksLayer3TimeseriesGroupByIpVersionNormalization {const RadarGetAttacksLayer3TimeseriesGroupByIpVersionNormalization._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByIpVersionNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  _ => RadarGetAttacksLayer3TimeseriesGroupByIpVersionNormalization._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByIpVersionNormalization percentage = RadarGetAttacksLayer3TimeseriesGroupByIpVersionNormalization._('PERCENTAGE');

static const RadarGetAttacksLayer3TimeseriesGroupByIpVersionNormalization min0Max = RadarGetAttacksLayer3TimeseriesGroupByIpVersionNormalization._('MIN0_MAX');

static const List<RadarGetAttacksLayer3TimeseriesGroupByIpVersionNormalization> values = [percentage, min0Max];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByIpVersionNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByIpVersionNormalization($value)'; } 
 }
