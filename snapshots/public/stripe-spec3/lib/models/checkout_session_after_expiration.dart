// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_pages_checkout_session_after_expiration.dart';/// When set, provides configuration for actions to take if this Checkout Session expires.
final class CheckoutSessionAfterExpiration {const CheckoutSessionAfterExpiration({this.paymentPagesCheckoutSessionAfterExpiration});

factory CheckoutSessionAfterExpiration.fromJson(Map<String, dynamic> json) { return CheckoutSessionAfterExpiration(
  paymentPagesCheckoutSessionAfterExpiration: PaymentPagesCheckoutSessionAfterExpiration.canParse(json) ? PaymentPagesCheckoutSessionAfterExpiration.fromJson(json) : null,
); }

final PaymentPagesCheckoutSessionAfterExpiration? paymentPagesCheckoutSessionAfterExpiration;

/// At least one variant must be present.
bool get isValid { return paymentPagesCheckoutSessionAfterExpiration != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentPagesCheckoutSessionAfterExpiration?.toJson(),
}; } 
 }
