// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentIntentNextActionKonbiniMinistop {const PaymentIntentNextActionKonbiniMinistop({required this.paymentCode, this.confirmationNumber, });

factory PaymentIntentNextActionKonbiniMinistop.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionKonbiniMinistop(
  confirmationNumber: json['confirmation_number'] as String?,
  paymentCode: json['payment_code'] as String,
); }

/// The confirmation number.
final String? confirmationNumber;

/// The payment code.
final String paymentCode;

Map<String, dynamic> toJson() { return {
  'confirmation_number': ?confirmationNumber,
  'payment_code': paymentCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payment_code') && json['payment_code'] is String; } 
PaymentIntentNextActionKonbiniMinistop copyWith({String Function()? confirmationNumber, String? paymentCode, }) { return PaymentIntentNextActionKonbiniMinistop(
  confirmationNumber: confirmationNumber != null ? confirmationNumber() : this.confirmationNumber,
  paymentCode: paymentCode ?? this.paymentCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionKonbiniMinistop &&
          confirmationNumber == other.confirmationNumber &&
          paymentCode == other.paymentCode; } 
@override int get hashCode { return Object.hash(confirmationNumber, paymentCode); } 
@override String toString() { return 'PaymentIntentNextActionKonbiniMinistop(confirmationNumber: $confirmationNumber, paymentCode: $paymentCode)'; } 
 }
