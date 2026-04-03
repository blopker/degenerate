// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class FineTuneReinforcementHyperparametersNEpochsVariant1 {const FineTuneReinforcementHyperparametersNEpochsVariant1._(this.value);

factory FineTuneReinforcementHyperparametersNEpochsVariant1.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => FineTuneReinforcementHyperparametersNEpochsVariant1._(json),
}; }

static const FineTuneReinforcementHyperparametersNEpochsVariant1 auto = FineTuneReinforcementHyperparametersNEpochsVariant1._('auto');

static const List<FineTuneReinforcementHyperparametersNEpochsVariant1> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FineTuneReinforcementHyperparametersNEpochsVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FineTuneReinforcementHyperparametersNEpochsVariant1($value)'; } 
 }
typedef FineTuneReinforcementHyperparametersNEpochs = OneOf2<FineTuneReinforcementHyperparametersNEpochsVariant1,int>;
