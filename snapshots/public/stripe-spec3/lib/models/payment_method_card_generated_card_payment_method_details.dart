// GENERATED CODE - DO NOT MODIFY BY HAND

import 'card_generated_from_payment_method_details.dart';/// Transaction-specific details of the payment method used in the payment.
final class PaymentMethodCardGeneratedCardPaymentMethodDetails {const PaymentMethodCardGeneratedCardPaymentMethodDetails({this.cardGeneratedFromPaymentMethodDetails});

factory PaymentMethodCardGeneratedCardPaymentMethodDetails.fromJson(Map<String, dynamic> json) { return PaymentMethodCardGeneratedCardPaymentMethodDetails(
  cardGeneratedFromPaymentMethodDetails: CardGeneratedFromPaymentMethodDetails.canParse(json) ? CardGeneratedFromPaymentMethodDetails.fromJson(json) : null,
); }

final CardGeneratedFromPaymentMethodDetails? cardGeneratedFromPaymentMethodDetails;

/// At least one variant must be present.
bool get isValid { return cardGeneratedFromPaymentMethodDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?cardGeneratedFromPaymentMethodDetails?.toJson(),
}; } 
 }
