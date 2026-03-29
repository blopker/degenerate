// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param35.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEps = OneOf2<PaymentIntentPaymentMethodOptionsParam35,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsEpsVariant2>;