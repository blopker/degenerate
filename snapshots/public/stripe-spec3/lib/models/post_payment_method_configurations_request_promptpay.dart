// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_request_promptpay_display_preference.dart';/// PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://docs.stripe.com/payments/promptpay) for more details.
final class PostPaymentMethodConfigurationsRequestPromptpay {const PostPaymentMethodConfigurationsRequestPromptpay({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestPromptpay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestPromptpay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestPromptpayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestPromptpayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestPromptpay copyWith({PostPaymentMethodConfigurationsRequestPromptpayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestPromptpay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestPromptpay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestPromptpay(displayPreference: $displayPreference)'; } 
 }
