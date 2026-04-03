// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhone = OneOf2<String,PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2>;
