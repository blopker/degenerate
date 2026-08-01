// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'card_generated_from_payment_method_details.dart';import 'payment_method_card_generated_card_setup_attempt.dart';import 'setup_attempt.dart';/// 
@immutable final class PaymentMethodCardGeneratedCard {const PaymentMethodCardGeneratedCard({this.charge = const Omittable.absent(), this.paymentMethodDetails = const Omittable.absent(), this.setupAttempt = const Omittable.absent(), });

factory PaymentMethodCardGeneratedCard.fromJson(Map<String, dynamic> json) { return PaymentMethodCardGeneratedCard(
  charge: json.containsKey('charge') ? Omittable(json['charge'] as String?) : const Omittable.absent(),
  paymentMethodDetails: json.containsKey('payment_method_details') ? Omittable(json['payment_method_details'] != null ? CardGeneratedFromPaymentMethodDetails.fromJson(json['payment_method_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  setupAttempt: json.containsKey('setup_attempt') ? Omittable(json['setup_attempt'] != null ? OneOf2.parse(json['setup_attempt'], fromA: (v) => v as String, fromB: (v) => SetupAttempt.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
); }

/// The charge that created this object.
final Omittable<String?> charge;

/// Transaction-specific details of the payment method used in the payment.
final Omittable<CardGeneratedFromPaymentMethodDetails?> paymentMethodDetails;

/// The ID of the SetupAttempt that generated this PaymentMethod, if any.
final Omittable<PaymentMethodCardGeneratedCardSetupAttempt?> setupAttempt;

Map<String, dynamic> toJson() { return {
  if (charge.isPresent) 'charge': charge.value,
  if (paymentMethodDetails.isPresent) 'payment_method_details': paymentMethodDetails.value?.toJson(),
  if (setupAttempt.isPresent) 'setup_attempt': setupAttempt.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'charge', 'payment_method_details', 'setup_attempt'}.contains(key)); } 
PaymentMethodCardGeneratedCard copyWith({Omittable<String?>? charge, Omittable<CardGeneratedFromPaymentMethodDetails?>? paymentMethodDetails, Omittable<PaymentMethodCardGeneratedCardSetupAttempt?>? setupAttempt, }) { return PaymentMethodCardGeneratedCard(
  charge: charge ?? this.charge,
  paymentMethodDetails: paymentMethodDetails ?? this.paymentMethodDetails,
  setupAttempt: setupAttempt ?? this.setupAttempt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodCardGeneratedCard &&
          charge == other.charge &&
          paymentMethodDetails == other.paymentMethodDetails &&
          setupAttempt == other.setupAttempt; } 
@override int get hashCode { return Object.hash(charge, paymentMethodDetails, setupAttempt); } 
@override String toString() { return 'PaymentMethodCardGeneratedCard(charge: $charge, paymentMethodDetails: $paymentMethodDetails, setupAttempt: $setupAttempt)'; } 
 }
