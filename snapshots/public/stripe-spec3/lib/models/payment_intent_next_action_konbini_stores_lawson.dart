// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_next_action_konbini_lawson.dart';/// Lawson instruction details.
final class PaymentIntentNextActionKonbiniStoresLawson {const PaymentIntentNextActionKonbiniStoresLawson({this.paymentIntentNextActionKonbiniLawson});

factory PaymentIntentNextActionKonbiniStoresLawson.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionKonbiniStoresLawson(
  paymentIntentNextActionKonbiniLawson: PaymentIntentNextActionKonbiniLawson.canParse(json) ? PaymentIntentNextActionKonbiniLawson.fromJson(json) : null,
); }

final PaymentIntentNextActionKonbiniLawson? paymentIntentNextActionKonbiniLawson;

/// At least one variant must be present.
bool get isValid { return paymentIntentNextActionKonbiniLawson != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentIntentNextActionKonbiniLawson?.toJson(),
}; } 
 }
