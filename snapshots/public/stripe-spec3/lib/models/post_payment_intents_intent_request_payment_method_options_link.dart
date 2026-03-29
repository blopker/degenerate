// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param22.dart';final class PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsLink = OneOf2<PaymentIntentPaymentMethodOptionsParam22,PostPaymentIntentsIntentRequestPaymentMethodOptionsLinkVariant2>;