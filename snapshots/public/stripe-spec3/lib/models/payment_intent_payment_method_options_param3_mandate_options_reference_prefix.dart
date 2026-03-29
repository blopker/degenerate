// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentIntentPaymentMethodOptionsParam3MandateOptionsReferencePrefixVariant2 {const PaymentIntentPaymentMethodOptionsParam3MandateOptionsReferencePrefixVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam3MandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam3MandateOptionsReferencePrefixVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam3MandateOptionsReferencePrefixVariant2 $empty = PaymentIntentPaymentMethodOptionsParam3MandateOptionsReferencePrefixVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam3MandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam3MandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam3MandateOptionsReferencePrefixVariant2($value)'; } 
 }
typedef PaymentIntentPaymentMethodOptionsParam3MandateOptionsReferencePrefix = OneOf2<String,PaymentIntentPaymentMethodOptionsParam3MandateOptionsReferencePrefixVariant2>;