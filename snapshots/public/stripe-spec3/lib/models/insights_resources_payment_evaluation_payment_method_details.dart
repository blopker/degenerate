// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'insights_resources_payment_evaluation_billing_details.dart';import 'insights_resources_payment_evaluation_payment_method_details_payment_method.dart';import 'payment_method.dart';/// Payment method details attached to this payment evaluation.
@immutable final class InsightsResourcesPaymentEvaluationPaymentMethodDetails {const InsightsResourcesPaymentEvaluationPaymentMethodDetails({required this.paymentMethod, this.billingDetails = const Omittable.absent(), });

factory InsightsResourcesPaymentEvaluationPaymentMethodDetails.fromJson(Map<String, dynamic> json) { return InsightsResourcesPaymentEvaluationPaymentMethodDetails(
  billingDetails: json.containsKey('billing_details') ? Omittable(json['billing_details'] != null ? InsightsResourcesPaymentEvaluationBillingDetails.fromJson(json['billing_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  paymentMethod: OneOf2.parse(json['payment_method'], fromA: (v) => v as String, fromB: (v) => PaymentMethod.fromJson(v as Map<String, dynamic>),),
); }

/// Billing information associated with the payment evaluation.
final Omittable<InsightsResourcesPaymentEvaluationBillingDetails?> billingDetails;

/// The payment method used in this payment evaluation.
final InsightsResourcesPaymentEvaluationPaymentMethodDetailsPaymentMethod paymentMethod;

Map<String, dynamic> toJson() { return {
  if (billingDetails.isPresent) 'billing_details': billingDetails.value?.toJson(),
  'payment_method': paymentMethod.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payment_method'); } 
InsightsResourcesPaymentEvaluationPaymentMethodDetails copyWith({Omittable<InsightsResourcesPaymentEvaluationBillingDetails?>? billingDetails, InsightsResourcesPaymentEvaluationPaymentMethodDetailsPaymentMethod? paymentMethod, }) { return InsightsResourcesPaymentEvaluationPaymentMethodDetails(
  billingDetails: billingDetails ?? this.billingDetails,
  paymentMethod: paymentMethod ?? this.paymentMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsResourcesPaymentEvaluationPaymentMethodDetails &&
          billingDetails == other.billingDetails &&
          paymentMethod == other.paymentMethod; } 
@override int get hashCode { return Object.hash(billingDetails, paymentMethod); } 
@override String toString() { return 'InsightsResourcesPaymentEvaluationPaymentMethodDetails(billingDetails: $billingDetails, paymentMethod: $paymentMethod)'; } 
 }
