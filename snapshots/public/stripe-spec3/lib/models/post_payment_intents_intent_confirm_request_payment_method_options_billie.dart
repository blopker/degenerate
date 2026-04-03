// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param81.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillie = OneOf2<PaymentMethodOptionsParam81,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBillieVariant2>;
