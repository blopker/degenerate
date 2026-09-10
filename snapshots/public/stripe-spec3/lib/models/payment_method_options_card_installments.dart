// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_details_card_installments_plan.dart';/// 
@immutable final class PaymentMethodOptionsCardInstallments {const PaymentMethodOptionsCardInstallments({required this.enabled, this.availablePlans = const Omittable.absent(), this.plan = const Omittable.absent(), });

factory PaymentMethodOptionsCardInstallments.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsCardInstallments(
  availablePlans: json.containsKey('available_plans') ? Omittable((json['available_plans'] as List<dynamic>?)?.map((e) => PaymentMethodDetailsCardInstallmentsPlan.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  enabled: json['enabled'] as bool,
  plan: json.containsKey('plan') ? Omittable(json['plan'] != null ? PaymentMethodDetailsCardInstallmentsPlan.fromJson(json['plan'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Installment plans that may be selected for this PaymentIntent.
final Omittable<List<PaymentMethodDetailsCardInstallmentsPlan>?> availablePlans;

/// Whether Installments are enabled for this PaymentIntent.
final bool enabled;

/// Installment plan selected for this PaymentIntent.
final Omittable<PaymentMethodDetailsCardInstallmentsPlan?> plan;

Map<String, dynamic> toJson() { return {
  if (availablePlans.isPresent) 'available_plans': availablePlans.value?.map((e) => e.toJson()).toList(),
  'enabled': enabled,
  if (plan.isPresent) 'plan': plan.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PaymentMethodOptionsCardInstallments copyWith({Omittable<List<PaymentMethodDetailsCardInstallmentsPlan>?>? availablePlans, bool? enabled, Omittable<PaymentMethodDetailsCardInstallmentsPlan?>? plan, }) { return PaymentMethodOptionsCardInstallments(
  availablePlans: availablePlans ?? this.availablePlans,
  enabled: enabled ?? this.enabled,
  plan: plan ?? this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsCardInstallments &&
          availablePlans.isPresent == other.availablePlans.isPresent &&
          listEquals(availablePlans.value, other.availablePlans.value) &&
          enabled == other.enabled &&
          plan == other.plan; } 
@override int get hashCode { return Object.hash(Object.hashAll(availablePlans.value ?? const []), enabled, plan); } 
@override String toString() { return 'PaymentMethodOptionsCardInstallments(availablePlans: $availablePlans, enabled: $enabled, plan: $plan)'; } 
 }
