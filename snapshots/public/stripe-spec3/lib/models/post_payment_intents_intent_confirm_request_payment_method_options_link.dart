// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param36.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLink = OneOf2<PaymentIntentPaymentMethodOptionsParam36,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsLinkVariant2>;