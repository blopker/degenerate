// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_pages_checkout_session_collected_information.dart';/// Information about the customer collected within the Checkout Session.
final class CheckoutSessionCollectedInformation {const CheckoutSessionCollectedInformation({this.paymentPagesCheckoutSessionCollectedInformation});

factory CheckoutSessionCollectedInformation.fromJson(Map<String, dynamic> json) { return CheckoutSessionCollectedInformation(
  paymentPagesCheckoutSessionCollectedInformation: PaymentPagesCheckoutSessionCollectedInformation.canParse(json) ? PaymentPagesCheckoutSessionCollectedInformation.fromJson(json) : null,
); }

final PaymentPagesCheckoutSessionCollectedInformation? paymentPagesCheckoutSessionCollectedInformation;

/// At least one variant must be present.
bool get isValid { return paymentPagesCheckoutSessionCollectedInformation != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentPagesCheckoutSessionCollectedInformation?.toJson(),
}; } 
 }
