// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Orders results based on attack magnitude, defined by total mitigated bytes or total mitigated attacks.
@immutable final class RadarGetAttacksLayer3TopAttacksMagnitude {const RadarGetAttacksLayer3TopAttacksMagnitude._(this.value);

factory RadarGetAttacksLayer3TopAttacksMagnitude.fromJson(String json) { return switch (json) {
  'MITIGATED_BYTES' => mitigatedBytes,
  'MITIGATED_ATTACKS' => mitigatedAttacks,
  _ => RadarGetAttacksLayer3TopAttacksMagnitude._(json),
}; }

static const RadarGetAttacksLayer3TopAttacksMagnitude mitigatedBytes = RadarGetAttacksLayer3TopAttacksMagnitude._('MITIGATED_BYTES');

static const RadarGetAttacksLayer3TopAttacksMagnitude mitigatedAttacks = RadarGetAttacksLayer3TopAttacksMagnitude._('MITIGATED_ATTACKS');

static const List<RadarGetAttacksLayer3TopAttacksMagnitude> values = [mitigatedBytes, mitigatedAttacks];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TopAttacksMagnitude && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TopAttacksMagnitude($value)'; } 
 }
