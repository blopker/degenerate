// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payments_primitives_payment_records_resource_payment_method_card_details_resource_installment_plan.dart';/// 
final class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments {const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments({this.plan});

factory PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments(
  plan: json['plan'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentPlan.fromJson(json['plan'] as Map<String, dynamic>) : null,
); }

/// Installment plan selected for the payment.
final PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentPlan? plan;

Map<String, dynamic> toJson() { return {
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'plan'}.contains(key)); } 
PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments copyWith({PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentPlan? Function()? plan}) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments(
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments &&
          plan == other.plan; } 
@override int get hashCode { return plan.hashCode; } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments(plan: $plan)'; } 
 }
