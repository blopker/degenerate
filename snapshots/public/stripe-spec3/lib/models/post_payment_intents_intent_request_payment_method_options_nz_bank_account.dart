// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param23.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccount = OneOf2<PaymentIntentPaymentMethodOptionsParam23,PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2>;
