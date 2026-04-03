// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param62.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsP24 = OneOf2<PaymentMethodOptionsParam62,PostPaymentIntentsIntentRequestPaymentMethodOptionsP24Variant2>;
