// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_pages_checkout_session_currency_conversion.dart';/// Currency conversion details for [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing) sessions created before 2025-03-31.
final class CheckoutSessionCurrencyConversion {const CheckoutSessionCurrencyConversion({this.paymentPagesCheckoutSessionCurrencyConversion});

factory CheckoutSessionCurrencyConversion.fromJson(Map<String, dynamic> json) { return CheckoutSessionCurrencyConversion(
  paymentPagesCheckoutSessionCurrencyConversion: PaymentPagesCheckoutSessionCurrencyConversion.canParse(json) ? PaymentPagesCheckoutSessionCurrencyConversion.fromJson(json) : null,
); }

final PaymentPagesCheckoutSessionCurrencyConversion? paymentPagesCheckoutSessionCurrencyConversion;

/// At least one variant must be present.
bool get isValid { return paymentPagesCheckoutSessionCurrencyConversion != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentPagesCheckoutSessionCurrencyConversion?.toJson(),
}; } 
 }
