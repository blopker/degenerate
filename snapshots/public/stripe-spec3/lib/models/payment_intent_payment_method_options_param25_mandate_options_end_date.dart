// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2 {const PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2 $empty = PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2($value)'; } 
 }
typedef PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDate = OneOf2<String,PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2>;