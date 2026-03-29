// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_processing.dart';/// If present, this property tells you about the processing state of the payment.
final class PaymentIntentProcessing2 {const PaymentIntentProcessing2({this.paymentIntentProcessing});

factory PaymentIntentProcessing2.fromJson(Map<String, dynamic> json) { return PaymentIntentProcessing2(
  paymentIntentProcessing: PaymentIntentProcessing.canParse(json) ? PaymentIntentProcessing.fromJson(json) : null,
); }

final PaymentIntentProcessing? paymentIntentProcessing;

/// At least one variant must be present.
bool get isValid { return paymentIntentProcessing != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentIntentProcessing?.toJson(),
}; } 
 }
