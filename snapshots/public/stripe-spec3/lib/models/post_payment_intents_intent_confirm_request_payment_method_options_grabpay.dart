// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param87.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpay = OneOf2<PaymentMethodOptionsParam87,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2>;
