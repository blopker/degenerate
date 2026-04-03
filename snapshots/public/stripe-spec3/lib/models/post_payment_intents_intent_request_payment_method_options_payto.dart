// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param25.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsPayto = OneOf2<PaymentIntentPaymentMethodOptionsParam25,PostPaymentIntentsIntentRequestPaymentMethodOptionsPaytoVariant2>;
