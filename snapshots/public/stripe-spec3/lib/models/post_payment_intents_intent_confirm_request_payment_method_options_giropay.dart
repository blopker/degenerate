// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param86.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropay = OneOf2<PaymentMethodOptionsParam86,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGiropayVariant2>;
