// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan5.dart';@immutable final class PaymentIntentParam3InstallmentsPlanVariant2 {const PaymentIntentParam3InstallmentsPlanVariant2._(this.value);

factory PaymentIntentParam3InstallmentsPlanVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentParam3InstallmentsPlanVariant2._(json),
}; }

static const PaymentIntentParam3InstallmentsPlanVariant2 $empty = PaymentIntentParam3InstallmentsPlanVariant2._('');

static const List<PaymentIntentParam3InstallmentsPlanVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam3InstallmentsPlanVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam3InstallmentsPlanVariant2($value)'; } 
 }
typedef PaymentIntentParam3InstallmentsPlan = OneOf2<InstallmentPlan5,PaymentIntentParam3InstallmentsPlanVariant2>;
