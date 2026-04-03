// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param15.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebit = OneOf2<PaymentIntentPaymentMethodOptionsParam15,PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2>;
