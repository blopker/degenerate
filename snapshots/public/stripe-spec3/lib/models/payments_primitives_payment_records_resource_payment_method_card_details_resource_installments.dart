// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payments_primitives_payment_records_resource_payment_method_card_details_resource_installment_plan.dart';/// 
@immutable final class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments {const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments({this.plan = const Omittable.absent()});

factory PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments(
  plan: json.containsKey('plan') ? Omittable(json['plan'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentPlan.fromJson(json['plan'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Installment plan selected for the payment.
final Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentPlan?> plan;

Map<String, dynamic> toJson() { return {
  if (plan.isPresent) 'plan': plan.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'plan'}.contains(key)); } 
PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments copyWith({Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallmentPlan?>? plan}) { return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments(
  plan: plan ?? this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments &&
          plan == other.plan; } 
@override int get hashCode { return plan.hashCode; } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments(plan: $plan)'; } 
 }
