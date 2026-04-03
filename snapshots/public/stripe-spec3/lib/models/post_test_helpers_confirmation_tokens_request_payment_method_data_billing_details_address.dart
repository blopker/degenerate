// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address10.dart';@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2 {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2._(json),
}; }

static const PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2($value)'; } 
 }
typedef PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddress = OneOf2<BillingDetailsAddress10,PostTestHelpersConfirmationTokensRequestPaymentMethodDataBillingDetailsAddressVariant2>;
