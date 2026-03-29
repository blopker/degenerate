// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_method_details.dart';/// Details about the payment method at the time of the transaction.
final class ChargePaymentMethodDetails {const ChargePaymentMethodDetails({this.paymentMethodDetails});

factory ChargePaymentMethodDetails.fromJson(Map<String, dynamic> json) { return ChargePaymentMethodDetails(
  paymentMethodDetails: PaymentMethodDetails.canParse(json) ? PaymentMethodDetails.fromJson(json) : null,
); }

final PaymentMethodDetails? paymentMethodDetails;

/// At least one variant must be present.
bool get isValid { return paymentMethodDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentMethodDetails?.toJson(),
}; } 
 }
