// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param4.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsBlik = OneOf2<PaymentIntentPaymentMethodOptionsParam4,PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2>;
