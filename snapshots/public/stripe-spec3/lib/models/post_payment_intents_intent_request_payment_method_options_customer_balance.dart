// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param20.dart';final class PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalance = OneOf2<PaymentIntentPaymentMethodOptionsParam20,PostPaymentIntentsIntentRequestPaymentMethodOptionsCustomerBalanceVariant2>;