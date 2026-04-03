// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param31.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit = OneOf2<PaymentIntentPaymentMethodOptionsParam31,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2>;
