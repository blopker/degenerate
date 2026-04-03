// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param3.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsAlipay = OneOf2<PaymentMethodOptionsParam3,PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2>;
