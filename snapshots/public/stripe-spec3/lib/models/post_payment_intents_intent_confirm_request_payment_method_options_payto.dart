// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param39.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayto = OneOf2<PaymentIntentPaymentMethodOptionsParam39,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2>;