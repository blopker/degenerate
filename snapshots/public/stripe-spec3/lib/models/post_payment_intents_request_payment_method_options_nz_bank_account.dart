// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param9.dart';final class PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccount = OneOf2<PaymentIntentPaymentMethodOptionsParam9,PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2>;