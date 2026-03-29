// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan5.dart';import 'payment_intent_param3_installments_plan.dart';final class PaymentIntentParam3Installments {const PaymentIntentParam3Installments({this.enabled, this.plan, });

factory PaymentIntentParam3Installments.fromJson(Map<String, dynamic> json) { return PaymentIntentParam3Installments(
  enabled: json['enabled'] as bool?,
  plan: json['plan'] != null ? OneOf2.parse(json['plan'], fromA: (v) => InstallmentPlan5.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentParam3InstallmentsPlanVariant2.fromJson(v as String),) : null,
); }

final bool? enabled;

final PaymentIntentParam3InstallmentsPlan? plan;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'plan'}.contains(key)); } 
PaymentIntentParam3Installments copyWith({bool Function()? enabled, PaymentIntentParam3InstallmentsPlan Function()? plan, }) { return PaymentIntentParam3Installments(
  enabled: enabled != null ? enabled() : this.enabled,
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentParam3Installments &&
          enabled == other.enabled &&
          plan == other.plan; } 
@override int get hashCode { return Object.hash(enabled, plan); } 
@override String toString() { return 'PaymentIntentParam3Installments(enabled: $enabled, plan: $plan)'; } 
 }
