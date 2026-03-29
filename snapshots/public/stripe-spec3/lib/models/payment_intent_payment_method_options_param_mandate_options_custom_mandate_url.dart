// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentIntentPaymentMethodOptionsParamMandateOptionsCustomMandateUrlVariant2 {const PaymentIntentPaymentMethodOptionsParamMandateOptionsCustomMandateUrlVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParamMandateOptionsCustomMandateUrlVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParamMandateOptionsCustomMandateUrlVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParamMandateOptionsCustomMandateUrlVariant2 $empty = PaymentIntentPaymentMethodOptionsParamMandateOptionsCustomMandateUrlVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParamMandateOptionsCustomMandateUrlVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParamMandateOptionsCustomMandateUrlVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParamMandateOptionsCustomMandateUrlVariant2($value)'; } 
 }
typedef PaymentIntentPaymentMethodOptionsParamMandateOptionsCustomMandateUrl = OneOf2<String,PaymentIntentPaymentMethodOptionsParamMandateOptionsCustomMandateUrlVariant2>;