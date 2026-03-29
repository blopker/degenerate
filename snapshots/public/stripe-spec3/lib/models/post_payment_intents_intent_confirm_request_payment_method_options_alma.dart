// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param78.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlma = OneOf2<PaymentMethodOptionsParam78,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlmaVariant2>;