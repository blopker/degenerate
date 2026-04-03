// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2 {const PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2 $empty = PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2($value)'; } 
 }
typedef PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefix = OneOf2<String,PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2>;
