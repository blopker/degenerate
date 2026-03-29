// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class FineTuneReinforcementHyperparametersBatchSizeVariant1 {const FineTuneReinforcementHyperparametersBatchSizeVariant1._(this.value);

factory FineTuneReinforcementHyperparametersBatchSizeVariant1.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => FineTuneReinforcementHyperparametersBatchSizeVariant1._(json),
}; }

static const FineTuneReinforcementHyperparametersBatchSizeVariant1 auto = FineTuneReinforcementHyperparametersBatchSizeVariant1._('auto');

static const List<FineTuneReinforcementHyperparametersBatchSizeVariant1> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FineTuneReinforcementHyperparametersBatchSizeVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FineTuneReinforcementHyperparametersBatchSizeVariant1($value)'; } 
 }
typedef FineTuneReinforcementHyperparametersBatchSize = OneOf2<FineTuneReinforcementHyperparametersBatchSizeVariant1,int>;