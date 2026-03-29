// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address9.dart';final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2($value)'; } 
 }
typedef PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress = OneOf2<BillingDetailsAddress9,PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2>;