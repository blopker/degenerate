// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param103.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPix = OneOf2<PaymentMethodOptionsParam103,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPixVariant2>;
