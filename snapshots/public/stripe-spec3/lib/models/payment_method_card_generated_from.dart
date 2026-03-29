// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_method_card_generated_card.dart';/// Details of the original PaymentMethod that created this object.
final class PaymentMethodCardGeneratedFrom {const PaymentMethodCardGeneratedFrom({this.paymentMethodCardGeneratedCard});

factory PaymentMethodCardGeneratedFrom.fromJson(Map<String, dynamic> json) { return PaymentMethodCardGeneratedFrom(
  paymentMethodCardGeneratedCard: PaymentMethodCardGeneratedCard.canParse(json) ? PaymentMethodCardGeneratedCard.fromJson(json) : null,
); }

final PaymentMethodCardGeneratedCard? paymentMethodCardGeneratedCard;

/// At least one variant must be present.
bool get isValid { return paymentMethodCardGeneratedCard != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentMethodCardGeneratedCard?.toJson(),
}; } 
 }
