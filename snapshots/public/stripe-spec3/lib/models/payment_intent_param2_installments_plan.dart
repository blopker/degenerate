// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan4.dart';@immutable final class PaymentIntentParam2InstallmentsPlanVariant2 {const PaymentIntentParam2InstallmentsPlanVariant2._(this.value);

factory PaymentIntentParam2InstallmentsPlanVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentParam2InstallmentsPlanVariant2._(json),
}; }

static const PaymentIntentParam2InstallmentsPlanVariant2 $empty = PaymentIntentParam2InstallmentsPlanVariant2._('');

static const List<PaymentIntentParam2InstallmentsPlanVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam2InstallmentsPlanVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam2InstallmentsPlanVariant2($value)'; } 
 }
typedef PaymentIntentParam2InstallmentsPlan = OneOf2<InstallmentPlan4,PaymentIntentParam2InstallmentsPlanVariant2>;
