// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param89.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresent = OneOf2<PaymentMethodOptionsParam89,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2>;