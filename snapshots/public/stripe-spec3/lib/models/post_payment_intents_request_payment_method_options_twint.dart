// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param35.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsTwintVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsTwintVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsTwintVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsTwintVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsTwintVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsTwintVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsTwintVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsTwintVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsTwintVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsTwint = OneOf2<PaymentMethodOptionsParam35,PostPaymentIntentsRequestPaymentMethodOptionsTwintVariant2>;
