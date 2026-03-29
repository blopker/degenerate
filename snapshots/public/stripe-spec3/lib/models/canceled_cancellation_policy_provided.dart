// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class CanceledCancellationPolicyProvidedVariant2 {const CanceledCancellationPolicyProvidedVariant2._(this.value);

factory CanceledCancellationPolicyProvidedVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => CanceledCancellationPolicyProvidedVariant2._(json),
}; }

static const CanceledCancellationPolicyProvidedVariant2 $empty = CanceledCancellationPolicyProvidedVariant2._('');

static const List<CanceledCancellationPolicyProvidedVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CanceledCancellationPolicyProvidedVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CanceledCancellationPolicyProvidedVariant2($value)'; } 
 }
typedef CanceledCancellationPolicyProvided = OneOf2<bool,CanceledCancellationPolicyProvidedVariant2>;