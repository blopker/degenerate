// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class FineTuningJobHyperparametersBatchSizeVariant1 {const FineTuningJobHyperparametersBatchSizeVariant1._(this.value);

factory FineTuningJobHyperparametersBatchSizeVariant1.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => FineTuningJobHyperparametersBatchSizeVariant1._(json),
}; }

static const FineTuningJobHyperparametersBatchSizeVariant1 auto = FineTuningJobHyperparametersBatchSizeVariant1._('auto');

static const List<FineTuningJobHyperparametersBatchSizeVariant1> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FineTuningJobHyperparametersBatchSizeVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FineTuningJobHyperparametersBatchSizeVariant1($value)'; } 
 }
typedef FineTuningJobHyperparametersBatchSize = OneOf2<FineTuningJobHyperparametersBatchSizeVariant1,int>;
