// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2 {const PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2 $empty = PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2($value)'; } 
 }
typedef PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefix = OneOf2<String,PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2>;
