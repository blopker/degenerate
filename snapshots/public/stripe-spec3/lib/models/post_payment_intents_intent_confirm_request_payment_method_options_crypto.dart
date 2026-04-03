// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param84.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCrypto = OneOf2<PaymentMethodOptionsParam84,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2>;
