// GENERATED CODE - DO NOT MODIFY BY HAND

import 'insights_resources_payment_evaluation_payment_method_details.dart';/// Details about the payment method used for the payment.
final class InsightsResourcesPaymentEvaluationPaymentDetailsPaymentMethodDetails {const InsightsResourcesPaymentEvaluationPaymentDetailsPaymentMethodDetails({this.insightsResourcesPaymentEvaluationPaymentMethodDetails});

factory InsightsResourcesPaymentEvaluationPaymentDetailsPaymentMethodDetails.fromJson(Map<String, dynamic> json) { return InsightsResourcesPaymentEvaluationPaymentDetailsPaymentMethodDetails(
  insightsResourcesPaymentEvaluationPaymentMethodDetails: InsightsResourcesPaymentEvaluationPaymentMethodDetails.canParse(json) ? InsightsResourcesPaymentEvaluationPaymentMethodDetails.fromJson(json) : null,
); }

final InsightsResourcesPaymentEvaluationPaymentMethodDetails? insightsResourcesPaymentEvaluationPaymentMethodDetails;

/// At least one variant must be present.
bool get isValid { return insightsResourcesPaymentEvaluationPaymentMethodDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?insightsResourcesPaymentEvaluationPaymentMethodDetails?.toJson(),
}; } 
 }
