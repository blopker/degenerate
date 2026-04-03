// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetAttacksLayer7TopAttacksNormalization {const RadarGetAttacksLayer7TopAttacksNormalization._(this.value);

factory RadarGetAttacksLayer7TopAttacksNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN_MAX' => minMax,
  _ => RadarGetAttacksLayer7TopAttacksNormalization._(json),
}; }

static const RadarGetAttacksLayer7TopAttacksNormalization percentage = RadarGetAttacksLayer7TopAttacksNormalization._('PERCENTAGE');

static const RadarGetAttacksLayer7TopAttacksNormalization minMax = RadarGetAttacksLayer7TopAttacksNormalization._('MIN_MAX');

static const List<RadarGetAttacksLayer7TopAttacksNormalization> values = [percentage, minMax];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TopAttacksNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TopAttacksNormalization($value)'; } 
 }
