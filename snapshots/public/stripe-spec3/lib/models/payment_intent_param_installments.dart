// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan3.dart';import 'payment_intent_param_installments_plan.dart';@immutable final class PaymentIntentParamInstallments {const PaymentIntentParamInstallments({this.enabled, this.plan, });

factory PaymentIntentParamInstallments.fromJson(Map<String, dynamic> json) { return PaymentIntentParamInstallments(
  enabled: json['enabled'] as bool?,
  plan: json['plan'] != null ? OneOf2.parse(json['plan'], fromA: (v) => InstallmentPlan3.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentParamInstallmentsPlanVariant2.fromJson(v as String),) : null,
); }

final bool? enabled;

final PaymentIntentParamInstallmentsPlan? plan;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'plan'}.contains(key)); } 
PaymentIntentParamInstallments copyWith({bool Function()? enabled, PaymentIntentParamInstallmentsPlan Function()? plan, }) { return PaymentIntentParamInstallments(
  enabled: enabled != null ? enabled() : this.enabled,
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentParamInstallments &&
          enabled == other.enabled &&
          plan == other.plan; } 
@override int get hashCode { return Object.hash(enabled, plan); } 
@override String toString() { return 'PaymentIntentParamInstallments(enabled: $enabled, plan: $plan)'; } 
 }
