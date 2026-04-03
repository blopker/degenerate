// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param12.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsGiropay = OneOf2<PaymentMethodOptionsParam12,PostPaymentIntentsRequestPaymentMethodOptionsGiropayVariant2>;
