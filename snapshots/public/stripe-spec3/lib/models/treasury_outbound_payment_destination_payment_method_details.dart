// GENERATED CODE - DO NOT MODIFY BY HAND

import 'outbound_payments_payment_method_details.dart';/// Details about the PaymentMethod for an OutboundPayment.
final class TreasuryOutboundPaymentDestinationPaymentMethodDetails {const TreasuryOutboundPaymentDestinationPaymentMethodDetails({this.outboundPaymentsPaymentMethodDetails});

factory TreasuryOutboundPaymentDestinationPaymentMethodDetails.fromJson(Map<String, dynamic> json) { return TreasuryOutboundPaymentDestinationPaymentMethodDetails(
  outboundPaymentsPaymentMethodDetails: OutboundPaymentsPaymentMethodDetails.canParse(json) ? OutboundPaymentsPaymentMethodDetails.fromJson(json) : null,
); }

final OutboundPaymentsPaymentMethodDetails? outboundPaymentsPaymentMethodDetails;

/// At least one variant must be present.
bool get isValid { return outboundPaymentsPaymentMethodDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?outboundPaymentsPaymentMethodDetails?.toJson(),
}; } 
 }
