// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies whether the `limitPerLocation` applies to the source or target location.
@immutable final class RadarGetAttacksLayer3TopAttacksLimitDirection {const RadarGetAttacksLayer3TopAttacksLimitDirection._(this.value);

factory RadarGetAttacksLayer3TopAttacksLimitDirection.fromJson(String json) { return switch (json) {
  'ORIGIN' => origin,
  'TARGET' => target,
  _ => RadarGetAttacksLayer3TopAttacksLimitDirection._(json),
}; }

static const RadarGetAttacksLayer3TopAttacksLimitDirection origin = RadarGetAttacksLayer3TopAttacksLimitDirection._('ORIGIN');

static const RadarGetAttacksLayer3TopAttacksLimitDirection target = RadarGetAttacksLayer3TopAttacksLimitDirection._('TARGET');

static const List<RadarGetAttacksLayer3TopAttacksLimitDirection> values = [origin, target];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TopAttacksLimitDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TopAttacksLimitDirection($value)'; } 
 }
