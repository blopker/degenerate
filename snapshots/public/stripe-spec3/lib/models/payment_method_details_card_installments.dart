// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_method_details_card_installments_plan.dart';/// 
final class PaymentMethodDetailsCardInstallments {const PaymentMethodDetailsCardInstallments({this.plan});

factory PaymentMethodDetailsCardInstallments.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsCardInstallments(
  plan: json['plan'] != null ? PaymentMethodDetailsCardInstallmentsPlan.fromJson(json['plan'] as Map<String, dynamic>) : null,
); }

/// Installment plan selected for the payment.
final PaymentMethodDetailsCardInstallmentsPlan? plan;

Map<String, dynamic> toJson() { return {
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'plan'}.contains(key)); } 
PaymentMethodDetailsCardInstallments copyWith({PaymentMethodDetailsCardInstallmentsPlan? Function()? plan}) { return PaymentMethodDetailsCardInstallments(
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsCardInstallments &&
          plan == other.plan; } 
@override int get hashCode { return plan.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsCardInstallments(plan: $plan)'; } 
 }
