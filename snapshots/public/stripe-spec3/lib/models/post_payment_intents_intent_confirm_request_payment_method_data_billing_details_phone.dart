// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone = OneOf2<String,PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2>;
