// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param13.dart';final class PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsGrabpay = OneOf2<PaymentMethodOptionsParam13,PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2>;