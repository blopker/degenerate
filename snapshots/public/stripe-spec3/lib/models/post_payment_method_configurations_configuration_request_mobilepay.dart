// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_method_configurations_configuration_request_mobilepay_display_preference.dart';/// MobilePay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://docs.stripe.com/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://docs.stripe.com/payments/mobilepay) for more details.
final class PostPaymentMethodConfigurationsConfigurationRequestMobilepay {const PostPaymentMethodConfigurationsConfigurationRequestMobilepay({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestMobilepay.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestMobilepay(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestMobilepay copyWith({PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestMobilepay(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestMobilepay &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestMobilepay(displayPreference: $displayPreference)'; } 
 }
