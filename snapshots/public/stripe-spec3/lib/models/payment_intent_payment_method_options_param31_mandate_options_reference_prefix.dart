// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentIntentPaymentMethodOptionsParam31MandateOptionsReferencePrefixVariant2 {const PaymentIntentPaymentMethodOptionsParam31MandateOptionsReferencePrefixVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam31MandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam31MandateOptionsReferencePrefixVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam31MandateOptionsReferencePrefixVariant2 $empty = PaymentIntentPaymentMethodOptionsParam31MandateOptionsReferencePrefixVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam31MandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam31MandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam31MandateOptionsReferencePrefixVariant2($value)'; } 
 }
typedef PaymentIntentPaymentMethodOptionsParam31MandateOptionsReferencePrefix = OneOf2<String,PaymentIntentPaymentMethodOptionsParam31MandateOptionsReferencePrefixVariant2>;