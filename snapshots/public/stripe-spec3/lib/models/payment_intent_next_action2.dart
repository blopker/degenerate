// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_next_action.dart';/// If present, this property tells you what actions you need to take in order for your customer to fulfill a payment using the provided source.
final class PaymentIntentNextAction2 {const PaymentIntentNextAction2({this.paymentIntentNextAction});

factory PaymentIntentNextAction2.fromJson(Map<String, dynamic> json) { return PaymentIntentNextAction2(
  paymentIntentNextAction: PaymentIntentNextAction.canParse(json) ? PaymentIntentNextAction.fromJson(json) : null,
); }

final PaymentIntentNextAction? paymentIntentNextAction;

/// At least one variant must be present.
bool get isValid { return paymentIntentNextAction != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentIntentNextAction?.toJson(),
}; } 
 }
