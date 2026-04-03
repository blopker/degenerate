// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param12.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsSepaDebit = OneOf2<PaymentIntentPaymentMethodOptionsParam12,PostPaymentIntentsRequestPaymentMethodOptionsSepaDebitVariant2>;
