// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param113.dart';final class PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2 {const PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2._(json),
}; }

static const PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2 $empty = PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2($value)'; } 
 }
typedef PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccount = OneOf2<PaymentMethodOptionsParam113,PostTreasuryOutboundTransfersRequestDestinationPaymentMethodOptionsUsBankAccountVariant2>;