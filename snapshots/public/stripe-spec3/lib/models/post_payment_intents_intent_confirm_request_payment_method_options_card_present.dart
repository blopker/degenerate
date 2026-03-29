// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param83.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresent = OneOf2<PaymentMethodOptionsParam83,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCardPresentVariant2>;