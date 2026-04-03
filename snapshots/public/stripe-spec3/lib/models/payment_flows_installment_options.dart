// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_details_card_installments_plan.dart';/// 
@immutable final class PaymentFlowsInstallmentOptions {const PaymentFlowsInstallmentOptions({required this.enabled, this.plan, });

factory PaymentFlowsInstallmentOptions.fromJson(Map<String, dynamic> json) { return PaymentFlowsInstallmentOptions(
  enabled: json['enabled'] as bool,
  plan: json['plan'] != null ? PaymentMethodDetailsCardInstallmentsPlan.fromJson(json['plan'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PaymentMethodDetailsCardInstallmentsPlan? plan;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PaymentFlowsInstallmentOptions copyWith({bool? enabled, PaymentMethodDetailsCardInstallmentsPlan Function()? plan, }) { return PaymentFlowsInstallmentOptions(
  enabled: enabled ?? this.enabled,
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsInstallmentOptions &&
          enabled == other.enabled &&
          plan == other.plan; } 
@override int get hashCode { return Object.hash(enabled, plan); } 
@override String toString() { return 'PaymentFlowsInstallmentOptions(enabled: $enabled, plan: $plan)'; } 
 }
