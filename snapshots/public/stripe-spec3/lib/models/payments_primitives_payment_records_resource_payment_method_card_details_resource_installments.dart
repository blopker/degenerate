// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payments_primitives_payment_records_resource_payment_method_card_details_resource_installments_plan.dart';/// 
final class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments {const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments({this.plan});

factory PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments(
  plan: json['plan'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentsPlan.fromJson(json['plan'] as Map<String, dynamic>) : null,
); }

/// Installment plan selected for the payment.
final PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentsPlan? plan;

Map<String, dynamic> toJson() { return {
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments copyWith({PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentsPlan? Function()? plan}) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments(
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments &&
          plan == other.plan; } 
@override int get hashCode { return plan.hashCode; } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments(plan: $plan)'; } 
 }
