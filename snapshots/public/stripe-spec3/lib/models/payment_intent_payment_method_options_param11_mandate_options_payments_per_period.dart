// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2 {const PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2 $empty = PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2($value)'; } 
 }
typedef PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriod = OneOf2<int,PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2>;