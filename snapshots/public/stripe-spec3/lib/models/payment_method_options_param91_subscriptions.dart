// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param91_subscriptions_variant1.dart';final class PaymentMethodOptionsParam91SubscriptionsVariant2 {const PaymentMethodOptionsParam91SubscriptionsVariant2._(this.value);

factory PaymentMethodOptionsParam91SubscriptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam91SubscriptionsVariant2._(json),
}; }

static const PaymentMethodOptionsParam91SubscriptionsVariant2 $empty = PaymentMethodOptionsParam91SubscriptionsVariant2._('');

static const List<PaymentMethodOptionsParam91SubscriptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam91SubscriptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam91SubscriptionsVariant2($value)'; } 
 }
typedef PaymentMethodOptionsParam91Subscriptions = OneOf2<List<PaymentMethodOptionsParam91SubscriptionsVariant1>,PaymentMethodOptionsParam91SubscriptionsVariant2>;