// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class FineTuneDpoHyperparametersBatchSizeVariant1 {const FineTuneDpoHyperparametersBatchSizeVariant1._(this.value);

factory FineTuneDpoHyperparametersBatchSizeVariant1.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => FineTuneDpoHyperparametersBatchSizeVariant1._(json),
}; }

static const FineTuneDpoHyperparametersBatchSizeVariant1 auto = FineTuneDpoHyperparametersBatchSizeVariant1._('auto');

static const List<FineTuneDpoHyperparametersBatchSizeVariant1> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FineTuneDpoHyperparametersBatchSizeVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FineTuneDpoHyperparametersBatchSizeVariant1($value)'; } 
 }
typedef FineTuneDpoHyperparametersBatchSize = OneOf2<FineTuneDpoHyperparametersBatchSizeVariant1,int>;