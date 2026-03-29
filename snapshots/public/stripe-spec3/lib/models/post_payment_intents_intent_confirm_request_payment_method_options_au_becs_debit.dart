// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param30.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebit = OneOf2<PaymentIntentPaymentMethodOptionsParam30,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2>;