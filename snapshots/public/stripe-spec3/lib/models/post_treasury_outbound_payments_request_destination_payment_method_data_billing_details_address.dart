// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address11.dart';final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2 {const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2._(json),
}; }

static const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2($value)'; } 
 }
typedef PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddress = OneOf2<BillingDetailsAddress11,PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsAddressVariant2>;