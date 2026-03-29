// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param10.dart';final class PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsCrypto = OneOf2<PaymentMethodOptionsParam10,PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2>;