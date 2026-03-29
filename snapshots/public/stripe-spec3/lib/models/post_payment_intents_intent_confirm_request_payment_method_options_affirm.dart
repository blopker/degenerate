// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param75.dart';final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirm = OneOf2<PaymentMethodOptionsParam75,PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2>;