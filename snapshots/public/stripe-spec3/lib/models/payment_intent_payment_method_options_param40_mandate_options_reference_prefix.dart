// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2 {const PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2 $empty = PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2($value)'; } 
 }
typedef PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefix = OneOf2<String,PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2>;
