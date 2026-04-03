// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param77.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipay = OneOf2<PaymentMethodOptionsParam77,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2>;
