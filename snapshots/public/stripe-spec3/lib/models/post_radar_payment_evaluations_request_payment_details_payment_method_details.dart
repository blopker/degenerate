// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_radar_payment_evaluations_request_payment_details_payment_method_details_billing_details.dart';@immutable final class PostRadarPaymentEvaluationsRequestPaymentDetailsPaymentMethodDetails {const PostRadarPaymentEvaluationsRequestPaymentDetailsPaymentMethodDetails({required this.paymentMethod, this.billingDetails, });

factory PostRadarPaymentEvaluationsRequestPaymentDetailsPaymentMethodDetails.fromJson(Map<String, dynamic> json) { return PostRadarPaymentEvaluationsRequestPaymentDetailsPaymentMethodDetails(
  billingDetails: json['billing_details'] != null ? PostRadarPaymentEvaluationsRequestPaymentDetailsPaymentMethodDetailsBillingDetails.fromJson(json['billing_details'] as Map<String, dynamic>) : null,
  paymentMethod: json['payment_method'] as String,
); }

final PostRadarPaymentEvaluationsRequestPaymentDetailsPaymentMethodDetailsBillingDetails? billingDetails;

final String paymentMethod;

Map<String, dynamic> toJson() { return {
  if (billingDetails != null) 'billing_details': billingDetails?.toJson(),
  'payment_method': paymentMethod,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payment_method') && json['payment_method'] is String; } 
PostRadarPaymentEvaluationsRequestPaymentDetailsPaymentMethodDetails copyWith({PostRadarPaymentEvaluationsRequestPaymentDetailsPaymentMethodDetailsBillingDetails Function()? billingDetails, String? paymentMethod, }) { return PostRadarPaymentEvaluationsRequestPaymentDetailsPaymentMethodDetails(
  billingDetails: billingDetails != null ? billingDetails() : this.billingDetails,
  paymentMethod: paymentMethod ?? this.paymentMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostRadarPaymentEvaluationsRequestPaymentDetailsPaymentMethodDetails &&
          billingDetails == other.billingDetails &&
          paymentMethod == other.paymentMethod; } 
@override int get hashCode { return Object.hash(billingDetails, paymentMethod); } 
@override String toString() { return 'PostRadarPaymentEvaluationsRequestPaymentDetailsPaymentMethodDetails(billingDetails: $billingDetails, paymentMethod: $paymentMethod)'; } 
 }
