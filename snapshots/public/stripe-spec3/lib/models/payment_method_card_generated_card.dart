// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'card_generated_from_payment_method_details.dart';import 'payment_method_card_generated_card_setup_attempt.dart';import 'setup_attempt.dart';/// 
final class PaymentMethodCardGeneratedCard {const PaymentMethodCardGeneratedCard({this.charge, this.paymentMethodDetails, this.setupAttempt, });

factory PaymentMethodCardGeneratedCard.fromJson(Map<String, dynamic> json) { return PaymentMethodCardGeneratedCard(
  charge: json['charge'] as String?,
  paymentMethodDetails: json['payment_method_details'] != null ? CardGeneratedFromPaymentMethodDetails.fromJson(json['payment_method_details'] as Map<String, dynamic>) : null,
  setupAttempt: json['setup_attempt'] != null ? OneOf2.parse(json['setup_attempt'], fromA: (v) => v as String, fromB: (v) => SetupAttempt.fromJson(v as Map<String, dynamic>),) : null,
); }

/// The charge that created this object.
final String? charge;

/// Transaction-specific details of the payment method used in the payment.
final CardGeneratedFromPaymentMethodDetails? paymentMethodDetails;

/// The ID of the SetupAttempt that generated this PaymentMethod, if any.
final PaymentMethodCardGeneratedCardSetupAttempt? setupAttempt;

Map<String, dynamic> toJson() { return {
  'charge': ?charge,
  if (paymentMethodDetails != null) 'payment_method_details': paymentMethodDetails?.toJson(),
  if (setupAttempt != null) 'setup_attempt': setupAttempt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'charge', 'payment_method_details', 'setup_attempt'}.contains(key)); } 
PaymentMethodCardGeneratedCard copyWith({String? Function()? charge, CardGeneratedFromPaymentMethodDetails? Function()? paymentMethodDetails, PaymentMethodCardGeneratedCardSetupAttempt? Function()? setupAttempt, }) { return PaymentMethodCardGeneratedCard(
  charge: charge != null ? charge() : this.charge,
  paymentMethodDetails: paymentMethodDetails != null ? paymentMethodDetails() : this.paymentMethodDetails,
  setupAttempt: setupAttempt != null ? setupAttempt() : this.setupAttempt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodCardGeneratedCard &&
          charge == other.charge &&
          paymentMethodDetails == other.paymentMethodDetails &&
          setupAttempt == other.setupAttempt; } 
@override int get hashCode { return Object.hash(charge, paymentMethodDetails, setupAttempt); } 
@override String toString() { return 'PaymentMethodCardGeneratedCard(charge: $charge, paymentMethodDetails: $paymentMethodDetails, setupAttempt: $setupAttempt)'; } 
 }
