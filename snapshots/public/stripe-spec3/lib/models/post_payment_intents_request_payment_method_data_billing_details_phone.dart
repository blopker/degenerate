// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2 {const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2 $empty = PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhone = OneOf2<String,PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2>;
