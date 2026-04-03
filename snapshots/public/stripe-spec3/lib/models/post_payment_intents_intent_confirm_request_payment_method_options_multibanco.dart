// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param96.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibanco = OneOf2<PaymentMethodOptionsParam96,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMultibancoVariant2>;
