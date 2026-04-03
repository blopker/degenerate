// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan.dart';@immutable final class InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2 {const InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2._(this.value);

factory InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2._(json),
}; }

static const InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2 $empty = InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2._('');

static const List<InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2($value)'; } 
 }
typedef InvoicePaymentMethodOptionsParam17InstallmentsPlan = OneOf2<InstallmentPlan,InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2>;
