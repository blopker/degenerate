// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_pages_checkout_session_custom_text_position.dart';/// Custom text that should be displayed alongside shipping address collection.
final class PaymentPagesCheckoutSessionCustomTextShippingAddress {const PaymentPagesCheckoutSessionCustomTextShippingAddress({this.paymentPagesCheckoutSessionCustomTextPosition});

factory PaymentPagesCheckoutSessionCustomTextShippingAddress.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionCustomTextShippingAddress(
  paymentPagesCheckoutSessionCustomTextPosition: PaymentPagesCheckoutSessionCustomTextPosition.canParse(json) ? PaymentPagesCheckoutSessionCustomTextPosition.fromJson(json) : null,
); }

final PaymentPagesCheckoutSessionCustomTextPosition? paymentPagesCheckoutSessionCustomTextPosition;

/// At least one variant must be present.
bool get isValid { return paymentPagesCheckoutSessionCustomTextPosition != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentPagesCheckoutSessionCustomTextPosition?.toJson(),
}; } 
 }
