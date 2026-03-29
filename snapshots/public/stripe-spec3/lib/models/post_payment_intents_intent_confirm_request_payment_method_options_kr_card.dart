// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param93.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCard = OneOf2<PaymentMethodOptionsParam93,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKrCardVariant2>;