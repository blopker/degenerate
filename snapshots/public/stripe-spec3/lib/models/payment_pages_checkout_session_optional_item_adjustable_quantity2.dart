// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_pages_checkout_session_optional_item_adjustable_quantity.dart';final class PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity2 {const PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity2({this.paymentPagesCheckoutSessionOptionalItemAdjustableQuantity});

factory PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity2.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity2(
  paymentPagesCheckoutSessionOptionalItemAdjustableQuantity: PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity.canParse(json) ? PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity.fromJson(json) : null,
); }

final PaymentPagesCheckoutSessionOptionalItemAdjustableQuantity? paymentPagesCheckoutSessionOptionalItemAdjustableQuantity;

/// At least one variant must be present.
bool get isValid { return paymentPagesCheckoutSessionOptionalItemAdjustableQuantity != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentPagesCheckoutSessionOptionalItemAdjustableQuantity?.toJson(),
}; } 
 }
