// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param101.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynow = OneOf2<PaymentMethodOptionsParam101,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaynowVariant2>;