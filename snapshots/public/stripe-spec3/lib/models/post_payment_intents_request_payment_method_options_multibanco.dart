// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param22.dart';final class PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsMultibanco = OneOf2<PaymentMethodOptionsParam22,PostPaymentIntentsRequestPaymentMethodOptionsMultibancoVariant2>;