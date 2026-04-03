// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_details_card_installments_plan.dart';/// Installment configuration for payments.
@immutable final class ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment {const ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment({this.plan});

factory ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment.fromJson(Map<String, dynamic> json) { return ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment(
  plan: json['plan'] != null ? PaymentMethodDetailsCardInstallmentsPlan.fromJson(json['plan'] as Map<String, dynamic>) : null,
); }

final PaymentMethodDetailsCardInstallmentsPlan? plan;

Map<String, dynamic> toJson() { return {
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'plan'}.contains(key)); } 
ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment copyWith({PaymentMethodDetailsCardInstallmentsPlan Function()? plan}) { return ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment(
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment &&
          plan == other.plan; } 
@override int get hashCode { return plan.hashCode; } 
@override String toString() { return 'ConfirmationTokensResourcePaymentMethodOptionsResourceCardResourceInstallment(plan: $plan)'; } 
 }
