// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param63.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsPayco = OneOf2<PaymentMethodOptionsParam63,PostPaymentIntentsIntentRequestPaymentMethodOptionsPaycoVariant2>;
