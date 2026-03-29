// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_next_action_konbini_ministop.dart';/// Ministop instruction details.
final class PaymentIntentNextActionKonbiniStoresMinistop {const PaymentIntentNextActionKonbiniStoresMinistop({this.paymentIntentNextActionKonbiniMinistop});

factory PaymentIntentNextActionKonbiniStoresMinistop.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionKonbiniStoresMinistop(
  paymentIntentNextActionKonbiniMinistop: PaymentIntentNextActionKonbiniMinistop.canParse(json) ? PaymentIntentNextActionKonbiniMinistop.fromJson(json) : null,
); }

final PaymentIntentNextActionKonbiniMinistop? paymentIntentNextActionKonbiniMinistop;

/// At least one variant must be present.
bool get isValid { return paymentIntentNextActionKonbiniMinistop != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentIntentNextActionKonbiniMinistop?.toJson(),
}; } 
 }
