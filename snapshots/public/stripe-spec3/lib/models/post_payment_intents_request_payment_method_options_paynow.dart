// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param27.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsPaynow = OneOf2<PaymentMethodOptionsParam27,PostPaymentIntentsRequestPaymentMethodOptionsPaynowVariant2>;
