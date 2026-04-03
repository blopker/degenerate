// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param95.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepay = OneOf2<PaymentMethodOptionsParam95,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMobilepayVariant2>;
