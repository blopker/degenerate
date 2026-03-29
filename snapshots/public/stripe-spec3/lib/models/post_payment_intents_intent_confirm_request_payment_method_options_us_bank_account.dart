// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param42.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccount = OneOf2<PaymentIntentPaymentMethodOptionsParam42,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2>;