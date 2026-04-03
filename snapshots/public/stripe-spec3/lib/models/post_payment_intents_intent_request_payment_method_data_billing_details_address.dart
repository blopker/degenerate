// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address3.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddress = OneOf2<BillingDetailsAddress3,PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2>;
