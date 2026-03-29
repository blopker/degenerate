// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param.dart';final class PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsAcssDebit = OneOf2<PaymentIntentPaymentMethodOptionsParam,PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2>;