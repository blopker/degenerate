// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param29.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebit = OneOf2<PaymentIntentPaymentMethodOptionsParam29,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitVariant2>;
