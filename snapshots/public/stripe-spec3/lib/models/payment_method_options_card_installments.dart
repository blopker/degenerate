// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_details_card_installments_plan.dart';import 'payment_method_options_card_installments_plan.dart';/// 
final class PaymentMethodOptionsCardInstallments {const PaymentMethodOptionsCardInstallments({this.availablePlans, required this.enabled, this.plan, });

factory PaymentMethodOptionsCardInstallments.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsCardInstallments(
  availablePlans: (json['available_plans'] as List<dynamic>?)?.map((e) => PaymentMethodDetailsCardInstallmentsPlan.fromJson(e as Map<String, dynamic>)).toList(),
  enabled: json['enabled'] as bool,
  plan: json['plan'] != null ? PaymentMethodOptionsCardInstallmentsPlan.fromJson(json['plan'] as Map<String, dynamic>) : null,
); }

/// Installment plans that may be selected for this PaymentIntent.
final List<PaymentMethodDetailsCardInstallmentsPlan>? availablePlans;

/// Whether Installments are enabled for this PaymentIntent.
final bool enabled;

/// Installment plan selected for this PaymentIntent.
final PaymentMethodOptionsCardInstallmentsPlan? plan;

Map<String, dynamic> toJson() { return {
  if (availablePlans != null) 'available_plans': availablePlans?.map((e) => e.toJson()).toList(),
  'enabled': enabled,
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PaymentMethodOptionsCardInstallments copyWith({List<PaymentMethodDetailsCardInstallmentsPlan>? Function()? availablePlans, bool? enabled, PaymentMethodOptionsCardInstallmentsPlan? Function()? plan, }) { return PaymentMethodOptionsCardInstallments(
  availablePlans: availablePlans != null ? availablePlans() : this.availablePlans,
  enabled: enabled ?? this.enabled,
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsCardInstallments &&
          listEquals(availablePlans, other.availablePlans) &&
          enabled == other.enabled &&
          plan == other.plan; } 
@override int get hashCode { return Object.hash(Object.hashAll(availablePlans ?? const []), enabled, plan); } 
@override String toString() { return 'PaymentMethodOptionsCardInstallments(availablePlans: $availablePlans, enabled: $enabled, plan: $plan)'; } 
 }
