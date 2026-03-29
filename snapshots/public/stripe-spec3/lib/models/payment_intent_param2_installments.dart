// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan4.dart';import 'payment_intent_param2_installments_plan.dart';final class PaymentIntentParam2Installments {const PaymentIntentParam2Installments({this.enabled, this.plan, });

factory PaymentIntentParam2Installments.fromJson(Map<String, dynamic> json) { return PaymentIntentParam2Installments(
  enabled: json['enabled'] as bool?,
  plan: json['plan'] != null ? OneOf2.parse(json['plan'], fromA: (v) => InstallmentPlan4.fromJson(v as Map<String, dynamic>), fromB: (v) => PaymentIntentParam2InstallmentsPlanVariant2.fromJson(v as String),) : null,
); }

final bool? enabled;

final PaymentIntentParam2InstallmentsPlan? plan;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'plan'}.contains(key)); } 
PaymentIntentParam2Installments copyWith({bool Function()? enabled, PaymentIntentParam2InstallmentsPlan Function()? plan, }) { return PaymentIntentParam2Installments(
  enabled: enabled != null ? enabled() : this.enabled,
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentParam2Installments &&
          enabled == other.enabled &&
          plan == other.plan; } 
@override int get hashCode { return Object.hash(enabled, plan); } 
@override String toString() { return 'PaymentIntentParam2Installments(enabled: $enabled, plan: $plan)'; } 
 }
