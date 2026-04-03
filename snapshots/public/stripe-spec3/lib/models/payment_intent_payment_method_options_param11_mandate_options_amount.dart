// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2 {const PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2 $empty = PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2($value)'; } 
 }
typedef PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmount = OneOf2<int,PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2>;
