// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan.dart';import 'invoice_payment_method_options_param17_installments_plan.dart';@immutable final class InvoicePaymentMethodOptionsParam17Installments {const InvoicePaymentMethodOptionsParam17Installments({this.enabled, this.plan, });

factory InvoicePaymentMethodOptionsParam17Installments.fromJson(Map<String, dynamic> json) { return InvoicePaymentMethodOptionsParam17Installments(
  enabled: json['enabled'] as bool?,
  plan: json['plan'] != null ? OneOf2.parse(json['plan'], fromA: (v) => InstallmentPlan.fromJson(v as Map<String, dynamic>), fromB: (v) => InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2.fromJson(v as String),) : null,
); }

final bool? enabled;

final InvoicePaymentMethodOptionsParam17InstallmentsPlan? plan;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  if (plan != null) 'plan': plan?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'plan'}.contains(key)); } 
InvoicePaymentMethodOptionsParam17Installments copyWith({bool Function()? enabled, InvoicePaymentMethodOptionsParam17InstallmentsPlan Function()? plan, }) { return InvoicePaymentMethodOptionsParam17Installments(
  enabled: enabled != null ? enabled() : this.enabled,
  plan: plan != null ? plan() : this.plan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam17Installments &&
          enabled == other.enabled &&
          plan == other.plan; } 
@override int get hashCode { return Object.hash(enabled, plan); } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam17Installments(enabled: $enabled, plan: $plan)'; } 
 }
