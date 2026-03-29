// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param40.dart';final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipay = OneOf2<PaymentMethodOptionsParam40,PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2>;