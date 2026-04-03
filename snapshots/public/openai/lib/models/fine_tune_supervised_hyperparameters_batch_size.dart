// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class FineTuneSupervisedHyperparametersBatchSizeVariant1 {const FineTuneSupervisedHyperparametersBatchSizeVariant1._(this.value);

factory FineTuneSupervisedHyperparametersBatchSizeVariant1.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => FineTuneSupervisedHyperparametersBatchSizeVariant1._(json),
}; }

static const FineTuneSupervisedHyperparametersBatchSizeVariant1 auto = FineTuneSupervisedHyperparametersBatchSizeVariant1._('auto');

static const List<FineTuneSupervisedHyperparametersBatchSizeVariant1> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FineTuneSupervisedHyperparametersBatchSizeVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FineTuneSupervisedHyperparametersBatchSizeVariant1($value)'; } 
 }
typedef FineTuneSupervisedHyperparametersBatchSize = OneOf2<FineTuneSupervisedHyperparametersBatchSizeVariant1,int>;
