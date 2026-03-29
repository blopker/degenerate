// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_method_config_biz_payment_method_configuration_details.dart';/// Information about the [payment method configuration](https://docs.stripe.com/api/payment_method_configurations) used for this PaymentIntent.
final class PaymentIntentPaymentMethodConfigurationDetails {const PaymentIntentPaymentMethodConfigurationDetails({this.paymentMethodConfigBizPaymentMethodConfigurationDetails});

factory PaymentIntentPaymentMethodConfigurationDetails.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodConfigurationDetails(
  paymentMethodConfigBizPaymentMethodConfigurationDetails: PaymentMethodConfigBizPaymentMethodConfigurationDetails.canParse(json) ? PaymentMethodConfigBizPaymentMethodConfigurationDetails.fromJson(json) : null,
); }

final PaymentMethodConfigBizPaymentMethodConfigurationDetails? paymentMethodConfigBizPaymentMethodConfigurationDetails;

/// At least one variant must be present.
bool get isValid { return paymentMethodConfigBizPaymentMethodConfigurationDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?paymentMethodConfigBizPaymentMethodConfigurationDetails?.toJson(),
}; } 
 }
