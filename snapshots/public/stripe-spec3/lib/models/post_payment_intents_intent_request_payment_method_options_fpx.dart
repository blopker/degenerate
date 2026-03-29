// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param48.dart';final class PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsFpx = OneOf2<PaymentMethodOptionsParam48,PostPaymentIntentsIntentRequestPaymentMethodOptionsFpxVariant2>;