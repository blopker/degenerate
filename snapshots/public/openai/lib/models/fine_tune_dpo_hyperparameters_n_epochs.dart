// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class FineTuneDpoHyperparametersNEpochsVariant1 {const FineTuneDpoHyperparametersNEpochsVariant1._(this.value);

factory FineTuneDpoHyperparametersNEpochsVariant1.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => FineTuneDpoHyperparametersNEpochsVariant1._(json),
}; }

static const FineTuneDpoHyperparametersNEpochsVariant1 auto = FineTuneDpoHyperparametersNEpochsVariant1._('auto');

static const List<FineTuneDpoHyperparametersNEpochsVariant1> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FineTuneDpoHyperparametersNEpochsVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FineTuneDpoHyperparametersNEpochsVariant1($value)'; } 
 }
typedef FineTuneDpoHyperparametersNEpochs = OneOf2<FineTuneDpoHyperparametersNEpochsVariant1,int>;