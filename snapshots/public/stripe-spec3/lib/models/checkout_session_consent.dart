// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_pages_checkout_session_consent.dart';/// Results of `consent_collection` for this session.
final class CheckoutSessionConsent {const CheckoutSessionConsent({this.paymentPagesCheckoutSessionConsent});

factory CheckoutSessionConsent.fromJson(Map<String, dynamic> json) { return CheckoutSessionConsent(
  paymentPagesCheckoutSessionConsent: PaymentPagesCheckoutSessionConsent.canParse(json) ? PaymentPagesCheckoutSessionConsent.fromJson(json) : null,
); }

final PaymentPagesCheckoutSessionConsent? paymentPagesCheckoutSessionConsent;

/// At least one variant must be present.
bool get isValid { return paymentPagesCheckoutSessionConsent != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentPagesCheckoutSessionConsent?.toJson(),
}; } 
 }
