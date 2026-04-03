// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param105.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPay = OneOf2<PaymentMethodOptionsParam105,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2>;
