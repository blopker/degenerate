// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class FineTuneReinforcementHyperparametersComputeMultiplierVariant1 {const FineTuneReinforcementHyperparametersComputeMultiplierVariant1._(this.value);

factory FineTuneReinforcementHyperparametersComputeMultiplierVariant1.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => FineTuneReinforcementHyperparametersComputeMultiplierVariant1._(json),
}; }

static const FineTuneReinforcementHyperparametersComputeMultiplierVariant1 auto = FineTuneReinforcementHyperparametersComputeMultiplierVariant1._('auto');

static const List<FineTuneReinforcementHyperparametersComputeMultiplierVariant1> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FineTuneReinforcementHyperparametersComputeMultiplierVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FineTuneReinforcementHyperparametersComputeMultiplierVariant1($value)'; } 
 }
typedef FineTuneReinforcementHyperparametersComputeMultiplier = OneOf2<FineTuneReinforcementHyperparametersComputeMultiplierVariant1,double>;