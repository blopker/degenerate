// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreateFineTuningJobRequestHyperparametersNEpochsVariant1 {const CreateFineTuningJobRequestHyperparametersNEpochsVariant1._(this.value);

factory CreateFineTuningJobRequestHyperparametersNEpochsVariant1.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => CreateFineTuningJobRequestHyperparametersNEpochsVariant1._(json),
}; }

static const CreateFineTuningJobRequestHyperparametersNEpochsVariant1 auto = CreateFineTuningJobRequestHyperparametersNEpochsVariant1._('auto');

static const List<CreateFineTuningJobRequestHyperparametersNEpochsVariant1> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateFineTuningJobRequestHyperparametersNEpochsVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateFineTuningJobRequestHyperparametersNEpochsVariant1($value)'; } 
 }
typedef CreateFineTuningJobRequestHyperparametersNEpochs = OneOf2<CreateFineTuningJobRequestHyperparametersNEpochsVariant1,int>;
